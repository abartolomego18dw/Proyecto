<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*,java.util.*,java.text.*"%>

<head>
<meta charset="ISO-8859-1">
<title>Concesionario AXA</title>
</head>
<body>

<h2>Filtrado por Color</h2>
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
			String color = request.getParameter("color");
			ResultSet rst = null;
			Statement stmt=null;
			int i=1;
			rst=st.executeQuery("call FiltrarColor('"+color+"')");
			while(rst.next()){

					if (i==(i/2)*2){
					%>
					<tr>
					<td><%=rst.getString(1)%></td>
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
					<td><%=rst.getString(1)%></td>
					<td><%=rst.getString(2)%></td>
					<td><%=rst.getString(3)%></td>
					<td bgColor="<%=rst.getString(4)%>"></td>
					<td><%=rst.getString(5)%></td>
					<td><%=rst.getString(6)%></td>
					<td><%=rst.getString(7)%></td>
					<td><%=rst.getString(8)%></td>

					</tr>
					<%}

					i++;
					}
				rst.close();
				stmt.close();
				con.close();
				
				%>
				</tbody>
				    </table>

				</body>
			<%
		} catch (SQLException ex) {
			System.out.println(ex.getMessage());
		}
	} catch (Exception e) {
		System.out.println(e.getMessage());
	}
%>

<form method="POST" action="index.jsp">
	<center><div id="form" >
<input id="linkactualizar" type="submit" value="Volver pagina principal" name="volver">
