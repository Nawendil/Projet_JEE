package servicesServlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mediatheque.EmpruntException;
import mediatheque.Mediatheque;
import mediatheque.Utilisateur;

public class ServletEmprunter extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		// Code appelant les méthodes nécessaire à l'emprunt
		Mediatheque m = Mediatheque.getInstance();
		
		try {
			m.emprunt(m.getDocument(Integer.parseInt(request.getParameter("docEmprunt"))), (Utilisateur) request.getSession().getAttribute("user"));
		} catch (NumberFormatException | EmpruntException e) {
			e.printStackTrace();
		}
		Utilisateur user = (Utilisateur) request.getSession().getAttribute("user");
		m.emprunter(user.getNum(), Integer.parseInt(request.getParameter("docEmprunt")));
    }

}
