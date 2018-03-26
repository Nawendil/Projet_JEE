package servicesServlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mediatheque.Mediatheque;
import mediatheque.Utilisateur;

public class ServletDeconnexion extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		/* R�cup�ration et destruction de la session en cours */
        HttpSession session = request.getSession();
        session.invalidate();
        
        // On peut se servir du dispatcher comme dans la classe ServletConnexion,
        // ou faire �a, les deux sont �quivalents
		request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
