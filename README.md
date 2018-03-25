<!DOCTYPE html>


<%@ page contentType="text/html; charset=UTF-8" %>

<%@ page import="java.util.Date" %>
<%@ page import="utilisateurs.Abonne" %>
<%@ page import="mediatheque.Mediatheque" %>
<%@ page import="mediatheque.Utilisateur" %>
<%@ page import="persistantdata.MediathequeData" %>

<%
    String login = request.getParameter("login");
    String pass = request.getParameter("pass");
   
    Mediatheque m = Mediatheque.getInstance();
   
    Utilisateur user = m.getUser(login,pass);
   
    if (user == null)
        response.sendRedirect("index.jsp");
%>

<html>

		<head>
			<title> Media_Take_Projet</title>
		</head>
	
	<body>
		<p> Media-Take </p>
		<INPUT type="button" name="Emprunter" value="Emprunter" onclick="<%Mediatheque.emprunt(getDocument(1),user);%>">




	</body>
</html>
