package org.jsp.shoppingEcartApp.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsp.shoppingEcartApp.dao.UserDao;
import org.jsp.shoppingEcartApp.dto.User;

@SuppressWarnings("serial")
@WebServlet("/forget")
public class ForgetPassServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		long phone = Long.parseLong(req.getParameter("ph"));
		UserDao dao = new UserDao();
		User u = dao.forgetPass(phone);
		RequestDispatcher dispatcher = null;
		PrintWriter out = resp.getWriter();
		if (u != null) {
			out.write("<html><body><h2>Your Password is:"+u.getPassword()+"</h2></body></html>");
			dispatcher = req.getRequestDispatcher("forget.jsp");
			dispatcher.include(req, resp);
		} else {
			out.write("<html><body><h2>Invalid phone number</h2></body></html>");
			dispatcher = req.getRequestDispatcher("forget.jsp");
			dispatcher.include(req, resp);
		}
	}
}
