package com.database.connection;


/*import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DBConnection {

	public static void main(String[] args) {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/edubridge","root","root");
		    Statement stmt = con.createStatement();
		    ResultSet rs = stmt.executeQuery("select * from user");
		    while(rs.next())
		    	System.out.println(rs.getInt(1)+" "+rs.getString(2)+" "+rs.getString(3));
		        con.close();
		}catch(Exception e) {
			e.printStackTrace();
		}

	}

}*/


import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.java.bean.Product;

public class DBConnection
{
public static Connection getConnection()
{
	Connection con=null;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Chemicals","root","root");
	}catch(Exception e)
	{
		System.out.println(e);
    }
	return con;
}
public static int save(Product p){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("insert into product(cas_no,chem_name,gst,pack_size,rs_per_pack) values(?,?,?,?,?)");
		ps.setInt(1, p.getCas_no());
		ps.setString(2, p.getChem_name());
		ps.setInt(3,p.getGst());
		ps.setInt(4, p.getPack_size());
		ps.setInt(5,p.getRs_per_pack());
		
		
		
		
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}


public static int update(Product p)
{
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("update Product set chem_name=?, gst=?,pack_size=?,rs_per_pack=? where cas_no=?");
		ps.setString(1, p.getChem_name());
		ps.setInt(2, p.getGst());
		ps.setInt(3,p.getPack_size());
		ps.setInt(4,p.getRs_per_pack());
		ps.setInt(5, p.getCas_no());
		
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}

public static int delete(Product p){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("delete from Product where cas_no=?");
		ps.setInt(1,p.getCas_no());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}

	return status;
}


public static List<Product> getAllRecords(){
	List<Product> list=new ArrayList<Product>();
	
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from Product");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			Product p=new Product();
			
			p.setCas_no(rs.getInt("cas_no"));
			p.setChem_name(rs.getString("chem_name"));
			p.setGst(rs.getInt("gst"));
			p.setPack_size(rs.getInt("pack_size"));
			p.setRs_per_pack(rs.getInt("rs_per_pack"));
			
			list.add(p);
		}
	}catch(Exception e){System.out.println(e);}
	return list;
}

public static Product getRecordById(int cas_no){
	Product p=null;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from Product where cas_no=?");
		ps.setInt(1,cas_no);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			p=new Product();
			
			
		p.setChem_name(rs.getString("chem_name"));
		p.setGst(rs.getInt("gst"));
		p.setPack_size(rs.getInt("pack_size"));
			p.setRs_per_pack(rs.getInt("rs_per_pack"));
			
		}
	}catch(Exception e){System.out.println(e);}
	return p;
}
}

