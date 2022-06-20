
<%@page import="com.project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

 <%
String email = request.getParameter("email");
String password = request.getParameter("password");


if("admin@gmail.com".equals(email) && "admin1234".equals(password))
{
	session.setAttribute("email",email);
	response.sendRedirect("adminPortal.jsp");
	
}
 else
{
	
	int z=0;


try{
	Connection con= ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs= st.executeQuery("select *from customertinfo where email = '"+email+"' and password='"+password+"'");
	
	while(rs.next())
	
	{
		z=1;
		session.setAttribute("email", email);
		
		response.sendRedirect("personalSite.jsp");
	}
	
	if(z==0)
		response.sendRedirect("login.jsp?msg=notexist");
		
	}



	catch(Exception e){
		System.out.println(e);
		response.sendRedirect("login.jsp?msg=invalid");
	

}

}

%>


