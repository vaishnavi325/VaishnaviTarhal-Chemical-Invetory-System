<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Form</title>
</head>
<body>

<%@page import="com.database.connection.DBConnection,com.java.bean.Product"%>

<%
String cas_no=request.getParameter("cas_no");

Product p=DBConnection.getRecordById(Integer.parseInt(cas_no));
%>

<h1>Edit Form</h1>
<form action="editchem.jsp" method="post">
<input type="hidden" name="cas_no" value="<%=p.getCas_no() %>"/>
<table>
<tr><td>Chemical Name:</td><td><input type="text" name="chem_name" value="<%=p.getChem_name()%>"/></td></tr>
<tr><td>GST:</td><td><input type="text" name="gst" value="<%=p.getGst()%>"/></td></tr>
<tr><td>Pack Size(gm):</td><td><input type="text" name="pack_size" value="<%=p.getPack_size()%>"/></td></tr>
<tr><td>Rs/Pack:</td><td><input type="text" name="rs_per_pack" value="<%=p.getRs_per_pack() %>>"/></td></tr>


<tr><td colspan="2"><input type="submit" value="Edit Chemical"/></td></tr>
</table>
</form>


</body>
</html>