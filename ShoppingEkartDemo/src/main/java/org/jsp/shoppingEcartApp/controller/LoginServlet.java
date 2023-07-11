package org.jsp.shoppingEcartApp.controller;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.jsp.shoppingEcartApp.dao.UserDao;
import org.jsp.shoppingEcartApp.dto.User;
@SuppressWarnings("serial")
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		long phone = Long.parseLong(req.getParameter("ph"));
		String password = req.getParameter("ps");
		UserDao dao = new UserDao();
		User u = dao.verifyUser(phone, password);
		PrintWriter writer = resp.getWriter();
		RequestDispatcher dispacher = null;
		if (u != null) {
			HttpSession session = req.getSession();
			session.setAttribute("user", u);
			dispacher = req.getRequestDispatcher("home.jsp");
			dispacher.forward(req, resp);
		} else {
			writer.write("<html><body><h2>Invalid phone or password</h2></body></html>");
			dispacher = req.getRequestDispatcher("login.jsp");
			dispacher.include(req, resp);
		}
	}
}