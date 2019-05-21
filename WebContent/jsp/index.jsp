<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>

<head>
<meta charset="ISO-8859-1">
<title>Concesionario AXA</title>
</head>
<body>

<h2>Vehículos Disponibles</h2>
<div align="left" width="200%">
<% out.println("<a class='space' href='Añadir.jsp'> Añadir Vehículo </a>");  %>  
    </div>
    <br>
    <table>
    <thead>
    <td bgColor="cyan" width="150" align="center" height="19"><font color="red"><b>
ID Vehículo</b></font></td>
<td bgColor="cyan" width="290" height="19"><font color="red"><b>Serie</b></font></td>
<td bgColor="cyan" width="290" height="19"><font color="red"><b>Pintado</b></font></td>
<td bgColor="cyan" width="230" height="19"><font color="red"><b>Cod. color</b></font></td>
<td bgColor="cyan" width="290" height="19"><font color="red"><b>Matrícula </b></font></td>
<td bgColor="cyan" width="290" height="19"><font color="red"><b>Núm. bastidor </b></font></td>
<td bgColor="cyan" width="290" height="19"><font color="red"><b>Núm. asientos </b></font></td>
<td bgColor="cyan" width="290" height="19"><font color="red"><b>Precio </b></font></td>
<td bgColor="cyan" width="290" height="19"><font color="red"><b>Modificar </b></font></td>
<td bgColor="cyan" width="290" height="19"><font color="red"><b>Vender </b></font></td>
 </thead>
 <tbody>
<%
String DRIVER = "com.mysql.jdbc.Driver";
Class.forName(DRIVER).newInstance();
Connection con=null;
ResultSet rst=null;
Statement stmt=null;
try{
  
String url="jdbc:mysql://localhost:3306/proyecto?user=andoni&password=Superusuario";
int i=1;
con=DriverManager.getConnection(url);
stmt=con.createStatement();
rst=stmt.executeQuery("SELECT * FROM vehiculo ORDER BY id_vehiculo ASC ");
while(rst.next()){

if (i==(i/2)*2){
%>
<tr>
<td bgColor="lightgreen" vAlign="top" width="80"  height="19"><%=i%></td>
<td bgColor="lightgreen" vAlign="top" width="110" height="19"><%=rst.getString(2)%></td>
<td bgColor="lightgreen" vAlign="top" width="224" height="19"><%=rst.getString(3)%></td>
<td bgColor="lightgreen" vAlign="top" width="230" height="19"><%=rst.getString(4)%></td>
<td bgColor="lightgreen" vAlign="top" width="230" height="19"><%=rst.getString(5)%></td>
<td bgColor="lightgreen" vAlign="top" width="230" height="19"><%=rst.getString(6)%></td>
<td bgColor="lightgreen" vAlign="top" width="230" height="19"><%=rst.getString(7)%></td>
<td bgColor="lightgreen" vAlign="top" width="230" height="19"><%=rst.getString(8)%></td>
<td bgColor="lightgreen" vAlign="top" width="220" height="19" >
    <a href="Modificar.jsp?id=<%=rst.getInt("id_vehiculo")%>"> Modificar Vehículo </a></td>
<td bgColor="lightgreen" vAlign="top" width="230" height="19">
    <a href="Vender.jsp?id=<%=rst.getInt("id_vehiculo")%>"> Vender Vehículo </a></td>
</tr>
<%
}else{
%>
<tr>
<td bgColor="lightgreen" vAlign="top" width="80"  height="19"><%=i%></td>
<td bgColor="lightgreen" vAlign="top" width="110" height="19"><%=rst.getString(2)%></td>
<td bgColor="lightgreen" vAlign="top" width="224" height="19"><%=rst.getString(3)%></td>
<td bgColor="lightgreen" vAlign="top" width="230" height="19"><%=rst.getString(4)%></td>
<td bgColor="lightgreen" vAlign="top" width="230" height="19"><%=rst.getString(5)%></td>
<td bgColor="lightgreen" vAlign="top" width="230" height="19"><%=rst.getString(6)%></td>
<td bgColor="lightgreen" vAlign="top" width="230" height="19"><%=rst.getString(7)%></td>
<td bgColor="lightgreen" vAlign="top" width="230" height="19"><%=rst.getString(8)%></td>
<td bgColor="lightgreen" vAlign="top" width="220" height="19" >
    <a href="Modificar.jsp?id=<%=rst.getInt("id_vehiculo")%>"> Modificar Vehículo </a></td>
<td bgColor="lightgreen" vAlign="top" width="230" height="19">
    <a href="Vender.jsp?id=<%=rst.getInt("id_vehiculo")%>"> Vender Vehículo </a></td>
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