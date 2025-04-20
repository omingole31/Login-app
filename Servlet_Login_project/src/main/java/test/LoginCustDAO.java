package test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginCustDAO
{
	public CustomerBean search(String cuname,String cpass)
	{
		CustomerBean cb=null;
		Connection con = DBConnection.getcon();
		try 
		{
			PreparedStatement ps = con.prepareStatement("select * from cust99 where cuname=? and cpass=?");
			ps.setString(1, cuname);
			ps.setString(2, cpass);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				cb=new CustomerBean();
				cb.setCuname(rs.getString(1));
				cb.setCpass(rs.getString(2));
				cb.setCfname(rs.getString(3));
				cb.setClname(rs.getString(4));
				cb.setCmail(rs.getString(5));
				cb.setCphno(rs.getLong(6));
				
			}
		} 
		catch (SQLException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cb;
	}
}
