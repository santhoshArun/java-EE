<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="alpha.*"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
    background-color: #f0f0f0;
}
</style>
<meta charset="ISO-8859-1">
<title>update</title>
</head>
<body style="font-family:Verdana;">

	<jsp:useBean id="ob" class="alpha.Bean"/>
	<jsp:setProperty property="*" name="ob"/>
	<%
		String user = session.getAttribute("user").toString();
		int status=Update.updatepass(ob, user);
		if(status>0) {
			out.println("Your password is updated.");
		} else
			out.println("failed");
	%><br>
	<br>click <a href="http://localhost:8080/alpha/index.jsp">here</a> to login.


</body>
</html>