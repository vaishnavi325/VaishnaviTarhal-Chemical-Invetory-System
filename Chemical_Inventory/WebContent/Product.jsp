<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body {
  background-image: url('background.jpg');
}

table
{
font-size: 20px;
color: white;
border-color: black;

}
td
{
text-align: center;
}
th
{
color: black;

}
button {
	box-sizing:border-box;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.database.connection.DBConnection,com.java.bean.Product,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<center><font color="black"><h1>Product List</h1></font></center>

<%
List<Product> list=DBConnection.getAllRecords();
request.setAttribute("list",list);
%>

<table border="1" width="100%">
<tr><th>CAS_NO</th><th>Chemical Name</th>
<th>GST(%)</th><th>Pack Size(gm)</th><th>Rs/Pack</th></tr>
<c:forEach items="${list}" var="p">
<tr>
<td>${p.getCas_no()}</td>
<td>${p.getChem_name()}</td>
<td>${p.getGst()}</td>
<td>${p.getPack_size()}</td>
<td>${p.getRs_per_pack()}</td></tr>

</c:forEach>
</table>


</body>
</html>