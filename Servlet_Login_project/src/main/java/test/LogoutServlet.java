package test;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/logout")
public class LogoutServlet extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		PrintWriter pw = resp.getWriter();
		resp.setContentType("text/html");
		if(session==null)
		{
			pw.println("Session is null/expired");
			req.getRequestDispatcher("login.html").include(req, resp);
		}
		else
		{
			session.removeAttribute("msg");
			session.removeAttribute("bean");
			session.invalidate();
			req.getRequestDispatcher("Home.html").forward(req, resp);
		}
	}
}
