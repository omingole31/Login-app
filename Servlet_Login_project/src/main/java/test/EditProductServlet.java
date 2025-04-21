package test;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/EditProductServlet")
public class EditProductServlet extends HttpServlet
{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String pcode=req.getParameter("pcode");
		ProductBean pb = new editDAO().edit(pcode);
		if(pb!=null)
		{
			req.setAttribute("bean", pb);
			req.getRequestDispatcher("editProductJSP.jsp").forward(req, resp);
		}
		else
		{
			System.out.println("No Product found for this code");
			req.setAttribute("msg", "Product not found");
			req.getRequestDispatcher("InvalidMsgjsp.jsp").forward(req, resp);
		}
	}

}
//String pcode = req.getParameter("pcode");
//double price = Double.parseDouble(req.getParameter("price"));
//int stock = Integer.parseInt(req.getParameter("stock"));
//
//ServletContext sct = req.getServletContext();	
//
//ArrayList<ProductBean> list = (ArrayList<ProductBean>) sct.getAttribute("list");
//
//Iterator<ProductBean> itr = list.iterator();
//
//while(itr.hasNext())
//{
//	ProductBean pb = itr.next();
//	
//	if(pcode.equals(pb.getPcode()))
//	{
//		pb.setPprice(price);
//		pb.setPstock(stock);
//		
//		int k = new editDAO().update(pb);
//		
//		if(k>0)
//		{
//			req.setAttribute("msg", "Details updated successfully..");
//			req.getRequestDispatcher("confirm.jsp").forward(req, resp);
//		}
//	}
//}
