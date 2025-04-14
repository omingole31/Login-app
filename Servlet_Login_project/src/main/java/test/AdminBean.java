package test;

import java.io.Serializable;

public class AdminBean implements Serializable
{
	@Override
	public String toString() {
		return "AdminBean [adname=" + adname + ", admail=" + admail + ", adpass=" + adpass + ", adphno=" + adphno + "]";
	}
	private String adname,admail,adpass;
	private long adphno;
	public AdminBean()
	{
		
	}
	public String getAdname()
	{
		return adname;
	}
	public void setAdname(String adname) 
	{
		this.adname = adname;
	}
	public String getAdmail() 
	{
		return admail;
	}
	public void setAdmail(String admail) 
	{
		this.admail = admail;
	}
	public String getAdpass() {
		return adpass;
	}
	public void setAdpass(String adpass) {
		this.adpass = adpass;
	}
	public long getAdphno() {
		return adphno;
	}
	public void setAdphno(long adphno) {
		this.adphno = adphno;
	}
	
}
