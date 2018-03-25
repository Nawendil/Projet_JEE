package documents;

import mediatheque.Document;
import mediatheque.EmpruntException;
import mediatheque.Utilisateur;

public class Livre implements Document {
	private Utilisateur user;
	private boolean disponible;
	private String titre, auteur;

	public Livre(String titre, String auteur, boolean disponible) {
		this.titre = titre;
		this.auteur = auteur;
		this.disponible = disponible;
	}

	@Override
	public void emprunter(Utilisateur a) throws EmpruntException {
		 this.user = a;
		 this.disponible = false;
	}

	@Override
	public void retour() {
		this.user = null;
		this.disponible = true;
	}

	@Override
	public Object[] affiche() {
		return null;
	}
}
