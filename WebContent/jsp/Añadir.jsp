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
		h3{
			color: #AAB7B8;
			font-size:25px;
		}
		#form{
			background-color: #2E4053;
			width: 500px;
			text-align: center;
			height: 520px;
			margin-top: 50px;
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
<form method="POST" action="Guardar.jsp">
	<center><div id="form" >

	
	

	

		<button  id="linkactualizar"><a href="UPDATE.html">ACTUALIZAR</a></button>
		<button  id="linkborrar"><a href="VENDER.html">VENDER</a></button>






		<h3>DATOS GENERALES</h3>
			
			<input value="id_serie" type="number" name="id_serie" class="elemento" title="id_serie"><br>
			<input value="Color" type="" name="cod_color" class="elemento" title="Color">
			<input value="Matricula" type="text" name="matricula" class="elemento" title="Matricula"><br>
			<input value="Numero bastidor" type="text" name="num_bastidor" class="elemento" title="Numero bastidor">
			<input value="Se pinta" type="text" name="se_pinta" class="elemento" title="Se pinta"><br>
			<input value="Numero de asientos" type="number" name="num_asientos" class="elemento" title="Número de asientos">
			<input value="precio" type="number" name="precio" class="elemento" title="precio"><br>
			
		<h3>DATOS ESPECÍFICOS DE COCHE</h3>
		
			<input value="Capacidad maletero" type="number" name="capacidad_maletero" class="elemento" title="Capacidad del maletero">
			<input value="Numero de puertas" type="number" name="num_puertas" class="elemento" title="Numero de puertas">

			
		
			<br>
			
			
			<input id="linkactualizar" type="submit" value="Añadir Coche" name="AñadirCo">
			</form>
			

	
	</div>
</center>


</body>
</html>
