<%@page import="com.project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%

String name = request.getParameter("name");
String email = request.getParameter("email");
String password= request.getParameter("password");
String phoneN= request.getParameter("phoneN");

String countryOfBirth= "";
String cityOfBirth= "";
String identification = "";
String identityN = "";
String countryR = "";
String address = "";


try{
	
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps= con.prepareStatement("insert into customertinfo values(?,?,?,?,?,?,?,?,?,?)");
	
	
	ps.setString(1, name);
	ps.setString(2, email);
	ps.setString(3, password);
	ps.setString(4, phoneN);
	
	ps.setString(5, countryOfBirth);
	ps.setString(6, cityOfBirth);
	ps.setString(7, identification);
	ps.setString(8, identityN);
	ps.setString(9, countryR);
	ps.setString(10, address);
	

	
	
	ps.executeUpdate();
	response.sendRedirect("aftersignup.jsp?msg=valid");
}

catch(Exception e){
	
	
	response.sendRedirect("aftersignup.jsp?msg=invalid");
	System.out.println(e);
}



%>