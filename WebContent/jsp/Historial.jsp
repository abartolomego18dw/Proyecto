<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>

<head>
<meta charset="ISO-8859-1">
<title>Concesionario AXA</title>
</head>
<body>

<h2>Historial</h2>
    <br>
  <table>
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
</body>