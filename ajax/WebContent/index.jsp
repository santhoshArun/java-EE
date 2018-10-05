<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*"%>  
  
<%  
String s=request.getParameter("va");  
if(s==null || s.trim().equals("")){  
out.print("Please enter id");  
}else{  
String id=s;
try{  
Class.forName("org.postgresql.Driver");  
Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5433/form", "postgres", "ch3coona");  
PreparedStatement ps=con.prepareStatement("select * from login where username=?");  
ps.setString(1,id);  
ResultSet rs=ps.executeQuery();  
while(rs.next()){  
out.print(rs.getString(1)+" "+rs.getString(2) + " " + rs.getString(3) + "checking from jsp");  
}  
con.close();  
}catch(Exception e){e.printStackTrace();}  
}  
%>

</body>
</html>