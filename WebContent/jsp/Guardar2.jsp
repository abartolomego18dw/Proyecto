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
String año_fabricacion=request.getParameter("año_fabricacion");
String marca=request.getParameter("marca");
String modelo=request.getParameter("modelo");
String id_serie=request.getParameter("id_serie");


String cod_color=request.getParameter("cod_color");
String matricula=request.getParameter("matricula");
String Num_bastidor=request.getParameter("Num_bastidor");
String se_pinta=request.getParameter("se_pinta");
String num_puertas=request.getParameter("num_puertas");
String capacidad_maletero=request.getParameter("capacidad_maletero");
String precio=request.getParameter("precio");

int val = st.executeUpdate("INSERT serie, vehiculo,coche  "
        + "VALUES('"+año_fabricacion+"','"+marca+"','"+modelo+"','"+ id_serie +"','"+cod_color+"','"+matricula+"','"+Num_bastidor+"','"+ se_pinta +"','"+precio+"','"+capacidad_maletero+"','"+num_puertas+"')");
/*int val2 = st.executeUpdate("INSERT vehiculo "
		+ "VALUES('"+cod_color+"','"+matricula+"','"+Num_bastidor+"','"+ se_pinta +"','"+precio+"')");
int val3 = st.executeUpdate("INSERT coche "
		+ "VALUES('"+capacidad_maletero+"','"+num_puertas+"')");*/

con.close();
out.println("<p> El coche " +"<b>"+ marca+" " + modelo+"</b>" + " se ha añadido correctamente. </p>");
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