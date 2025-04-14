package test;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/product")

public class ProductServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		ProductBean pb=new ProductBean();
		pb.setPcode(req.getParameter("pcode"));
		pb.setPname(req.getParameter("pname"));
		pb.setPprice(Double.parseDouble(req.getParameter("pprice")));
		pb.setPstock(Integer.parseInt(req.getParameter("pstock")));
		res.setContentType("text/html");
		ProductDAO pdao=new ProductDAO();
		int k = pdao.insert(pb);

		
		
		if(k>0)
		{
			req.setAttribute("msg", "Product Successfully Added..");
			req.getRequestDispatcher("AddProductSuccessJSP.jsp").forward(req, res);
			
			
		}
		else
		{
			req.setAttribute("msg", "Product Not added...");
			req.getRequestDispatcher("AddProductSuccessJSP.jsp").forward(req, res);
			
			
		}
	}
}
