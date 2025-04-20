package test;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class BuyProductDAO 
{
	int k=0;
	public int buy(String pcode,int pstock)
	{
		
		try
		{
			Connection con = DBConnection.getcon();
			PreparedStatement ps = con.prepareStatement("update product99 set pstock=pstock-? where pcode=?");
			ps.setInt(1, pstock);
			ps.setString(2, pcode);
			k = ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return k;
	}
}
