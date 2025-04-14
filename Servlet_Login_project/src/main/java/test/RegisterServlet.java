package test;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/register")

public class RegisterServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		AdminBean abean=new AdminBean();
		abean.setAdname(req.getParameter("adname"));
		abean.setAdmail(req.getParameter("admail"));
		abean.setAdphno(Long.parseLong(req.getParameter("adphno")));
		abean.setAdpass(req.getParameter("adpass"));
		resp.setContentType("text/html");
		AdminRegisterDAO addao=new AdminRegisterDAO();
		int k = addao.register(abean);
		if(k>0)
		{
			req.setAttribute("bean", "Registration Succcess");
			PrintWriter pw=resp.getWriter();
			pw.println("Registration Succcess....");
			req.getRequestDispatcher("admin.html").include(req, resp);
		}
		
	}
}
