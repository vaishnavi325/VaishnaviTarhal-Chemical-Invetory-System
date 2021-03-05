<html>
<head>
<style>
body {
  background-image: url('chem.jpg');
}
</style>
</head>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String email=request.getParameter("email");
String password=request.getParameter("password");
if(email=="admin@gmail.com" && password=="admin")
{
	System.out.println("Admin logged in");
}

 %>
 <body>
<center><font size="8" color="white">
 <a href="addchemform.jsp">Add Chemicals</a><br><br>
  <a href="deletechem.jsp">Delete Chemicals</a><br><br>
   
    <a href="viewChemical.jsp">View Chemicals</a><br></font></center></body>
    </html>