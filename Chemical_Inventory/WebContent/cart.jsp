<%@page import="com.java.bean.Product"%>
<%@page import="com.database.connection.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@page import="java.sql.*,java.util.*"%>
<%
String quantity=request.getParameter("quantity");

String cas_no=request.getParameter("cas_no");

Product p=DBConnection.getRecordById(Integer.parseInt(cas_no));
%>

<h1>Bill</h1>
<form action="bill.jsp" method="post">
<input type="hidden" name="cas_no" value="<%=p.getCas_no() %>"/>
<table>
<tr><td>Chemical Name:</td><td><input type="text" name="chem_name" value="<%=p.getChem_name()%>"/></td></tr>
<tr><td>Rs/Pack:</td><td><input type="text" name="rs_per_pack" value="<%=p.getRs_per_pack() %>>"/></td></tr>
<tr><td>Quantity:</td><td>quantity</td></tr>
<tr><td>Total:</td><td><%=p.getRs_per_pack() %>*quantity</td></tr>
</table></form></body></html>