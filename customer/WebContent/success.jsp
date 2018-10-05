<%@page import="alpha.CustomerDAO"%>
<%@page import="alpha.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="alpha.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>success</title>
</head>
<body>
	<jsp:useBean id="ob" class="alpha.CustomerBean"/>
	<jsp:setProperty property="*" name="ob"/>
	<%
		int status=CustomerDAO.insertCustomer(ob);
		if(status>0)
			out.println("Success");
		else
			out.println("failed");
	%>

</body>
</html>