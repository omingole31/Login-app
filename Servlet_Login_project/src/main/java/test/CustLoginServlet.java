package test;

import java.io.IOException;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/customer")
public class CustLoginServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		String cuname=req.getParameter("cuname");
		String cpass=req.getParameter("cpass");
		CustomerBean cb = new LoginCustDAO().search(cuname, cpass);
		res.setContentType("text/html");
		HttpSession hp = req.getSession();
		if(cb!=null)
		{
			hp.setAttribute("bean", cb);
			req.getRequestDispatcher("CustLoginJSP.jsp").forward(req, res);
		}
		else
		{
			hp.setAttribute("msg", "Invalid Username and Password");
			req.getRequestDispatcher("InvalidUPJSP.jsp").forward(req, res);
		}
	}
}
