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

	
	

	

	





		<h3>DATOS GENERALES</h3>
			
			<input placeholder="id_serie" value="id_serie" type="number" name="id_serie" class="elemento" title="id_serie" required min ="1"><br>
			<input palceholder="Color" value="" type="color" name="cod_color" class="elemento" title="Color" required>
			<input placeholder="Matricula" value="" type="text" name="matricula" class="elemento" title="Matricula" required><br>
			<input placeholder="Numero bastidor" value="" type="text" name="num_bastidor" class="elemento" title="Numero bastidor" required>
			<input placeholder="Se pinta" value="" type="text" name="se_pinta" class="elemento" title="Se pinta" required><br>
			<input placeholder="Numero de asientos" value="" type="number" name="num_asientos" class="elemento" title="Número de asientos" required min="1">
			<input placeholder="precio" value="" type="number" name="precio" class="elemento" title="precio" min="1"><br>
			
		<h3>DATOS ESPECÍFICOS DE COCHE</h3>
		
			<input placeholder="Capacidad maletero" value="" type="number" name="capacidad_maletero" class="elemento" title="Capacidad del maletero" required min="1">
			<input placeholder="Numero de puertas" value="" type="number" name="num_puertas" class="elemento" title="Numero de puertas" required min="1">

			
		
			<br>
			
			
			<input id="linkactualizar" type="submit" value="Añadir Coche" name="AñadirCo">
			</form>
			

	
	</div>
</center>


</body>
</html>
