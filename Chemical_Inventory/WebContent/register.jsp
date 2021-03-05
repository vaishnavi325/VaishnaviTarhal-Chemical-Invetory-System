<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<% 
String email=request.getParameter("email");

String salutation=request.getParameter("salutation");
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String password=request.getParameter("password");
String phone_no=request.getParameter("phone_no");
String job=request.getParameter("job");
String address=request.getParameter("address");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/chemicals", "root", "root");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into register(salutation,fname,lname,email,password,phone_no,job,address)values('"+salutation+"','"+fname+"','"+lname+"','"+email+"','"+password+"','"+phone_no+"','"+job+"','"+address+"')");
out.println("Thank you for register ! Please <a href='login.html'>Login</a> to continue.");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>