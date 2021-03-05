<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<center><h1>PRODUCTS</h1></center>
	<table cellspacing="0" rules="all" border="1"
		id="MainContent_gvProducts"
		style="width: 800px; border-collapse: collapse;">
		<tr class="style51"
			style="background-color: Gainsboro; font-weight: normal; height: 30px;">
			<th scope="col">Cas No</th>
			<th scope="col">Chemical name</th>
			<th scope="col">GST %</th>
			<th scope="col">Pack Size(gm)</th>
			<th scope="col">Rs/Pack</th>
			
		</tr>
		<tr style="color: #333333; background-color: White;">
			<td><a href='alanine_sp.html'
				style="color: Black;" class="underLine" target="_blank"> 56417</a>
			</td>
			<td><span id="MainContent_gvProducts_lblHSN_0">Alanine</span></td>
			<td><span id="MainContent_gvProducts_lblGST_0">18</span></td>
			<td><span id="MainContent_gvProducts_lblCas_0">100</span>
			</td>
			<td><span id="MainContent_gvProducts_lblChemicalName_0">660
					</span></td>
		
		</tr>
		<tr style="color: #333333; background-color: LavenderBlush;">
			<td><a href='asparic_acid.html'
				style="color: Black;" class="underLine" target="_blank"> 56848</a>
			</td>
			<td><span id="MainContent_gvProducts_lblHSN_1">Aspartic acid</span></td>
			<td><span id="MainContent_gvProducts_lblGST_1">18</span></td>
			<td><span id="MainContent_gvProducts_lblCas_1">25</span>
			</td>
			<td><span id="MainContent_gvProducts_lblChemicalName_1">115</span></td>
			
		</tr>
		<tr style="color: #333333; background-color: White;">
			<td><a href='acetamide.html'
				style="color: Black;" class="underLine" target="_blank"> 60355</a>
			</td>
			<td><span id="MainContent_gvProducts_lblHSN_2">Acetamide</span></td>
			<td><span id="MainContent_gvProducts_lblGST_2">18</span></td>
			<td><span id="MainContent_gvProducts_lblCas_2">100</span></td>
			<td><span id="MainContent_gvProducts_lblChemicalName_2">200</span>
			</td>
			
		</tr>
		<tr style="color: #333333; background-color: LavenderBlush;">
			<td><a href='adenine.html'
				style="color: Black;" class="underLine" target="_blank"> 73245</a>
			</td>
			<td><span id="MainContent_gvProducts_lblHSN_3">Adenine</span></td>
			<td><span id="MainContent_gvProducts_lblGST_3">18</span></td>
			<td><span id="MainContent_gvProducts_lblCas_3">5</span></td>
			<td><span id="MainContent_gvProducts_lblChemicalName_3">230</span>
			</td>
			
		</tr>
		<tr style="color: #333333; background-color: White;">
			<td><a href='carbon_disulphide.html'
				style="color: Black;" class="underLine" target="_blank"> 75150</a>
			</td>
			<td><span id="MainContent_gvProducts_lblHSN_4">carbon disulphide</span></td>
			<td><span id="MainContent_gvProducts_lblGST_4">18</span></td>
			<td><span id="MainContent_gvProducts_lblCas_4">500</span>
			</td>
			<td><span id="MainContent_gvProducts_lblChemicalName_4">750</span></td>
			
		</tr>
		<tr style="color: #333333; background-color: LavenderBlush;">
			<td><a href='adepic.html'
				style="color: Black;" class="underLine" target="_blank"> 124049</a>
			</td>
			<td><span id="MainContent_gvProducts_lblHSN_5">Adipic acid</span></td>
			<td><span id="MainContent_gvProducts_lblGST_5">18</span></td>
			<td><span id="MainContent_gvProducts_lblCas_5">500</span>
			</td>
			<td><span id="MainContent_gvProducts_lblChemicalName_5">440</span></td>
			
		</tr>
		<tr style="color: #333333; background-color: White;">
			<td><a href='calciumhydro.html'
				style="color: Black;" class="underLine" target="_blank"> 1305620</a>
			</td>
			<td><span id="MainContent_gvProducts_lblHSN_6">calcium hydroxide</span></td>
			<td><span id="MainContent_gvProducts_lblGST_6">18</span></td>
			<td><span id="MainContent_gvProducts_lblCas_6">500</span>
			</td>
			<td><span id="MainContent_gvProducts_lblChemicalName_6">250</span></td>
			
		</tr>
		
	</table>

</body>
</html>  
<%-- 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <html>
<head><style>
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
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.database.connection.DBConnection,com.java.bean.Product,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<center><font color="black"><h1>Chemicals List</h1></font></center>

<%
List<Product> list=DBConnection.getAllRecords();
request.setAttribute("list",list);
%>

<table border="1" width="100%">
<tr><th>CAS_NO</th><th>Chemical Name</th>
<th>GST(%)</th><th>Pack Size(gm)</th><th>Rs/Pack</th><th>Add Quantity</th><th>Add to cart</th></tr>
<c:forEach items="${list}" var="p">
<tr>
<td>${p.getCas_no()}</td>
<td>${p.getChem_name()}</td>
<td>${p.getGst()}</td>
<td>${p.getPack_size()}</td>
<td>${p.getRs_per_pack()}</td>
<td><input type="text" name="quantity"/></td>
<td><a href="addtocart.jsp?cas_no=${p.getCas_no()}">Add to cart</a>
</td>
</tr>
</c:forEach>
</table>
<center><a href="index.html"><font size="8">Log Out</font></a></center>
</body>
</html>  --%>


