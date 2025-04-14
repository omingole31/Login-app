package test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminRegisterDAO 
{
	public int k=0;
	public int register(AdminBean ab)
	{
		Connection con = DBConnection.getcon();
		try
		{
			PreparedStatement ps = con.prepareStatement("insert into Admin99 values(?,?,?,?)");
			ps.setString(1, ab.getAdname());
			ps.setString(2, ab.getAdmail());
			ps.setLong(3, ab.getAdphno());
			ps.setString(4, ab.getAdpass());
			k = ps.executeUpdate();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		return k;
		
	}
}
