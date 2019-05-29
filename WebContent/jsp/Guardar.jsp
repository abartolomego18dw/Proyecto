<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*,java.util.*,java.text.*"%>


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
			String id_serie = request.getParameter("id_serie");
			String cod_color = request.getParameter("cod_color");
			String matricula = request.getParameter("matricula");
			String num_bastidor = request.getParameter("num_bastidor");
			String se_pinta = request.getParameter("se_pinta");
			String num_asientos = request.getParameter("num_asientos");
			String precio = request.getParameter("precio");
			String capacidad_maletero = request.getParameter("capacidad_maletero");
			String num_puertas = request.getParameter("num_puertas");
			ResultSet rst = null;
			
			st.executeUpdate(
					"INSERT into vehiculo (id_serie, se_pinta, cod_color, matricula, num_bastidor, num_asientos, precio) "
							+ "VALUES('" + id_serie + "','" + se_pinta + "','" + cod_color + "','" + matricula
							+ "','" + num_bastidor + "','" + num_asientos + "','" + precio + "')");

			rst = st.executeQuery("SELECT id_vehiculo FROM vehiculo where matricula = '" + matricula + "'");
			if (rst.next()) {
				String id_vehiculo = rst.getString(1);
				st.executeUpdate("INSERT into coche (id_vehiculo,capacidad_maletero, num_puertas) " + "VALUES('"
						+ id_vehiculo + "','" + capacidad_maletero + "','" + num_puertas + "')");
			}
		} catch (SQLException ex) {
			System.out.println(ex.getMessage());
		}
	} catch (Exception e) {
		System.out.println(e.getMessage());
	}
%>

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
		div{
		margin-top:10vh;
		background-color: #28B463;
		font-size: 25px;
		}
		#form{
			background-color: #2E4053;
			width: 500px;
			text-align: center;
			height: 520px;
			margin-top: 50px;
			border-radius: 5px;
			

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

		
		input{
		background-color: #2E4053;
		color: grey;
		border:grey 1px solid;
		height: 25px;
		text-align: center;
		}
		div{
		border: 1px solid black;
		width:40vw;
		heigth:50vh;
		text-align: center;
		}
		


	</style>
</head>
<body>
<center><div>
	<p>Ha comprado el coche con los siguientes datos: </p>
	<p>ID Serie: <% out.print(request.getParameter("id_serie")); %> </p>
	<p>Color: <% out.print(request.getParameter("cod_color")); %></p>
	<p>Matrícula: <% out.print(request.getParameter("matricula")); %></p>
	<p>Número de bastidor: <% out.print(request.getParameter("num_bastidor"));%></p>
	<p>¿Se va a pintar?: <% out.print(request.getParameter("se_pinta")); %></p>
	<p>Núemro de asientos: <% out.print(request.getParameter("num_asientos")); %></p>
	<p>Precio: <% out.print(request.getParameter("precio")); %> euros</p>
	<p>Capacidad de maletero: <% out.print(request.getParameter("capacidad_maletero")); %> Litros</p>
	<p>Número de puertas: <% out.print(request.getParameter("num_puertas")); %></p>
	</div>
<form method="POST" action="index.jsp"> 
<input id="linkactualizar" type="submit" value="Volver pagina principal" name="volver">
			</form></center>
</body>
</html>

