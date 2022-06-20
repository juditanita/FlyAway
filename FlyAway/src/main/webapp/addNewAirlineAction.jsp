<%@page import="com.project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
String airCraft = request.getParameter("airCraft");
String flightN = request.getParameter("flightN");
String airlineCompany= request.getParameter("airlineCompany");
String seats= request.getParameter("seats");

String flightDuration = request.getParameter("flightDuration");
String originAirportNameShort = request.getParameter("originAirportNameShort");
String originCountry= request.getParameter("originCountry");
String originCity= request.getParameter("originCity");
String originDate= request.getParameter("originDate");
String originTime= request.getParameter("originTime");

String destinationAirportNameShort = request.getParameter("destinationAirportNameShort");
String destinationCountry= request.getParameter("destinationCountry");
String destinationCity = request.getParameter("destinationCity");
String destinationDate= request.getParameter("destinationDate");
String destinationTime= request.getParameter("destinationTime");

String available = request.getParameter("available");
String petAllowed= request.getParameter("petAllowed");
String price = request.getParameter("price");
String classes= request.getParameter("classes");



try{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps= con.prepareStatement("insert into flightinfo values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1, airCraft);
	ps.setString(2, flightN);
	ps.setString(3, airlineCompany);
	ps.setString(4, seats);
	ps.setString(5, flightDuration);
	ps.setString(6, originAirportNameShort);
	ps.setString(7, originCountry);
	ps.setString(8, originCity);
	ps.setString(9, originDate);
	ps.setString(10, originTime);
	
	ps.setString(11, destinationAirportNameShort);
	ps.setString(12, destinationCountry);
	ps.setString(13, destinationCity);
	ps.setString(14, destinationDate);
    ps.setString(15, destinationTime);
	
	ps.setString(16, available);
	ps.setString(17, petAllowed);
	ps.setString(18, price);
	ps.setString(19, classes);

	
	
	ps.executeUpdate();
	response.sendRedirect("allFlight.jsp?msg=addedairline");
	response.sendRedirect("home.jsp?msg=searchDone");
}

catch(Exception e){

	
	response.sendRedirect("addNewAirline.jsp?msg=notaddedairline");

	response.sendRedirect("searchresultsFlight.jsp?msg=searchNoTDone");
	System.out.println(e);
}



%>