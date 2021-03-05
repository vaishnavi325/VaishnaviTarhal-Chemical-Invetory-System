<%@page import="com.database.connection.DBConnection,com.java.bean.Product,com.java.bean.User,java.util.*"%>


<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html> --%>


<%@page import="java.sql.*"%>


<%
String cas_no=request.getParameter("cas_no");
%>

<%
int quantity=1;
int product_price=0;
int product_total=0;
int cart_total=0;
int z=0;
try
{
	Connection con=DBConnection.getConnection();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from product where cas_no='"+cas_no+"'");
	while(rs.next())
	{
		product_price=rs.getInt(5);
		product_total=rs.getInt(5);
	}
	
	
		PreparedStatement ps=con.prepareStatement("insert into cart(cas_no,qauntity,price,total)values(?,?,?,?)");
	
		ps.setString(1, cas_no);
		
		ps.setInt(2, quantity);
		ps.setInt(3, product_price);
		ps.setInt(4,product_total);
		ps.executeUpdate();
		response.sendRedirect("cart.html?msg=added");
	
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("cart.html?msg=invalid");
	
}
%>


