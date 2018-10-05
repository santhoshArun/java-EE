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
<title>new user</title>
</head>
<body style="font-family:Verdana;">
	<jsp:useBean id="ob" class="alpha.Bean"/>
	<jsp:setProperty property="*" name="ob"/>
	<%
		int status=Add.addNewUser(ob);
		if(status>0) {
			out.println("Your account has been added to our database."); %> <br><br> <%
			out.println("Your Device name: " + ob.getNewdevicename()); %> <br> <%
			out.println("Your username: " + ob.getNewusername()); %> <br> <%
		} else
			out.println("Username already exists. Select different username");
	%>
	<br>click <a href="http://localhost:8080/alpha/index.jsp">here</a> to login.

</body>
</html>