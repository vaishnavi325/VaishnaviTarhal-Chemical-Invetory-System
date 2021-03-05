<%@page import="com.database.connection.DBConnection"%>
<jsp:useBean id="p" class="com.java.bean.Product"></jsp:useBean>
<jsp:setProperty property="*" name="p"/>

<%
int i=DBConnection.update(p);
response.sendRedirect("viewChemical.jsp");
%>