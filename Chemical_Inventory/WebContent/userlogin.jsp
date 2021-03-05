<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String email=request.getParameter("email");
String password=request.getParameter("password");
try{
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/chemicals","root","root");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from register where email='"+email+"' and password='"+password+"'");

rs.next();
if(rs.getString("email").equals(email)&&rs.getString("password").equals(password))
{
out.println("Welcome ");
response.sendRedirect("prod.jsp");
}
else{
out.println("Invalid password or username.");
}
}
catch (Exception e) {
e.printStackTrace();
}



%>