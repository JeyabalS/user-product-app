package org.jsp.shoppingEcartApp.controller;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.jsp.shoppingEcartApp.dao.UserDao;
import org.jsp.shoppingEcartApp.dto.User;
@SuppressWarnings("serial")
@WebServlet("/reg")
public class RegisterServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		long phone = Long.parseLong(req.getParameter("phone"));
		String password = req.getParameter("pswd");
		String email = req.getParameter("email");
		String gender = req.getParameter("gender");
		String name = req.getParameter("name");
		int age = Integer.parseInt(req.getParameter("age"));
		User u = new User();
		u.setAge(age);
		u.setEmail(email);
		u.setGender(gender);
		u.setName(name);
		u.setPhone(phone);
		u.setPassword(password);
		UserDao dao = new UserDao();
		u = dao.saveUser(u);
		req.setAttribute("msg", "Register successful");
		RequestDispatcher dispatcher = req.getRequestDispatcher("login.jsp");
		dispatcher.forward(req, resp);
	}
}
