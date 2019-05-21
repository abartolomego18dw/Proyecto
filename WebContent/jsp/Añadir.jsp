<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	<center><div id="form" >
	<form>
	
	

	

		<button  id="linkactualizar"><a href="UPDATE.html">ACTUALIZAR</a></button>
		<button  id="linkborrar"><a href="VENDER.html">VENDER</a></button>




		<h3 id="htresuno">SERIE</h3>
		<input value="Año" type="number" name="año de fabricacion" class="elemento" title="Año de fabricacion">
		<input value="Marca" type="text" name="marca" class="elemento" title="Marca">
		<BR><input value="Modelo" type="text" name="modelo" class="elemento" title="Modelo de coches"> 
		<input value="Id_serie" type="text" name="id_serie" class="elemento" title="Id_serie">
		<br><br>

		<h3>DATOS GENERALES</h3>
			<input value="Id vehiculo" type="text" name="id_vehiculo" class="elemento" title="Id del vehiculo">
			<input value="Color" type="" name="id_color" class="elemento" title="Color"><br>
			<input value="Matricula" type="text" name="matricula" class="elemento" title="Matricula">
			<input value="Numero bastidor" type="text" name="Num_bastidor" class="elemento" title="Numero bastidor"><br>
			<input value="Se pinta" type="text" name="se_pinta" class="elemento" title="Se pinta">
			<input value="Numero de puertas" type="number" name="num_puertas" class="elemento" title="Numero de puertas"><br>
			<input value="Carga" type="number" name="carga" class="elemento" title="Carga">
			<input value="Capacidad maletero" type="number" name="capacidad_maletero" class="elemento" title="Capacidad del maletero"><br>
			<input value="precio" type="number" name="precio" class="elemento" title="precio">
			<input value="Tipo mercancia" type="charset" name="tipo mercancia" class="elemento" title="Tipo de mercancia"><br>
			<input type="submit" value="Añadir" name="añadir" id="submit" class="elemento" >
	</form>
	

	
	
	
	</div>
</center>



	</form>


</body>
</html>