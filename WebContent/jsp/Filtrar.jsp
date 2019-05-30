<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,java.util.*,java.text.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<title>AXA.COM</title>
<link rel="shortcut icon" type="image/png" href="../../img/diseño/descarga.png">
<script type="text/javascript">
function pregunta(){ 
if (confirm('¿Estas seguro de que quieres filtrar por este color?')){ 
       document.tuformulario.submit() 
    } 
} 
</script>
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
<form method="POST" action="ListarPorColor.jsp">
	<center><div id="form" >

<h3>Selecciona un color</h3>
			
			<input list="color" value="" placeholder="Color" type="text" name="color" class="elemento" title="color" required autocomplete="off">
			<datalist id="color">
    			<option value="Grey"></option>
    			<option value="brown"></option>
    			<option value="blue"></option>
    			<option value="#1D2134"></option>
    			<option value="#232821"></option>
			</datalist>
			<br>
<br>
			
			
			<input id="linkactualizar" type="submit" onclick="pregunta()"value="Filtrar" name="Filtrar">
			</form>
			

	
	</div>
</center>


</body>
</html>