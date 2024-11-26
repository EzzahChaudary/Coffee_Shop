
package com.coffeeshop.controller;


import com.coffeeshop.model.UserDAO;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/signin")
public class SigninServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        UserDAO userDAO = new UserDAO();

        if (userDAO.validateUser(email, password)) {
            // User is valid - create a session and redirect
            HttpSession session = request.getSession();
            session.setAttribute("user", email);
            response.sendRedirect("homepage.jsp");
        } else {
            // Invalid user - send error to JSP
            request.setAttribute("error", "User not found! Please sign up.");
            request.getRequestDispatcher("signin.jsp").forward(request, response);
        }
    }
}
