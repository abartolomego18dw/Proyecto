<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*,java.util.*,java.text.*"%>

	<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<title>AXA.COM</title>
<link rel="shortcut icon" type="image/png" href="../../img/diseño/descarga.png">
<style type="text/css">
		body{
		background-image: url("../img/diseño/compra.jpg") ;
			background-repeat: no-repeat;
			background-size: 100vw 100vh;

		}
			h3{
		margin-top:10vh;
		background-color: #28B463;
		font-size: 25px;
		border: 1px solid black;
		width:40vw;
		heigth:50vh;
		text-align: center;
		}
		

		#linkactualizar{
			margin-top: 10px;
			margin-left: : 0px;
			width: 40%;
			font-size: 20px;
			background-color: #28B463  ;
			border:1px solid black;
			height: 40px;
			color: white;
		}
	</style>

<%
	Connection con = null;
	String url = "jdbc:mysql://10.18.124.44:3306/";
	;
	String db = "proyecto";
	String driver = "com.mysql.jdbc.Driver";
	try {
		Class.forName(driver);
		con = DriverManager.getConnection(url + db, "andoni", "Superusuario");
		try {
			Statement st = con.createStatement();
			String id_vehiculo = request.getParameter("id_vehiculo");
			ResultSet rst = null;
			
				st.executeUpdate("DELETE FROM vehiculo WHERE id_vehiculo ="+id_vehiculo);
			
		} catch (SQLException ex) {
			System.out.println(ex.getMessage());
		}
	} catch (Exception e) {
		System.out.println(e.getMessage());
	}
%>
<center><h3>El vehiculo <%String id_vehiculo = request.getParameter("id_vehiculo");
out.println(id_vehiculo);%> ha sido vendido correctamente.</h3>
<form method="POST" action="index.jsp">
	<center><div id="form" >
<input id="linkactualizar" type="submit" value="Volver pagina principal" name="volver">
			</form></center>
			
			</head>
			</html>