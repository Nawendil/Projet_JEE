package documents;

import mediatheque.Document;
import mediatheque.EmpruntException;
import mediatheque.Utilisateur;

public class DVD implements Document {
	private Utilisateur user;
	private String titre, auteur;
	private int identificateur;

	public DVD(int identificateur, String titre, String auteur) {
		this.titre = titre;
		this.auteur = auteur;
		this.identificateur = identificateur;
	}

	@Override
	public void emprunter(Utilisateur a) throws EmpruntException {
		 this.user = a;
	}

	@Override
	public void retour() {
		this.user = null;
	}

	@Override
	public Object[] affiche() {
		return null;
	}
}
