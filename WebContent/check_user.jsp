<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>jarb2</title>
</head>
<body>

<% 

String usuario=request.getParameter("user");


String contra=request.getParameter("password");




//Class.forName("com.mysql.cj.jdbc.Driver");

try{

Connection miConexion=DriverManager.getConnection("jdbc:mysql://localhost:3306/projecto_jsp","root","");

PreparedStatement c_preparada=miConexion.prepareStatement("SELECT * FROM USUARIOS WHERE usuario= ? AND contrasena=?",  ResultSet.TYPE_SCROLL_SENSITIVE, 
        ResultSet.CONCUR_UPDATABLE);

c_preparada.setString(1, usuario);

c_preparada.setString(2, contra);

ResultSet miResultset=c_preparada.executeQuery();

if (miResultset.absolute(1)) out.println("Usuario Autorizado");

else out.println("No hay usuarios con esos datos");







}catch(Exception e){
	
	out.println("ha habido un error");
	e.printStackTrace();
}
%>

</body>
</html>