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
    padding: 12px 14px;
    text-align: center;
    font-size: 16px;
    border-radius: 5px; 
}
.button {
	margin: 20px 145px;
}
.new {
	margin: 20px -490px;
}
form {
	display: inline-block; 
}
input[type=submit]:hover {
	 background-color: #45a049;
}
</style>
<meta charset="ISO-8859-1">
<title>login error</title>
</head>
<body style="font-family:Verdana;">
	<form name = "f1" method="post" action="j_security_check">
	<br>
		<p style="color: red">&emsp;&emsp;&emsp;The username or password you have entered does not match our database. Please try again.	</p><br>
		&emsp;&emsp;&emsp; Device name: &emsp;&emsp; <input type="text" name="devicename"><br>
		&emsp;&emsp;&emsp; Username: &emsp;&emsp;&nbsp;&emsp; <input type="text" name = "j_username"><br>
		&emsp;&emsp;&emsp; Password: &emsp;&emsp;&emsp;&nbsp;&nbsp; <input type="password" name="j_password"><br>
		
		&emsp;&emsp;&emsp;&emsp;<input type="submit" class="button" value="    LOGIN    " style="font-family:Trebuchet MS;">
		
	</form>
	
	<form name="f2" method="post" action="protected/newuserclick.jsp">
		&emsp;&emsp;&emsp;&emsp;<input type="submit" class="new" value=" NEW USER " style="font-family:Trebuchet MS;">
	</form>
	
</body>
</html>