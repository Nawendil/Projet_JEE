// Jean-François Brette 01/01/2018

package mediatheque;

public interface Document {	
	void emprunter(Utilisateur a) throws EmpruntException;
	void retour();
	
	// Affiche renvoie une liste d'objets correspondant aux éléments que contient 
	// l'objet, exemple : Titre, date de parution, auteur, etc ...
	Object[] affiche();
}
