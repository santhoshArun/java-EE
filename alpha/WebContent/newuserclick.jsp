<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
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
    margin: 0px 35px
}
input[type=submit]:hover {
	 background-color: #45a049;
}
</style>
<meta charset="ISO-8859-1">
<title>new user</title>
</head>
<body style="font-family:Verdana;">

	<br>
	<form method="post" action="addnewuser.jsp">
		&emsp;&emsp;&emsp;Enter your device name:&emsp;&emsp;<input type="text" name="newdevicename"><br><br>
		&emsp;&emsp;&emsp;Enter your username:&emsp;&emsp;&emsp;&nbsp;<input type="text" name="newusername"><br><br>
		&emsp;&emsp;&emsp;Enter your password:&emsp;&nbsp;&emsp;&emsp;&nbsp;<input type="password" name="newpassword"><br><br>
		&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		<input type="submit" value="ADD NEW USER" name="newuserclick">
	</form>
	

</body>
</html>