<%@page import="com.project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
String email=session.getAttribute("email").toString();
String flightN = request.getParameter("flightN");
int quantity=1;
int price =0;
int total=0;


int z=0;
try{
	
	Connection con = ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs= st.executeQuery("select *from flightinfo where flightN='"+flightN+"'");
	while(rs.next()){
		
		price =rs.getInt(18);
		total= price;
	}
	ResultSet rs1= st.executeQuery("select *from booking where flightN='"+flightN+"' and email='"+email+"'");
	while(rs1.next()){
		total = rs.getInt(5);
		total += price;
		quantity= rs.getInt(3);
		quantity+=1;
		z=1;
		
	}
	if(z==1){
		st.executeUpdate("update booking set booking_total ='"+total+"', quantity='"+quantity+"' where flightN='"+flightN+"' and email='"+email+"'");
		response.sendRedirect("price.jsp?msg=exist");
	}
	if(z==0){
		PreparedStatement ps= con.prepareStatement("insert into booking(email,flightN.quantity,price,total)");
		ps.setString(1,email);
		ps.setString(2,flightN);
		ps.setInt(3,quantity);
		ps.setInt(4,price);
		ps.setInt(5,total);
		response.sendRedirect("searchresultsFlight.jsp?msg=added");
	}
	
			
		
	
}
catch(Exception e){
	
System.out.println(e);
response.sendRedirect("searchresultsFlight.jsp?msg=invalid");
}

%>