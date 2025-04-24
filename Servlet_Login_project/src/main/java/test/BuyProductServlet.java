package test;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/Buy")
public class BuyProductServlet extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		String pcode=req.getParameter("pcode");
//		int stock=Integer.parseInt(req.getParameter("pstock"));
//		
//		int k = new BuyProductDAO().buy(pcode, stock);
//		if(k>0)
//		{
//			req.setAttribute("msg", "Product Successfully purchased!!!");
//			req.getRequestDispatcher("BuyJSP.jsp").forward(req, res);
//		}
		HttpSession session = req.getSession();
		if(session==null ||session.getAttribute("bean")==null)
		{
			res.sendRedirect("CustLoginJSP.jsp");
			return;
		}
		ProductBean pb = new editDAO().edit(pcode);
		//System.out.println(pb);
		if(pb!=null)
		{
			session.setAttribute("pb", pb);
			req.setAttribute("pb", pb);
			req.getRequestDispatcher("BuyJSP.jsp").forward(req, res);
		}
		else
		{
			System.out.println("No Product found for this code");
			req.setAttribute("msg", "Product not found");
			req.getRequestDispatcher("InvalidMsgjsp.jsp").forward(req, res);
		}
	}
}
