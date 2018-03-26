package mediatheque;

import java.util.List;

public interface PersistentMediatheque {
// Jean-Fran�ois Brette 01/01/2018
	List<Document> tousLesDocuments();

	Document getDocument(int numDocument);

	Utilisateur getUser(String login, String password);
	
	void nouveauDocument(int type, Object... args );

	
	// Fonction n�cessaire pour r�cup�rer les docs de tel utilisateur
	List<Document> docsUser(int idUser);
	
	// Fonctions n�cessaires pour sauvegarder l'�tat de la base en cas d'arr�t du serveur
	void emprunter(int idUser, int idDoc);
	void retourner(int idDoc);
}
