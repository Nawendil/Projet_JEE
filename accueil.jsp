<%@ page contentType="text/html; charset=UTF-8" %>

<%@ page import="mediatheque.Mediatheque" %>
<%@ page import="mediatheque.Utilisateur" %>
<%@ page import="mediatheque.Document" %>
<%@ page import="persistantdata.*" %>
<%@ page import="java.util.List" %>

<%
	Utilisateur user = (Utilisateur) session.getAttribute("user");
	
	
%>

<html lang="fr">
	<head>
		<meta charset="UTF-8">
		<title> Media_Take_Projet</title>
	</head>

	<body>
		<h1> Media-Take </h1>
		
		<div>
		<% out.println(user.toString().replace("##","<br>")); %>
		</div>
		
		<input type="button" name="Emprunter" value="Emprunter" >
	</body>
</html>