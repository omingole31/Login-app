package test;

import java.io.IOException;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/customer")
public class LoginServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		String cuname=req.getParameter("cuname");
		String cpass=req.getParameter("cpass");
		CustomerBean cb = new LoginCustDAO().search(cuname, cpass);
		res.setContentType("text/html");
		ServletContext ctx=req.getServletContext();
		if(cb!=null)
		{
			ctx.setAttribute("bean", cb);
			req.getRequestDispatcher("CustLoginJSP.jsp").forward(req, res);
		}
		else
		{
			req.setAttribute("msg", "Invalid Username and Password");
			req.getRequestDispatcher("InvalidUPJSP.jsp").forward(req, res);
		}
	}
}
