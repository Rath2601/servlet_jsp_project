package com.rath.system.controller;

import java.io.IOException;

import com.mysql.cj.util.StringUtils;
import com.rath.system.dao.LoginDao;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	private LoginDao loginDao = new LoginDao();

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userOrEmail = request.getParameter("userOrEmail");
		String password = request.getParameter("password");

		boolean isValidUser = false;

		if (!StringUtils.isEmptyOrWhitespaceOnly(userOrEmail)) {
				isValidUser = authenticateUser(userOrEmail, password);
		}

		if (isValidUser) {
			HttpSession session = request.getSession();
			session.setAttribute("username", userOrEmail);
			response.sendRedirect("dashboard.jsp");
		} else {
			request.setAttribute("errorMessage", "Invalid username/email or password.");
			RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}
	}

	private boolean authenticateUser(String userOrEmail, String password) {
		return loginDao.checkUser(userOrEmail, password);
	}
}
