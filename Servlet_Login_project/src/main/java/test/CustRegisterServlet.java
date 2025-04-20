package test;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/custregister")

public class CustRegisterServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		CustomerBean cb=new CustomerBean();
		cb.setCuname(req.getParameter("cuname"));
		cb.setCpass(req.getParameter("cpass"));
		cb.setCfname(req.getParameter("cfname"));
		cb.setClname(req.getParameter("clname"));
		cb.setCmail(req.getParameter("cmail"));
		cb.setCphno(Long.parseLong(req.getParameter("cphno")));
		CustomerDAO dao=new CustomerDAO();
		int k = dao.insert(cb);
		if(k>0)
		{
			req.setAttribute("msg", "Customer Registered Successfully");
			req.getRequestDispatcher("RegisterJSP.jsp").forward(req, res);
		}
		else
		{
			req.setAttribute("msg", "Customer registeration failed!");
			req.getRequestDispatcher("FailedJSP.jsp").forward(req, res);
		}
		
	}
}
