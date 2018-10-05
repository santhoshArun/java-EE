<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Anonymous chat</title>
<style>
	body {
		font-family: Segoe UI, sans-serif;
		background-color: #d7d9ed;
		height: 100%;
		color: #444444;
		
	}
	table{
		width: 95%;
		
	}
	td {
		border: 1px solid blue;
		border-radius: 5px;
		padding:7px;
	}
	input[type=text] {
		margin-top: 5px;
		margin-bottom: 10px;
		height: 34px;
		width: 97%;
		border-radius: 5px;
		font-size: 15px;
		padding-left: 14px;
		padding-right: 14px;
	}
	input[type=submit] {
		margin-top: 5px;
		margin-bottom: 5px;
		background-color: #696cce;
		color: #ffffff;
		height: 35px;
		width: 100%;
		border: 1px solid #696cce;
		border-radius: 5px;
		font-size: 15px;
		font-weight: bold;
	}
	input[type=submit]:hover {
		background-color: #4145bf;
		color: #ffffff;
		height: 35px;
		width: 100%;
		border: 1px solid #4145bf;
		border-radius: 5px;
		font-size: 15px;
		font-weight: bold;
	}
</style>

</head>
<body>

	<table align="center" id="myTable">
		<tr>
			<td width="98%" style="float:left; border:0px"><input type="text" id="chatbox" name="chatbox" placeholder="Type anything..."></td>
			<td width="8%" style="border:0px" ><input type="submit" id="submit" name="submit" value="send" onClick="show()"></td>
		</tr>
	</table>
	
	<script>
	var input = document.getElementById("chatbox");
	input.addEventListener("keyup", function(event) {
	    event.preventDefault();
	    if (event.keyCode === 13) {
	        document.getElementById("submit").click();
	    }
	});
		function show() {
			
			var x;
			x = document.getElementById("chatbox").value;
			if(x == "") {
				return;
			};
		    var table = document.getElementById("myTable");
		    var row = table.insertRow(1);
		    var cell1 = row.insertCell(0);
		    cell1.innerHTML = x;
		    document.getElementById("chatbox").value = "";
		}
	</script>

</body>
</html>