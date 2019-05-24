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
					"INSERT into vehiculo (id_serie, se_pinta, cod_color, matricula, num_bastidor, num_asientos, precio) "
							+ "VALUES('" + id_serie + "','" + se_pinta + "','" + cod_color + "','" + matricula
							+ "','" + num_bastidor + "','" + num_asientos + "','" + precio + "')");

			rst = st.executeQuery("SELECT id_vehiculo FROM vehiculo where matricula = '" + matricula + "'");
			if (rst.next()) {
				String id_vehiculo = rst.getString(1);
				st.executeUpdate("INSERT into coche (id_vehiculo,capacidad_maletero, num_puertas) " + "VALUES('"
						+ id_vehiculo + "','" + capacidad_maletero + "','" + num_puertas + "')");
			}
		} catch (SQLException ex) {
			System.out.println(ex.getMessage());
		}
	} catch (Exception e) {
		System.out.println(e.getMessage());
	}
%>
