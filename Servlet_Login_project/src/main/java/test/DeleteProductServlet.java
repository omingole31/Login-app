package test;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/deleteProductServlet")
public class DeleteProductServlet extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		String pcode=req.getParameter("pcode");
		int k = new DeleteDAO().delete(pcode);
		if(k>0)
		{
			req.setAttribute("msg", "Product Deleted Successfully");
			req.getRequestDispatcher("DeleteJSP.jsp").forward(req, res);
		}
		else
		{
			req.setAttribute("msg", "Product not found");
			req.getRequestDispatcher("NotDeleteJSP.jsp").forward(req, res);
		}
	}
}
