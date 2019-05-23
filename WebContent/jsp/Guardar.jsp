<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,java.util.*,java.text.*"%>


<%
Connection con = null;
String url = "jdbc:mysql://10.18.124.44:3306/";;
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


int val = st.executeUpdate("INSERT into vehiculo  "
        + "VALUES(id_vehiculo,'"+id_serie+"','"+se_pinta+"','"+cod_color+"','"+ matricula +"','"+num_bastidor+"','"+num_asientos+"','"+precio+"')");

con.close();
}
catch (SQLException ex){
System.out.println("SQL statement is not executed!");
}
}
catch (Exception e){
e.printStackTrace();
}

%>