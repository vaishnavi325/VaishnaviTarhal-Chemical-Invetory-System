<%@page import="com.database.connection.DBConnection"%>
<jsp:useBean id="p" class="com.java.bean.Product"></jsp:useBean>
<jsp:setProperty property="*" name="p"/>

<%
int i=DBConnection.save(p);
if(i>0){
response.sendRedirect("addchem-success.jsp");
}else{
response.sendRedirect("addchem-error.jsp");
}
%>>