package test;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ProductBill")
public class ProductBillServlet extends HttpServlet 
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		String code=req.getParameter("pcode");
		Integer stock = Integer.parseInt(req.getParameter("stock"));
		Double finalAmount=Double.parseDouble(req.getParameter("finalAmount"));
		//PrintWriter out=res.getWriter();
		req.setAttribute("Code", code);
		req.setAttribute("stock", stock);
		req.setAttribute("finalAmount", finalAmount);
		req.getRequestDispatcher("PaymentCompletedJSP.jsp").forward(req, res);
	}
}
