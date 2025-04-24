package test;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/buyPro")
public class BuyFinalProductServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		int pstock = Integer.parseInt(req.getParameter("pstock"));
		String pcode = req.getParameter("pcode");
		double price = Double.parseDouble(req.getParameter("pprice"));

		double finalAmout = pstock * price;

		ProductBean pb = new editDAO().edit(pcode);
//		if(pb==null)
//		{
//			req.setAttribute("msg", "Product Not Found");
//			req.getRequestDispatcher("BuyJSP.jsp").forward(req, res);
//			return;
//		}
		if (pb.getPstock() < pstock) {
			req.setAttribute("msg", "Stock not available!");
			req.getRequestDispatcher("BuyJSP.jsp");
		} else {
			int k = new BuyProductDAO().buy(pcode, pstock);

			if (k > 0) {
				req.setAttribute("finalAmount", finalAmout);
				req.setAttribute("ProductStock", pstock);
				req.setAttribute("Product", pb);
				req.setAttribute("msg", "Product Successfully purchased!!!");
				req.getRequestDispatcher("BuyFinalProductJSP.jsp").forward(req, res);
			}
			// }

		}
	}
}
