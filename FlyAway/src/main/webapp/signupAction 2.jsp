<%@page import="com.project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String password= request.getParameter("password");
String phoneN= request.getParameter("phoneN");
String countryR = "";
String address = "";




try{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps= con.prepareStatement("insert into users values(?,?,?,?,?,?)");
	ps.setString(1, name);
	ps.setString(2, email);
	ps.setString(3, password);
	ps.setString(4, countryR);
	ps.setString(5, address);
	ps.setString(6, phoneN);

	
	
	ps.executeUpdate();
	response.sendRedirect("aftersignup.jsp?msg=valid");
}

catch(Exception e){
	
	
	response.sendRedirect("aftersignup.jsp?msg=invalid");
	System.out.println(e);
}



%>