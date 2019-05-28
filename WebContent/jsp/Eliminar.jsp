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
			String id_vehiculo = request.getParameter("id_vehiculo");
			ResultSet rst = null;
			
				st.executeUpdate("DELETE FROM vehiculo WHERE id_vehiculo ="+id_vehiculo);
			
		} catch (SQLException ex) {
			System.out.println(ex.getMessage());
		}
	} catch (Exception e) {
		System.out.println(e.getMessage());
	}
%>
<h3>Ha sido eliminado el vehiculo <%String resultado = request.getParameter("id_vehiculo");
out.println(resultado);
%></h3>
<form method="POST" action="index.jsp">
	<center><div id="form" >
<input id="linkactualizar" type="submit" value="Volver pagina principal" name="volver">
			</form>