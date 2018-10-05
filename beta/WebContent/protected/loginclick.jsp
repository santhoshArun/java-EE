<%@page import="beta.Bean"%>
<%@page import="beta.Add"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="beta.*"%>
<!DOCTYPE html>
<html>
<head>
<style>
div {
	display: inline-block;
}
body {
    background-color: #f4f4f4;
}
input[type=text], input[type=password] {
    width: 250px;
    padding: 10px 15px;
    margin: 8px 0px;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 5px;
    background-color: #fafafa;
    font-size: 15px;
}
input[type=submit] {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 10px 14px;
    text-align: center;
    font-size: 16px;
    border-radius: 5px; 
}
input[type=submit]:hover {
	 background-color: #45a049;
}
</style>
<meta charset="ISO-8859-1">
<title>home</title>
</head>
<body style="font-family:Verdana;">

	<jsp:useBean id="ob" class="beta.Bean"/>
	<jsp:setProperty property="*" name="ob"/>
 	
 
	<br>
	<div>
		<form method="post" action="updatedevice.jsp">
		<% 
		Count c = Count.getInstance();
			%>
		
		&emsp;&emsp;&emsp;Your username:	&emsp;<b><%String s=request.getRemoteUser(); out.print(s);session.setAttribute("user", s); %></b>
		&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		<% out.print("page refresh count: "); %><b><div style="color: red"><% out.print(c.loginCount()); %></div></b> <br><br><br>
		&emsp;&emsp;&emsp;To update data, enter your new data in the textbox and click update.<br><br>
	
		&emsp;&emsp;&emsp;Enter your new device name: &emsp;<input type="text" name="updatedevicename">
		&emsp;<input type="submit" value="  UPDATE  " name="update">
		</form>
		
		<form method="post" action="updateuser.jsp">
		&emsp;&emsp;&emsp;Enter your new user name:  &emsp;&nbsp;&nbsp;&nbsp;<input type="text" name="updateusername">
		&emsp;<input type="submit" value="  UPDATE  " name="update">
		</form>
		
		<form method="post" action="updatepass.jsp">
		&emsp;&emsp;&emsp;Enter your new password : &emsp;&emsp;&nbsp;<input type="password" name="updatepassword">
		&emsp;<input type="submit" value="  UPDATE  " name="update">
		<br><br>
		</form>
		<form method="post" action="delete.jsp">
		&emsp;&emsp;&emsp;Click delete to delete your account
		&nbsp;&nbsp;<input type="submit" value="  DELETE  " name="delete" style="margin-left: 60px" >
		</form>
	</div>	
	<div>
		<form method="post" action="logout.jsp">
		<input type="submit" value="  LOGOUT  " name="logout" style="background-color:#e21826;margin-left: -122px">
		</form>
	</div>
		<%/* } else {
				out.println("invalid username or password");	
				out.println("click <a href=http://localhost:8080/beta/index.jsp>here</a> to login");	}*/ %>
		
		
	

</body>
</html>