package test;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class ProductDAO 
{
	public int k=0;
	public int insert(ProductBean pb)
	{
		try
		{
			Connection con = DBConnection.getcon();
			PreparedStatement ps = con.prepareStatement("insert into product99 values(?,?,?,?)");
			ps.setString(1, pb.getPcode());
			ps.setString(2, pb.getPname());
			ps.setDouble(3, pb.getPprice());
			ps.setInt(4, pb.getPstock());
			k = ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return k;
	}
}
