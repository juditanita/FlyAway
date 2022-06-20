
<%@page import="com.project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<% 
String email = request.getParameter("email");
String password = request.getParameter("password");
String newpassword = request.getParameter("newpassword");

int r=0;


try{
	Connection con= ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs= st.executeQuery("select *from users where email= '"+email+"' and password='"+password+"'");
	
	while(rs.next())
		
	{
		r=1;
		st.executeUpdate("update users set password='"+newpassword+"' where email='" +email+"'");
		
		response.sendRedirect("changepassword.jsp?msg=done");
	}
	
	if(r==0){
		
	
		response.sendRedirect("changepassword.jsp?msg=invalid");
		
	}
}
catch(Exception e){
	
	System.out.println(e);
	
		
	}



%>s