<%@ page contentType="text/html; charset=UTF-8" %>

<%@ page import="mediatheque.Mediatheque" %>
<%@ page import="mediatheque.Utilisateur" %>
<%@ page import="mediatheque.Document" %>
<%@ page import="persistantdata.*" %>
<%@ page import="java.util.List" %>


<%
	String login = request.getParameter("login"); 
	String password = request.getParameter("password");
	
	if (m == null)
		out.println("mediatheque null !");

	if (m.getData() == null)
		out.println("mediatheque data null !");
	
	Utilisateur user = m.getUser(login, password);

	if (user == null)
		out.println("utilisateur null !");
	
	out.println(user.toString());
%>

<head>
	<title> Media_Take_Projet</title>
</head>

<body>
	<p> Media-Take </p>
	<input type="button" name="Emprunter" value="Emprunter" >




</body>