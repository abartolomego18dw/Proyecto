<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,java.util.*,java.text.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<title>AXA.COM</title>
<link rel="shortcut icon" type="image/png" href="../../img/diseño/descarga.png">
<style type="text/css">
		body{
			background-color: #5F6A6A;
			background-image: url("../../img/diseño/descarga.jpeg");
			background-repeat: no-repeat;
			background-size: 100vw 100vh;
		}
		.elemento{
			margin: 2px 0px 1px 10px;
		}
		form h3{
			color: #AAB7B8;
			font-size:25px;
		}
		#form{
			background-color: #2E4053;
			width: 500px;
			text-align: center;
			height: 520px;
			margin-top: 150px;
			border-radius: 5px;

		}
		#submit{
			margin-top: 15px;
			width: 72%;
			font-size: 20px;
			color: white ;
			border-style: 0px;
			background-color: #28B463  ;
			border-width: 1px;
			height: 40px;
		}
		#linkactualizar{
			margin-top: 10px;
			margin-left: : 0px;
			width: 36%;
			font-size: 20px;
			border-style: 0px;
			background-color: #28B463  ;
			border-width: 1px;
			height: 40px;
			color: white;
		}
		#linkborrar{
			margin-top: 10px;
			margin-right: 0px;
			width: 36%;
			font-size: 20px;
			border-style: 0px;
			background-color: #28B463  ;
			border-width: 1px;
			height: 40px;
			color: white;
		}
		a{
			text-decoration: none;
			color: white;
		}
		input{
		background-color: #2E4053;
		color: grey;
		border:grey 1px solid;
		height: 25px;
		text-align: center;
		}
		


	</style>
</head>
<body>
<form method="POST" action="GuardarCoche.jsp">
	<center><div id="form" >
	
	
	

	

		<button  id="linkactualizar"><a href="UPDATE.html">ACTUALIZAR</a></button>
		<button  id="linkborrar"><a href="VENDER.html">VENDER</a></button>






		<h3>DATOS ESPEÍFICOS DE COCHE</h3>
			
			<input value="Capacidad maletero" type="number" name="capacidad_maletero" class="elemento" title="Capacidad del maletero">
			<input value="Numero de puertas" type="number" name="num_puertas" class="elemento" title="Numero de puertas">


			<br>


			
		
			<br>
			<input id="linkactualizar" type="submit" value="Añadir Coche" name="AñadirCo">
			
			
	
			
			
			
			
			
	</form>
	

	
	
	
	</div>
</center>






</body>
</html>
<%
Connection con = null;
String url = "jdbc:mysql://10.18.124.44:3306/";;
String db = "proyecto";
String driver = "com.mysql.jdbc.Driver";
try{
Class.forName(driver);
con = DriverManager.getConnection(url+db,"andoni","Superusuario");
try{
Statement st = con.createStatement();
String id_serie=request.getParameter("id_serie");
String cod_color=request.getParameter("cod_color");
String matricula=request.getParameter("matricula");
String num_bastidor=request.getParameter("num_bastidor");
String se_pinta=request.getParameter("se_pinta");
String num_asientos=request.getParameter("num_asientos");
String precio=request.getParameter("precio");


int val = st.executeUpdate("INSERT into vehiculo  "
        + "VALUES(id_vehiculo,'"+id_serie+"','"+se_pinta+"','"+cod_color+"','"+ matricula +"','"+num_bastidor+"','"+num_asientos+"','"+precio+"')");

con.close();
}
catch (SQLException ex){
System.out.println("SQL statement is not executed!");
}
}
catch (Exception e){
e.printStackTrace();
}

%>