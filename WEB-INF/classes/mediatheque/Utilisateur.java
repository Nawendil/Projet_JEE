package mediatheque;

public class Utilisateur {
	private String login, pass;
	
	public Utilisateur(String login, String pass) {
		this.login = login;
		this.pass = pass;
	}
	
	public String getLogin() {
		return login;
	}
	
	public String getPass() {
		return pass;
	}
}
