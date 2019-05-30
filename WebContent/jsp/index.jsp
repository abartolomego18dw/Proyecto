<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>

<head>
<meta charset="ISO-8859-1">
<title>Concesionario AXA</title>
</head>
<body>

<h2>Vehículos Disponibles</h2>
<div align="left" width="200%">
<% out.println("<a class='space' href='Añadir.jsp'> Añadir Coche </a>");%>  
<% out.println("<a class='space' href='AñadirCamion.jsp'> Añadir Camión </a>");%>
<% out.println("<a class='space' href='Modificar.jsp'> Modificar Coche </a>");%> 
<% out.println("<a class='space' href='ModificarCamion.jsp'> Modificar Camión </a>");%> 
<% out.println("<a class='space' href='Vender.jsp'> Vender Vehículo </a>");%>
<% out.println("<a class='space' href='Historial.jsp'> Ver Historial </a>");%>
<% out.println("<a class='space' href='Filtrar.jsp'> Filtrar por Color </a>");%>
    </div>
    <br>
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

</body>