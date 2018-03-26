package mediatheque;

import java.util.List;

public interface PersistentMediatheque {
// Jean-François Brette 01/01/2018
	List<Document> tousLesDocuments();

	Document getDocument(int numDocument);

	Utilisateur getUser(String login, String password);
	
	void nouveauDocument(int type, Object... args );

	
	// Fonction nécessaire pour récupérer les docs de tel utilisateur
	List<Document> docsUser(int idUser);
	
	// Fonctions nécessaires pour sauvegarder l'état de la base en cas d'arrêt du serveur
	void emprunter(int idUser, int idDoc);
	void retourner(int idDoc);
}
