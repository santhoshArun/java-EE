<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="beta.*"%>
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
	<jsp:useBean id="ob" class="beta.Bean"/>
	<jsp:setProperty property="*" name="ob"/>
	<%
		String user = session.getAttribute("user").toString();
		int status=Update.updateDevice(ob, user);
		if(status>0) {
			out.println("Your device name is updated to " + ob.getUpdatedevicename());
		} else
			out.println("failed");
		session.invalidate();
	%><br>
	<br>click <a href="http://localhost:8080/beta/protected/loginclick.jsp">here</a> to login.

</body>
</html>