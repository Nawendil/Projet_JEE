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

public class ServletConnect extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private String login, password;

	@SuppressWarnings("unused")
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException { 
		PrintWriter out = response.getWriter();
		RequestDispatcher dispatcher;
		try {
			Class.forName("persistantdata.MediathequeData");
		} catch (ClassNotFoundException e) {
			System.out.println("Classe ('for name') non trouvée");
		}
		
		Mediatheque mediatheque = Mediatheque.getInstance();
		this.login = request.getParameter("login");
		this.password = request.getParameter("password");
		
		
		String mesErr = " ";
		Utilisateur user = mediatheque.getUser(login, password);
		
		if(user == null){
			// login ou mdp incorrect
			mesErr= "Login ou password incorrect";
			request.setAttribute("erreur", mesErr);
			dispatcher = request.getRequestDispatcher("index.jsp");
			
		}else {
			// création de la session utilisateur
			HttpSession session = request.getSession(true);
			session.setAttribute("utilisateur", user);
			dispatcher = request.getRequestDispatcher("accueil.jsp");
		}
		dispatcher.forward(request, response);
    }
}
