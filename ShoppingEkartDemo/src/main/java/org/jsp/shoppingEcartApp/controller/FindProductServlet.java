package org.jsp.shoppingEcartApp.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsp.shoppingEcartApp.dao.ProductDao;
import org.jsp.shoppingEcartApp.dto.Product;

@SuppressWarnings("serial")
@WebServlet("/find")
public class FindProductServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("pid"));
		ProductDao dao = new ProductDao();
		Product p = dao.findProductById(id);
		if(p!=null) {
			req.setAttribute("product", p);
			RequestDispatcher dispatcher = req.getRequestDispatcher("editProduct.jsp");
			dispatcher.forward(req, resp);
		}
		else {
			resp.sendRedirect("login.jsp");
		}
	}
}
