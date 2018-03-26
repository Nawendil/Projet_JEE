package mediatheque;

public class Utilisateur {
	// Identifiant, mot de passe, type d'utilisateur (admin, abonne, bibliothecaire)
	private String login, pass, type;
	// Numéro d'identification de l'utilisateur dans la BDD
	private int numero;
	
	public Utilisateur(int numero, String login, String pass, String type) {
		this.numero = numero;
		this.login = login;
		this.pass = pass;
		this.type = type;
	}
	
	public int getNum() {
		return numero;
	}
	
	public String getLogin() {
		return login;
	}
	
	public String getPass() {
		return pass;
	}
	
	public String getType() {
		return type;
	}
	
	public String toString() {
		String user = "";
		user += this.login;
		return user;
	}
}
