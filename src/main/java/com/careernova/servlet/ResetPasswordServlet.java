package com.careernova.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.careernova.dao.ResetPasswordDAO;

@WebServlet("/ResetPassword")
public class ResetPasswordServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String password = request.getParameter("password");
        String confirmPassword =
                request.getParameter("confirmPassword");

        HttpSession session = request.getSession();

        Boolean verified =
                (Boolean) session.getAttribute("otpVerified");

        // Check OTP verification
        if (verified == null || !verified) {

            response.sendRedirect("ForgotPassword.jsp");
            return;
        }

        // Check password match
        if (!password.equals(confirmPassword)) {

            request.setAttribute(
                    "message",
                    "Passwords do not match!"
            );

            request.getRequestDispatcher(
                    "ResetPassword.jsp"
            ).forward(request, response);

            return;
        }

        // Get user ID from session
        Integer userId =
                (Integer) session.getAttribute("resetUserId");

        if (userId == null) {

            response.sendRedirect("ForgotPassword.jsp");
            return;
        }

        ResetPasswordDAO dao =
                new ResetPasswordDAO();

        boolean updated =
                dao.updatePassword(userId, password);

        if (updated) {

            // Clear reset session data
            session.removeAttribute("resetOTP");
            session.removeAttribute("resetEmail");
            session.removeAttribute("resetUserId");
            session.removeAttribute("otpVerified");

            // Password successfully changed
            response.sendRedirect("Login.html");

        } else {

            request.setAttribute(
                    "message",
                    "Password reset failed. Please try again."
            );

            request.getRequestDispatcher(
                    "ResetPassword.jsp"
            ).forward(request, response);
        }
    }
}