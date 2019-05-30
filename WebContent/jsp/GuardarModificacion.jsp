<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*,java.util.*,java.text.*"%>


<%
	Connection con = null;
	String url = "jdbc:mysql://10.18.124.63:3306/";
	;
	String db = "proyecto";
	String driver = "com.mysql.jdbc.Driver";
	try {
		Class.forName(driver);
		con = DriverManager.getConnection(url + db, "andoni", "Superusuario");
		try {
			Statement st = con.createStatement();
			String id_vehiculo = request.getParameter("id_vehiculo");
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
					"UPDATE vehiculo SET id_serie="+id_serie+",se_pinta='"+se_pinta+"', cod_color='"+cod_color+"', matricula='"+matricula+"', num_bastidor='"+num_bastidor+"', num_asientos="+num_asientos+", precio='"+precio+"' where id_vehiculo="+id_vehiculo+"");
			st.executeUpdate(
					"UPDATE coche SET num_puertas="+num_puertas+", capacidad_maletero='"+capacidad_maletero+"' where id_vehiculo ="+id_vehiculo+"");
					

			
		} catch (SQLException ex) {
			System.out.println(ex.getMessage());
		}
	} catch (Exception e) {
		System.out.println(e.getMessage());
	}
%>

