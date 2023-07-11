package org.jsp.shoppingEcartApp.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.jsp.shoppingEcartApp.dao.UserDao;
@SuppressWarnings("serial")
@WebServlet("/reset")
public class ResetPassServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		long phone = Long.parseLong(req.getParameter("ph"));
		String oldPassword = req.getParameter("op");
		String newPassword = req.getParameter("np");
		String rePassword = req.getParameter("rp");
		RequestDispatcher dispatcher = null;
		if (newPassword.equals(rePassword)) {
			UserDao dao = new UserDao();
			dao.resetPass(phone, oldPassword, newPassword);
			req.setAttribute("msg", "Password update successfull");
			dispatcher = req.getRequestDispatcher("login.jsp");
			dispatcher.forward(req, resp);
		} else {
			req.setAttribute("msg", "New and RePassword does not match");
			dispatcher = req.getRequestDispatcher("reset.jsp");
			dispatcher.include(req, resp);
		}

	}
}
