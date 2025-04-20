package test;

import java.io.Serializable;

public class CustomerBean implements Serializable
{
	private String cuname,cpass,cfname,clname,cmail;
	private long cphno;
	public CustomerBean()
	{
		
	}
	public String getCuname() {
		return cuname;
	}
	public void setCuname(String cuname) {
		this.cuname = cuname;
	}
	public String getCpass() {
		return cpass;
	}
	public void setCpass(String cpass) {
		this.cpass = cpass;
	}
	public String getCfname() {
		return cfname;
	}
	public void setCfname(String cfname) {
		this.cfname = cfname;
	}
	public String getClname() {
		return clname;
	}
	public void setClname(String clname) {
		this.clname = clname;
	}
	public String getCmail() {
		return cmail;
	}
	public void setCmail(String cmail) {
		this.cmail = cmail;
	}
	public long getCphno() {
		return cphno;
	}
	public void setCphno(long cphno) {
		this.cphno = cphno;
	}
	
}
