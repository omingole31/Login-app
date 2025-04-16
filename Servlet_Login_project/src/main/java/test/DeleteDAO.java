package test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DeleteDAO 
{
	int k=0;
	public int delete(String pcode)
	{
		
		try 
		{
			Connection con=DBConnection.getcon();
			PreparedStatement ps = con.prepareStatement("delete from product99 where pcode=?");
			ps.setString(1, pcode);
			 k = ps.executeUpdate();
		} 
		catch (SQLException e)
		{
			
			e.printStackTrace();
		}
		return k;
	}
}
