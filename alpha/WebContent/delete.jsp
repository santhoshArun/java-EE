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
<title>delete</title>
</head>
<body style="font-family:Verdana;">

	<jsp:useBean id="ob" class="alpha.Bean"/>
	<jsp:setProperty property="*" name="ob"/>
	<%
		String username="demo";
		username=session.getAttribute("user").toString();
		//out.print(username);
		int status=Delete.deleteUser(username);
		if(status>0) {
			out.println("Your account has been deleted.");
		} else
			out.println("failed");
	%>
	<br>click <a href="http://localhost:8080/alpha/index.jsp">here</a> to login.

</body>
</html>