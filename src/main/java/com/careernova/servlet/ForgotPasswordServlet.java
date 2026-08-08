package com.careernova.servlet;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.careernova.dao.ForgotPasswordDAO;

@WebServlet("/ForgotPassword")
public class ForgotPasswordServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
                           HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");

        ForgotPasswordDAO dao = new ForgotPasswordDAO();

        int userId = dao.getUserIdByEmail(email);

        if (userId > 0) {

            // Generate 6 digit OTP
            Random random = new Random();

            int otp = 100000 + random.nextInt(900000);

            HttpSession session = request.getSession();

            session.setAttribute("resetEmail", email);
            session.setAttribute("resetUserId", userId);
            session.setAttribute("resetOTP",
                    String.valueOf(otp));

            // For testing
            System.out.println("================================");
            System.out.println("CareerNova Password Reset");
            System.out.println("Email : " + email);
            System.out.println("OTP   : " + otp);
            System.out.println("================================");

            response.sendRedirect("VerifyOTP.jsp");

        } else {

            request.setAttribute(
                    "message",
                    "Email address is not registered!"
            );

            request.getRequestDispatcher(
                    "ForgotPassword.jsp"
            ).forward(request, response);
        }
    }
}