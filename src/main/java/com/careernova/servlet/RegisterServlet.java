package com.careernova.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.careernova.bean.RegisterBean;
import com.careernova.dao.RegisterDAO;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");

        // Password match check
        if (!password.equals(confirmPassword)) {

            response.sendRedirect("RegisterFailed.jsp");
            return;

        }

        RegisterBean rb = new RegisterBean();

        rb.setEmail(email);
        rb.setUserPassword(password);

        RegisterDAO dao = new RegisterDAO();

        boolean status = dao.register(rb);

        if (status) {

            response.sendRedirect("RegisterSuccess.jsp");

        } else {

            response.sendRedirect("RegisterFailed.jsp");

        }

    }

}