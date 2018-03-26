package mediatheque;

public class Utilisateur {
	private String login, pass, role;
	private int numero;
	
	public Utilisateur(int numero, String login, String pass, String role) {
		this.numero = numero;
		this.login = login;
		this.pass = pass;
		this.role = role;
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
	
	public String getRole() {
		return role;
	}
	
	public String toString() {
		String user="";
		user += "Utilisateur numéro : " + this.numero + System.lineSeparator();
		user += "Pseudo : " + this.login + System.lineSeparator();
		user += "Profil : " + this.role + System.lineSeparator();
		user += System.lineSeparator();
		return user;
	}
}
