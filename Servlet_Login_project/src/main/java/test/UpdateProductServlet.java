package test;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/update")
public class UpdateProductServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		String pcode = req.getParameter("pcode");
		double price=Double.parseDouble(req.getParameter("pprice"));
		int stock=Integer.parseInt(req.getParameter("pstock"));
		res.setContentType("text/html");
		ProductBean pb=new ProductBean();
		pb.setPcode(pcode);
		pb.setPprice(price);
		pb.setPstock(stock);
		
		int k = new editDAO().update(pb);
		if(k>0)
		{
			req.setAttribute("upbean", "Product updated Successfully");
			req.getRequestDispatcher("UpdateJSP.jsp").forward(req, res);
		}
		else
		{
			req.setAttribute("upbean", "Invalid Process");
			req.getRequestDispatcher("NoUpdateJSP.jsp").forward(req, res);
		}
	}
}
