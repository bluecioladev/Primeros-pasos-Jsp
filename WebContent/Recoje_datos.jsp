<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String nombre=request.getParameter("nombre");

String apellido=request.getParameter("apellido");


String usuario=request.getParameter("usuario");


String contra=request.getParameter("contra");


String pais=request.getParameter("pais");


String tecno=request.getParameter("tecnologias");

//Class.forName("com.mysql.jdbc.Driver");

try{

Connection miConexion=DriverManager.getConnection("jdbc:mysql://localhost:3306/projecto_jsp","root","");


Statement miStatement=miConexion.createStatement();

String instruccionSql="INSERT INTO USUARIOS (nombre,apellido,usuario,contrasena,pais,tecnologia)VALUES ('"+ nombre +"','" + apellido + "','" + usuario + "','" + contra + "','" + pais + "','" + tecno + "')";

miStatement.executeUpdate(instruccionSql);

out.println("registrado con exito ");

}catch(Exception e){
	
	out.println("ha habido un error");
	e.printStackTrace();
}
%>

</body>
</html>














