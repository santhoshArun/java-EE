<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
	body {
		padding-top: 70px;
		font-family: Segoe UI, sans-serif;
		background-color: #d7d9ed;
		height: 100%;
		font-size: 38px;
		color: #4145bf;
	}
	
	form {
		padding: 30px;
		background-color: #c0c3e0;
		align: center;
		margin: auto;		
		width: 30%;
		border-radius: 15px;
	}
	
	
	input[type=text] {
		color: #555555;
		margin-top: 18px;
		font-weight: italics;
		width: 90%;
		padding: 12px 17px;
		border-radius: 7px;
		font-size: 25px;
	}
	
	input[type=text]:hover {
		color: #777777;
		margin-top: 18px;
		font-weight: italics;
		width: 90%;
		padding: 12px 17px;
		border-radius: 7px;
		font-size: 25px;
	}
	
		
	input[type=submit] {
		
		font-weight: bold;
		border-color: #696cce;
		color: #ffffff;
		font-style: bold;
		background-color: #696cce;
		margin-top: 9px;
		width: 100%;
		padding: 12px 17px;
		border-radius: 7px;
		font-size: 27px;
	}
		
	input[type=submit]:hover {
		font-weight: bold;
		border-color: #4145bf;
		color: #ffffff;
		font-style: bold;
		background-color: #4145bf;
		margin-top: 9px;
		width: 100%;
		padding: 12px 17px;
		border-radius: 7px;
		font-size: 27px;
	}
	
	
</style>
<meta charset="ISO-8859-1">
<title>anonymous chat</title>
</head>

<body>

	<div>
		<form name="f1" method="post" action="chatpage.jsp">
			<center><b>Anonymous Chat</b></center>
			<input type="text" name="chatname" id="login" placeholder="chat as...">
			<input type="submit" name="submit" id="button" value="Start Chatting" onClick="return empty()">
		</form>
	</div>
	<script>
		function empty() {
		    var x;
		    x = document.getElementById("login").value;
		    if (x == "") {
		        document.getElementById("login").placeholder = "enter any name dude...";
		        return false;
		    };
		}
	</script>
</body>

</html>