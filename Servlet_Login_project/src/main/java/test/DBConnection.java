package test;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection 
{
	public static Connection con=null;
	static
	{
		try
		{
			Class.forName(DbInfo.driver);
			 con = DriverManager.getConnection(DbInfo.url,DbInfo.username,DbInfo.password);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public static Connection getcon()
	{
		return con;
	}
}
