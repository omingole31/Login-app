package test;

import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/viewAllProducts")
public class viewAllProductsServlet extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		ArrayList<ProductBean> list = new viewAllProductsDAO().retrieve();
		if(list!=null)
		{
			req.setAttribute("bean", list);
			req.getRequestDispatcher("ViewAllProductsJSP.jsp").forward(req, res);
		}
	}
}
