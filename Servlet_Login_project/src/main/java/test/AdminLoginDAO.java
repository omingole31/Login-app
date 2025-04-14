package test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminLoginDAO
{
	public AdminBean login(String adname,String adpass)
	{
		Connection con = DBConnection.getcon();
		AdminBean ab=null;
		try
		{
			PreparedStatement ps = con.prepareStatement("select * from Admin99 where adname=? AND adpass=?");
			ps.setString(1, adname);
			ps.setString(2, adpass);
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				ab=new AdminBean();
				ab.setAdname(rs.getString(1));
				ab.setAdmail(rs.getString(2));
				ab.setAdphno(rs.getLong(3));
				ab.setAdpass(rs.getString(4));
				
			}
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		return ab;
	}
	}

