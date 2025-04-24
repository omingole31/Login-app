package test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class editDAO 
{
	 ProductBean pb=null;
	public ProductBean edit(String pcode)
	{
		//System.out.println("DAo recieved pcode:"+pcode);
		try 
		{
			Connection con = DBConnection.getcon();
			PreparedStatement ps = con.prepareStatement("select * from product99 where pcode=?");
			ps.setString(1, pcode);
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				pb=new ProductBean();
				pb.setPcode(rs.getString(1));
				pb.setPname(rs.getString(2));
				pb.setPprice(rs.getDouble(3));
				pb.setPstock(rs.getInt(4));
			}
			
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		return pb;
	}
	 int k=0;
	public int update(ProductBean pb)
	{
		
		try 
		{
			Connection con=DBConnection.getcon();
			PreparedStatement ps=con.prepareStatement("update product99 set pprice=?, pstock=? where pcode=?");
			ps.setDouble(1,pb.getPprice());
			ps.setInt(2, pb.getPstock());
			ps.setString(3, pb.getPcode());
			k = ps.executeUpdate();
			
		} 
		catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return k;
	}
	
}
