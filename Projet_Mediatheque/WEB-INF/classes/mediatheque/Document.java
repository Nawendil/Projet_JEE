// Jean-Fran�ois Brette 01/01/2018

package mediatheque;

public interface Document {	
	void emprunter(Utilisateur a) throws EmpruntException;
	void retour();
	
	// Affiche renvoie une liste d'objets correspondant aux �l�ments que contient 
	// l'objet, exemple : Titre, date de parution, auteur, etc ...
	Object[] affiche();
}
