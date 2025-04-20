package test;

import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/ViewAll")
public class ViewAllProductsForCust extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		ArrayList<ProductBean> list = new ViewAllProductsForCustDAO().retrieve();
		ServletContext sct = req.getServletContext();
		
		if(list!=null)
		{
			sct.setAttribute("list", list);
			req.getRequestDispatcher("ViewAllProductsForCustJSP.jsp").forward(req, res);
		}
	}
}
