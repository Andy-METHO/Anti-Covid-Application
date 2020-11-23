<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="mybean.*" %>

<jsp:useBean id="idcine" class="mybean.LogServlet" scope="session" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div>
	
	</div>
	<form method="get" action="http://localhost:8080/TP2DevWeb/LoginServlet">
		<label for="intitule">Nom</label><br />
		<input type="text" name="nom" id="nom" />
		<br/>
		
	    <label for="type">Value</label><br />
		<input type="text" name="value" id="value" />
		<br/>
		
		<input type="submit" value="Valider" /> <input type="reset" value="Reset" />
	</form>


</body>
</html>