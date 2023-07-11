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
import org.jsp.shoppingEcartApp.dto.User;
@WebServlet("/editproduct")
public class EditProductServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("nm");
		String brand = req.getParameter("br");
		String description = req.getParameter("desc");
		String category = req.getParameter("cat");
		String image = req.getParameter("im");
		double price = Double.parseDouble(req.getParameter("price"));
		Product p = new Product();
		p.setId(id);
		p.setName(name);
		p.setBrand(brand);
		p.setDescription(description);
		p.setCategory(category);
		p.setImage(image);
		p.setPrice(price);
		ProductDao dao = new ProductDao();
		User u = (User) req.getSession().getAttribute("user");
		p = dao.updateProduct(p, u.getId());
		req.setAttribute("msg", "Update product successfully...!!!");
		RequestDispatcher dispatcher = req.getRequestDispatcher("home.jsp");
		dispatcher.forward(req, resp);
	}
}
