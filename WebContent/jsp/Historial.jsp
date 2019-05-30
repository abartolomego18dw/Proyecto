<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
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
			  
			  section{
			  	float:left;
				text-align: center;
				width:90vw;
				margin-left:10vh;
				margin-top:3vh;
				padding-top:1vh;
				background-image: url("../img/diseño/fondo.jpg");
				background-repeat: no-repeat;
				background-size: cover;
			  	position:center;
			  	font-size:20px;
			  }
			  table{
			  	margin-top:1vw;
			  	margin-left:1vh;
			  }
			  thead{
				font-weight: bold;
				
			  }
			  td{
			   padding: 2vh;
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
			  input{
			  	background-color: #4CAF50; /* Green */
				border: none;
				color: white;
				padding: 15px 32px;
				text-align: center;
				text-decoration: none;
				display: inline-block;
				font-size: 16px;
				margin: 4px 2px;
				cursor: pointer;
				-webkit-transition-duration: 0.4s; /* Safari */
				transition-duration: 0.4s;  	
				margin-bottom:1vh;
			  }
			  input:hover {
 				box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
		</style>
<body>
<header>
<h2>Historial</h2>
</header>
    <br>
  <section><table>
   <thead>
    <td>ID Historial</td>
	<td>Color antiguo</td>
	<td>Color nuevo</td>
	<td>Fecha operacion</td>
	<td>Operacion</td>
	<td>Usuario</td>
	<td>Id vehiculo</td>
	<td>Id serie</td>
	<td>Matricula</td>
	<td>Núm. bastidor</td>
	<td>Precio antiguo</td>
	<td>Precio nuevo</td>
	<td>Núm. de asientos</td>
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
rst=stmt.executeQuery("SELECT * FROM historial ORDER BY id_historial ASC ");
while(rst.next()){

if (i==(i/2)*2){
%>
<tr>
<td><%=i%></td>
<td bgcolor="<%=rst.getString(2)%>"></td>
<td bgcolor="<%=rst.getString(3)%>"></td>
<td><%=rst.getString(4)%></td>
<td><%=rst.getString(5)%></td>
<td><%=rst.getString(6)%></td>
<td><%=rst.getString(7)%></td>
<td><%=rst.getString(8)%></td>
<td><%=rst.getString(9)%></td>
<td><%=rst.getString(10)%></td>
<td><%=rst.getString(11)%></td>
<td><%=rst.getString(12)%></td>
<td><%=rst.getString(13)%></td>

</tr>
<%
}else{
%>
<tr>
<td><%=i%></td>
<td bgcolor="<%=rst.getString(2)%>"></td>
<td bgcolor="<%=rst.getString(3)%>"></td>
<td><%=rst.getString(4)%></td>
<td><%=rst.getString(5)%></td>
<td><%=rst.getString(6)%></td>
<td><%=rst.getString(7)%></td>
<td><%=rst.getString(8)%></td>
<td><%=rst.getString(9)%></td>
<td><%=rst.getString(10)%></td>
<td><%=rst.getString(11)%></td>
<td><%=rst.getString(12)%></td>
<td><%=rst.getString(13)%></td>
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
    
<form method="POST" action="index.jsp">
	<center><div id="form" >
<input id="linkactualizar" type="submit" value="Volver pagina principal" name="volver">
			</form>
</section>
<footer>
		<p>Andoni Bartolomé, Xabier Jacob, Andrés Rojas
		</footer>
</body>
</html>