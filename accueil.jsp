<%@ page contentType="text/html; charset=UTF-8" %>

<%@ page import="java.util.Date" %>
<%@ page import="utilisateurs.Abonne" %>
<%@ page import="mediatheque.Mediatheque" %>
<%@ page import="mediatheque.Utilisateur" %>
<%@ page import="persistantdata.MediathequeData" %>

<%
	String login = request.getParameter("login"); 
	String password = request.getParameter("password");
	
	out.println(login + " " + password);
	
	try {
		Class.forName("mediatheque.Mediatheque");
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	Mediatheque m = Mediatheque.getInstance();
	
	if (m == null)
		response.sendRedirect("index.jsp");

	if (m.getData() == null)
		response.sendRedirect("index.jsp");
	
	Utilisateur user = m.getUser(login, password);

	if (user == null)
		out.print("bonjour");
%>

<head>
	<title> Media_Take_Projet</title>
</head>

<body>
	<p> Media-Take </p>
	<input type="button" name="Emprunter" value="Emprunter" >




</body>