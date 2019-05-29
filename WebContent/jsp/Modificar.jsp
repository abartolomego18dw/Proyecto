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
			background-image: url("../img/diseño/descarga.jpeg") ;
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
<form method="POST" action="GuardarModificacion.jsp">
	<center><div id="form" >

	
	

	






		<h3>SELECCIONE EL ID DEL VEHICULO QUE QUIERE MODIFICAR:</h3>
		
		<input placeholder="ID vehículo" value="" type="number" name="id_vehiculo" class="elemento" title="id_vehiculo" min="1" required><br>
		
		<h3>DATOS A MODIFICAR</h3>
			
			<input placeholder="ID serie" value="" type="number" name="id_serie" class="elemento" title="id_serie"><br>
			<input placeholder="Color" value="" type="color" name="cod_color" class="elemento" title="Color">
			<input placeholder="Matrícula" value="" type="text" name="matricula" class="elemento" title="Matricula"><br>
			<input placeholder="Número de Bastidor" value="" type="text" name="num_bastidor" class="elemento" title="Numero bastidor">
			<input placeholder="¿Se pinta?" value="" type="text" name="se_pinta" class="elemento" title="Se pinta"><br>
			<input placeholder="Número de asientos" value="" type="number" name="num_asientos" class="elemento" title="Número de asientos">
			<input placeholder="Precio" value="" type="number" name="precio" class="elemento" title="precio"><br>
			<input placeholder="Capacidad de maletero" value="" type="number" name="capacidad_maletero" class="elemento" title="Capacidad del maletero">
			<input placeholder="Número de puertas" value="" type="number" name="num_puertas" class="elemento" title="Numero de puertas">

			
		
			<br>
			
			
			<input id="linkactualizar" type="submit" value="Confirmar" name="Confirmar">
			</form>
			

	
	</div>
</center>


</body>
</html>