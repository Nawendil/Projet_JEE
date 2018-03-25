package persistantdata;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import documents.CD;
import documents.DVD;
import documents.Livre;
import mediatheque.*;
import utilisateurs.Abonne;
import utilisateurs.Admin;
import utilisateurs.Bibliothecaire;

// classe mono-instance dont l'unique instance n'est connue que de la bibliotheque
// via une auto-déclaration dans son bloc static

public class MediathequeData implements PersistentMediatheque {
	// Jean-François Brette 01/01/2018
	static {
		Mediatheque.getInstance().setData(new MediathequeData());

		try {
			DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	private static String url = "jdbc:oracle:thin:@vs-oracle2:1521:ORCL";
	private static String user = "GRP206US12";
	private static  String pass = "GRP206US12";
	private Connection connectBDD;
	private static PreparedStatement pst;
	private static ResultSet res;

	private MediathequeData() {

	}

	// renvoie la liste de tous les documents de la bibliothèque
	@Override
	public List<Document> tousLesDocuments() {
		return null;
	}

	// va récupérer le User dans la BD et le renvoie
	// si pas trouvé, renvoie null
	@Override
	public Utilisateur getUser(String login, String password) {
		try {
			connectBDD = DriverManager.getConnection(url, user, pass);

			String req = "SELECT * FROM Utilisateur WHERE Login = ? AND Mdp = ?";
			pst = connectBDD.prepareStatement(req);

			pst.setString(1, login);
			pst.setString(2, password);
			res = pst.executeQuery();

			String typeUser = "";
			
			while (res.next()) {
				typeUser = res.getString("TypeUser");
			}
			
			finalize();
			
			switch (typeUser) {
				case "Admin":
					return new Admin(login,password);
				case "Abonne":
					return new Abonne(login,password);
				case "Bibliothecaire":
					return new Bibliothecaire(login, password);
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
	}

	public void finalize() throws SQLException {
		res.close();
		pst.close();
		connectBDD.close();
	}

}
