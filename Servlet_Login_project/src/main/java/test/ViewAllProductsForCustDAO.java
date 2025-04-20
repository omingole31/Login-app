package test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ViewAllProductsForCustDAO 
{
	 ProductBean pb=null;	
	ArrayList<ProductBean> list=new ArrayList<ProductBean>();
	public ArrayList<ProductBean> retrieve()
	{
		Connection con = DBConnection.getcon();
		try
		{
			PreparedStatement ps = con.prepareStatement("select * from Product99");
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				
				pb=new ProductBean();
				pb.setPcode(rs.getString(1));
				pb.setPname(rs.getString(2));
				pb.setPprice(rs.getDouble(3));
				pb.setPstock(rs.getInt(4));
				
				list.add(pb);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
		
	}
}
