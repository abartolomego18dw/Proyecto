
		<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,java.util.*,java.text.*"%>


<%
Connection con = null;
String url = "jdbc:mysql://10.18.124.43:3306/";;
String db = "proyecto";
String driver = "com.mysql.jdbc.Driver";
try{
Class.forName(driver);
con = DriverManager.getConnection(url+db,"andoni","Superusuario");
try{
Statement st = con.createStatement();
String id_serie=request.getParameter("id_serie");
String cod_color=request.getParameter("cod_color");
String matricula=request.getParameter("matricula");
String num_bastidor=request.getParameter("num_bastidor");
String se_pinta=request.getParameter("se_pinta");
String num_asientos=request.getParameter("num_asientos");
String precio=request.getParameter("precio");
String capacidad_maletero=request.getParameter("capacidad_maletero");
String num_puertas=request.getParameter("num_puertas");

int val2 = st.executeUpdate("INSERT into coche "
		+ "VALUES(id_vehiculo, '"+capacidad_maletero+"','"+num_puertas+"')");

con.close();
out.println("<p> El coche se ha añadido correctamente. </p>");
out.println("<br>");
out.println("<a href='index.jsp'> Volver a la página principal </a>");
}
catch (SQLException ex){
System.out.println("SQL statement is not executed!");
}
}
catch (Exception e){
e.printStackTrace();
}

%>