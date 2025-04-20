package test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CustomerDAO 
{
	public int k=0;
	public int insert(CustomerBean cb)
	{
		try 
		{
			Connection con = DBConnection.getcon();
			PreparedStatement ps = con.prepareStatement("insert into cust99 values(?,?,?,?,?,?)");
			ps.setString(1, cb.getCuname());
			ps.setString(2, cb.getCpass());
			ps.setString(3, cb.getCfname());
			ps.setString(4, cb.getClname());
			ps.setString(5, cb.getCmail());
			ps.setLong(6, cb.getCphno());
			 k = ps.executeUpdate();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		return k;
	}
}
