<%@page import="com.database.connection.DBConnection"%>
<jsp:useBean id="p" class="com.java.bean.Product"></jsp:useBean>
<jsp:setProperty property="*" name="p"/>

<%
DBConnection.delete(p);
response.sendRedirect("viewChemical.jsp");
%>