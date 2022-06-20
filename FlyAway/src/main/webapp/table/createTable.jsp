
<%@page import="com.project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%

try{
	
	Connection con= ConnectionProvider.getCon();
	Statement st = con.createStatement();
	
	
	
	String q1= "create table flightinfo(airCraft varchar(10), flightN varchar(10),airlineCompany varchar(10),seats int,flightDuration varchar(10),originAirportNameShort varchar(10),originCountry varchar(40), originCity varchar(40),originDate date, originTime time, destinationAirportNameShort varchar(10),destinationCountry varchar(40), destinationCity varchar(40),destinationDate date, destinationTime time,available varchar(5),petAllowed varchar(4), price bigint, classes varchar(10))";
	String q2 = "create table customertinfo(name varchar(100),email varchar(40),password varchar(40),phoneN varchar(20),countryOfBirth varchar(20),cityOfBirth varchar(40),identification varchar(20),identityN varchar(20),countryR varchar(20),address varchar(100))";
	String q3="create table booking(email varchar (40),flightN varchar(10),quantity int,price int,total int,identification varchar(20),identity varchar(10),bookingId varchar(7), transitationId varchar(100),status varchar(10))";
	
	System.out.println(q3);
	System.out.println(q1);
	System.out.println(q2);
	//st.execute(q1);
	//st.execute(q2);
	st.execute(q3);
	System.out.println("Table created");
	con.close();
} catch(Exception e){
	System.out.println(e);
}



%>