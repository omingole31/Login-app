package test;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/buyPro")
public class BuyFinalProductServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		int pstock=Integer.parseInt(req.getParameter("pstock"));
		String pcode=req.getParameter("pcode");
	
		int k = new BuyProductDAO().buy(pcode, pstock);
	//	System.out.println(k);
		if(k>0)
		{
			req.setAttribute("msg", "Product Successfully purchased!!!");
			req.getRequestDispatcher("BuyFinalProductJSP.jsp").forward(req, res);
		}
	}
}
