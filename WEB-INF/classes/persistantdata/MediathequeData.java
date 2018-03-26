package persistantdata;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import documents.CD;
import documents.DVD;
import documents.Livre;
import mediatheque.*;

// classe mono-instance dont l'unique instance n'est connue que de la bibliotheque
// via une auto-déclaration dans son bloc static

public class MediathequeData implements PersistentMediatheque {
	// Jean-François Brette 01/01/2018
	static {
		Mediatheque.getInstance().setData(new MediathequeData());

		try {
			Class.forName("com.mysql.jdbc.Driver");
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	//private static String url = "jdbc:oracle:thin:@vs-oracle2:1521:ORCL";
	private static String url = "jdbc:mysql://127.0.0.1:3306/projet_webjava?useSSL=false";
	private static String user = "root";
	private static String pass = "root";
	private Connection connectBDD;
	private static PreparedStatement pst;
	private static ResultSet res;

	private MediathequeData() {

	}

	// renvoie la liste de tous les documents de la bibliothèque
	@Override
	public List<Document> tousLesDocuments() {
		List<Document> listeDocs = new ArrayList<Document>();
		int nbDocs = 0;
		
		try {
			connectBDD = DriverManager.getConnection(url, user, pass);

			String req = "SELECT * FROM Document";
			pst = connectBDD.prepareStatement(req);

			res = pst.executeQuery();
			
			while (res.next()) {
				nbDocs++;
			}
			
			finalize();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		for (int i = 1; i <= nbDocs; i++)
			listeDocs.add(getDocument(i));
		
		return listeDocs;
	}

	// va récupérer le User dans la BD et le renvoie
	// si pas trouvé, renvoie null
	@Override
	public Utilisateur getUser(String login, String password) {
		try {
			connectBDD = DriverManager.getConnection(url, user, pass);

			String req = "SELECT * FROM utilisateur WHERE login = ? AND mdp = ?";
			pst = connectBDD.prepareStatement(req);

			pst.setString(1, login);
			pst.setString(2, password);
			res = pst.executeQuery();

			String typeUser = "";
			int num = 0;
			
			while (res.next()) {
				if (res.getString("Login").equals(login) && res.getString("Mdp").equals(password)) {
					typeUser = res.getString("TypeUser");
					num = res.getInt("IdUtilisateur");
				}
			}
			
			finalize();
			
			switch (typeUser) {
				case "admin":
					return new Utilisateur(num,login,password,typeUser);
				case "abonne":
					return new Utilisateur(num,login,password,typeUser);
				case "bibliothecaire":
					return new Utilisateur(num,login,password,typeUser);
				default :
					return null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	// va récupérer le document de numéro numDocument dans la BD
	// et le renvoie
	// si pas trouvé, renvoie null
	@Override
	public Document getDocument(int numDocument) {
		try {
			connectBDD = DriverManager.getConnection(url, user, pass);

			String req = "SELECT * FROM Document WHERE IdDoc = ?";
			pst = connectBDD.prepareStatement(req);

			pst.setInt(1, numDocument);
			res = pst.executeQuery();

			String typeDoc = "", titre = "", auteur = "";
			boolean disponible = true;
			
			while (res.next()) {
				typeDoc = res.getString("TypeDoc");
				titre = res.getString("Titre");
				auteur = res.getString("Auteur");
				disponible = res.getBoolean("Disponible");
			}
			
			finalize();
			
			switch (typeDoc) {
				case "CD":
					return new CD(titre,auteur,disponible);
				case "DVD":
					return new DVD(titre,auteur,disponible);
				case "Livre":
					return new Livre(titre,auteur,disponible);
				default :
					return null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public void nouveauDocument(int type, Object... args) {
		// args[0] -> le titre
		// args [1] --> l'auteur
		// etc...
		try {
			connectBDD = DriverManager.getConnection(url, user, pass);

			String req = "INSERT INTO Document (TypeDoc, Titre, Auteur, Disponible)"
						 + " VALUES (?, ?, ?, ?)";
			pst = connectBDD.prepareStatement(req);
			
			String typeDoc = "";

			switch (type) {
				case 1:
					typeDoc = "Livre";
				case 2:
					typeDoc = "DVD";
				case 3:
					typeDoc = "CD";
			}
			
			pst.setString(1, typeDoc);
			pst.setString(2, (String) args[0]);
			pst.setString(3, (String) args[1]);
			pst.setBoolean(4, true);
			
			pst.executeUpdate();
			
			finalize();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void finalize() throws SQLException {
		res.close();
		pst.close();
		connectBDD.close();
	}

	
	@SuppressWarnings("unused")
	public static void main(String[] args) {
		Mediatheque mediatheque = Mediatheque.getInstance();
		Utilisateur root = mediatheque.getUser("user", "user");
		System.out.println(root.toString());
	}
}
