<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*"%>

<%
String id = request.getParameter("id");
String email = request.getParameter("email");
String status = "Cancel";

try{
	System.out.println("1");
	String sql = "UPDATE cart SET status = ? WHERE product_id = ? AND email = ? AND address IS NOT NULL";
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement(sql); 

	    // Set parameters for the prepared statement
	    ps.setString(1, status);
	    ps.setString(2, id);
	    ps.setString(3, email);
	    System.out.println("2");
	    // Execute the update statement
	   ps.executeUpdate();
	   System.out.println("3");
	   
	    response.sendRedirect("ordersReceived.jsp?msg =cancel");
}
catch(Exception e){
System.out.println(e);
response.sendRedirect("ordersReceived.jsp?msg=wrong");
}

%>