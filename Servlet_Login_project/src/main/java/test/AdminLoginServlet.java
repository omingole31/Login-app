package test;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/admin")
public class AdminLoginServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		String adname=req.getParameter("adname");
		String adpass=req.getParameter("adpass");
		AdminBean adbean = new AdminLoginDAO().login(adname, adpass);
		System.out.println(adbean);
		ServletContext ctx=req.getServletContext();
		
		if(adbean!=null)
		{
			ctx.setAttribute("bean", adbean);
			//req.setAttribute("bean", adbean);
			req.getRequestDispatcher("LoginSuccessJSP.jsp").forward(req, res);
		}
		else
		{
			req.setAttribute("bean", "Incorrect Username/Password");
			PrintWriter pw=res.getWriter();
			pw.println("Incorrect Username/Password");
			req.getRequestDispatcher("admin.html").include(req, res);
		}
	}
}
