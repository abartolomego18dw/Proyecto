<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<meta charset="utf-8">
		<title>Concesionario AXA</title>
		<link rel="shortcut icon" type="image/png" href="../img/diseño/descarga.png">
		<style type="text/css">
			
			@font-face{
				font-family: 'arcade';
				src: url(../letras/letra2.ttf);
				font-style: normal;
				font-weight: 200;
			}
			@font-face{
				font-family: 'firma';
				src: url(../letras/firma.ttf);
				font-style: normal;
				font-weight: 200;
			}
				
			*{
				padding:0px;
				margin:0px;
			}
			
			body{
				width:100vw;
				height:100vh;
				background-image: url("../img/diseño/fondo2.jpg");
				background-repeat: no-repeat;
				background-size: cover;
				
			}
			
			header{
				float:left;
				text-align: center;
				width:90vw;
				height:8vh;
				margin-left:10vh;
				margin-top:3vh;
				padding-top:1vh;
				background-image: url("../img/diseño/fondo.jpg");
				background-repeat: no-repeat;
				background-size: 100vw 100vh;
				font-family: arcade;
				font-size:35px;
				font-weight: 200;
				color: #C62828;
				text-shadow: 4px 4px 2px #660000;
				letter-spacing: 0.2em;
			}
			nav ul {
				list-style: none;
			  	background-image: url("../img/diseño/fondo.jpg");
				background-repeat: no-repeat;
				background-size: 100vw 100vh;
			  	text-align: center;
			  	padding: 0;
			  	float:left;
				width:90vw;
				height:6vh;
				margin-left:10vh;
			}
			
			nav li {
			  font-family: 'Oswald', sans-serif;
			  font-size: 1.2em;
			}
			 
			nav a {
			  text-decoration: none;
			  color: #C62828;
			  display: block;
			  transition: .3s background-color;
			  text-shadow: 2px 1px 8px #660000;
			}
			 
			nav a:hover {
			  background-color: #005f5f;
			}
			 
			nav a.active {
			  background-color: #fff;
			  color: #444;
			  cursor: default;
			}
		
			nav li {
			    width: 220px;
			    border-bottom: none;
			    height: 58px;
			    line-height: 58px;
			    font-size: 1.4em;
			  }
			 
			  nav li {
			    display: inline-block;
			    margin-right: -4px;
			  }
			  
			  section{
			  	float:left;
				text-align: center;
				width:90vw;
				margin-left:10vh;
				margin-top:3vh;
				padding-top:1vh;
				padding-bottom:1vh;
				background-image: url("../img/diseño/fondo.jpg");
				background-repeat: no-repeat;
				background-size: cover;
			  	position:center;
			  	font-size:20px;
			  	
			  }
			  table{
			  	margin-top:1vw;
			  	margin-left:20vh;
			  }
			  thead{
				font-weight: bold;
				
			  }
			  td{
			   padding: 4vh;
			  }
			  footer{
			  	float:left;
				text-align: center;
				height:3vh;
				width:90vw;
				margin-top:1vh;
				margin-left:10vh;
				margin-bottom:1vh;
				padding-top:1vh;
				background-image: url("../img/diseño/fondo.jpg");
				background-repeat: no-repeat;
				background-size: cover;
				font-family: firma;
			  	font-size: 1.4em;
			  	letter-spacing: 0.1em;
			  }
		</style>
	</head>
	<body>
		<header>
			<h2>Vehículos Disponibles</h2>
		</header>
		<nav>
			<ul>
				<li><% out.println("<a class='space' href='Añadir.jsp'> Añadir Coche </a>");%></li>  
				<li><% out.println("<a class='space' href='AñadirCamion.jsp'> Añadir Camión </a>");%></li>
				<li><% out.println("<a class='space' href='Modificar.jsp'> Modificar Coche </a>");%> </li>
				<li><% out.println("<a class='space' href='ModificarCamion.jsp'> Modificar Camión </a>");%></li> 
				<li><% out.println("<a class='space' href='Vender.jsp'> Vender Vehículo </a>");%></li>
				<li><% out.println("<a class='space' href='Historial.jsp'> Ver Historial </a>");%></li>
				<li><% out.println("<a class='space' href='Filtrar.jsp'> Filtrar por Color </a>");%></li>
			</ul>
		</nav>
<br>
		<section>
			<table>
			    <thead>
					<td>ID Vehículo</td>
					<td>Serie</td>
					<td>Pintado</td>
					<td>Color</td>
					<td>Matrícula</td>
					<td>Núm. bastidor</td>
					<td>Núm. asientos</td>
					<td>Precio</td>
				</thead>
				
				<tbody>
				<%
				String DRIVER = "com.mysql.jdbc.Driver";
				Class.forName(DRIVER).newInstance();
				Connection con=null;
				ResultSet rst=null;
				Statement stmt=null;
				try{
				  
				String url="jdbc:mysql://10.18.124.63:3306/proyecto?user=andoni&password=Superusuario";
				int i=1;
				con=DriverManager.getConnection(url);
				stmt=con.createStatement();
				rst=stmt.executeQuery("SELECT * FROM vehiculo ORDER BY id_vehiculo ASC ");
				while(rst.next()){
				
				if (i==(i/2)*2){
				%>
				<tr>
					<td><%=i%></td>
					<td><%=rst.getString(2)%></td>
					<td><%=rst.getString(3)%></td>
					<td bgColor="<%=rst.getString(4)%>"></td>
					<td><%=rst.getString(5)%></td>
					<td><%=rst.getString(6)%></td>
					<td><%=rst.getString(7)%></td>
					<td><%=rst.getString(8)%></td>
				</tr>
				<%
				}else{
				%>
				<tr>
					<td><%=i%></td>
					<td><%=rst.getString(2)%></td>
					<td><%=rst.getString(3)%></td>
					<td bgColor="<%=rst.getString(4)%>"></td>
					<td><%=rst.getString(5)%></td>
					<td><%=rst.getString(6)%></td>
					<td><%=rst.getString(7)%></td>
					<td><%=rst.getString(8)%></td>
				</tr>
				<%	}
				
				i++;
				}
				rst.close();
				stmt.close();
				con.close();
				}catch(Exception e){
				System.out.println(e.getMessage());
				}
				%>
			</tbody>
			    </table>
		</section>
		
		<footer>
		<p>Andoni Bartolomé, Xabier Jacob, Andrés Rojas
		</footer>
		
	</body>
</html>