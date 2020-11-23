<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="mybean.*" %>

<jsp:useBean id="idcine" class="mybean.CookiesServlet" scope="session" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div>
	
	<%
		Cookie cookie = null;
		Cookie[] cookies =null;
        cookies = request.getCookies();
		if( cookies != null ) {
		    out.println("<h1> Found Cookies Name and Value</h1>");
		    for (int i = 0; i < cookies.length; i++) {
		       cookie = cookies[i];
		       out.print("Name : " + cookie.getName( ) + ",  ");
		       out.print("Value: " + cookie.getValue( )+" <br/>");
		    }
		 } 
		else {
		    out.println("<h2>No cookies founds</h2>");
		 }
	
	%>
	
	</div>
	<form method="get" action="http://localhost:8080/TP2DevWeb/CookiesServlet">
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