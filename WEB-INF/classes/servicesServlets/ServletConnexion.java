package servicesServlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mediatheque.Mediatheque;
import mediatheque.Utilisateur;

public class ServletConnexion extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String login, password;
	private static boolean lienBDD = false;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		//PrintWriter out = response.getWriter(); // Si jamais on en a besoin, mais pas utilisé ici
		RequestDispatcher dispatcher; // Permet de faire de la redirection
		
		if (!lienBDD) {
			// On charge la classe MediathequeData pour pourvoir se connnecter à la base de données
			// On a besoin de la charger qu'une fois
			try {
				Class.forName("persistantdata.MediathequeData");
			} catch (ClassNotFoundException e) {
				System.out.println("Impossible de charger la classe MediathequeData");
				e.printStackTrace();
			}
		}
		
		// On récupère l'instance de la mediatheque
		// Le seul objet utilisable pour communiquer avec la BDD
		Mediatheque mediatheque = Mediatheque.getInstance();
		
		// On récupère l'identifiant et le mot de passe envoyé par le formulaire de connexion
		this.login = request.getParameter("login");
		this.password = request.getParameter("password");
		
		// On prépare un message d'erreur si jamais les données sont erronées
		String msgErreur = "", msgBaseOK = "";
		
		// On récupère l'utilisateur dans la base de données, retournera null s'il n'existe pas
		Utilisateur user = mediatheque.getUser(login, password);
		
		if(user == null){
			// Gestion du cas où l'utilisateur entre des données incorrectes
			// Retourne alors sur la page de connexion et affiche un message d'erreur
			msgErreur = "Identifiant ou mot de passe incorrect !";
			request.setAttribute("errConnect", msgErreur);
			dispatcher = request.getRequestDispatcher("index.jsp");
			
		} else if (user.getType().equals("admin")) {
			// Si c'est l'amin qui tente de se connecter alors on affiche juste un message
			// comme il a bien activé la connexion à la base
			msgBaseOK = "La base de données est active !";
			request.setAttribute("baseOK", msgBaseOK);
			dispatcher = request.getRequestDispatcher("index.jsp");
			lienBDD = true;
			
		} else {
			if (!lienBDD) {
				msgErreur = "Base de données non active !";
				request.setAttribute("errConnect", msgErreur);
				dispatcher = request.getRequestDispatcher("index.jsp");
			} else {
				// La connexion a fonctionné
				// Les données correspondaient à un utilisateur dans la base
				// On crée/récupère une session, on ne peut pas passer d'objet avec le request sinon
				// On transmet l'objet user
				// On prépare la redirection vers l'accueil
				HttpSession session = request.getSession();
				session.setAttribute("user", user);
				dispatcher = request.getRequestDispatcher("accueil.jsp");
			}
		}
		
		// On effectue la redirection vers l'accueil ou la page d'authentification si données incorrectes
		dispatcher.forward(request, response);
    }
}
