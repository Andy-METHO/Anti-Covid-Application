<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="mybean.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Connection</title>
<link rel="stylesheet" href="css/accueil.css" type="text/css" />
</head>
<body>
	
	<div class="content">
		<form method="get" action="http://localhost:8080/TP2DevWeb/ConnexionBDD">
			<label for="intitule">Nom de compte</label><br />
			<input type="text" name="user" id="user" />
			<br/>
			
		    <label for="type">Mot de passe</label><br />
			<input type="text" name="mdp" id="mdp" />
			<br/>
			
			<input type="submit" value="Valider" /> <input type="reset" value="Reset" />
		</form>

	</div>
</body>
</html>