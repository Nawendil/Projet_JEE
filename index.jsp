<!DOCTYPE html>

<%@ page contentType="text/html; charset=UTF-8" %>

<html lang="fr">
	<head>
		<meta charset="UTF-8">
		<title>Médiathèque</title>
		<link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

		<link rel="stylesheet" href="sources/css/style.css">
	</head>

	<body>
		<div class="form">
			<ul class="tab-group">
				<li class="tab active"><a href="#login">Se Connecter</a></li>
				<!--<li class="tab"><a href="#signup">S'Inscrire</a></li>-->
			</ul>
			
			<div class="tab-content">
				<div id="login">
					<h1>Connecte toi !</h1>
					<form action="./connexion" method="POST">
						<div class="field-wrap">
							<label>Identifiant<span class="req">*</span></label>
							<input name="login" type="texte" required autocomplete="off"/>
						</div>
						<div class="field-wrap">
							<label>Mot de passe<span class="req">*</span></label>
							<input name="password" type="password" required autocomplete="off"/>
						</div>
						<!--<p class="forgot"><a href="#">Mot de passe oublié ?</a></p>-->
						<button class="button button-block">Connexion</button>
						<div id="errConnect">
							<%
								if(request.getAttribute("errConnect") != null){
									out.print(request.getAttribute("errConnect"));
								}
							%>
						</div>
					</form>
				</div><!--
				<div id="signup">
					<h1>Inscription gratuite !</h1>
					<form action="accueil.jsp" method="POST">
						<div class="field-wrap">
							<label>Identifiant<span class="req">*</span></label>
							<input name="login" type="text"required autocomplete="off"/>
						</div>
						<div class="field-wrap">
							<label>Mot de passe<span class="req">*</span></label>
							<input name="pass" type="password"required autocomplete="off"/>
						</div>
						<button type="submit" class="button button-block">Inscription</button>
					</form>
				</div>-->
			</div><!-- tab-content -->
		</div> <!-- /form -->
		
		<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
		<script  src="sources/js/index.js"></script>
		
	</body>
</html>
