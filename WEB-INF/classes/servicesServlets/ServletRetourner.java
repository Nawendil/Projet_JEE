package servicesServlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mediatheque.EmpruntException;
import mediatheque.Mediatheque;
import mediatheque.Utilisateur;

public class ServletRetourner extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		// Code appelant les méthodes nécessaire au retour
		Mediatheque m = Mediatheque.getInstance();
		
		try {
			m.retour(m.getDocument(Integer.parseInt(request.getParameter("docEmprunt"))));
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		
		m.retourner(Integer.parseInt(request.getParameter("docEmprunt")));
    }

}
