package com.careernova.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/VerifyOTP")
public class VerifyOTPServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String enteredOTP = request.getParameter("otp");

        HttpSession session = request.getSession();

        String sessionOTP =
                (String) session.getAttribute("resetOTP");

        if (sessionOTP == null) {

            request.setAttribute(
                "message",
                "OTP expired. Please request a new OTP."
            );

            request.getRequestDispatcher(
                "ForgotPassword.jsp"
            ).forward(request, response);

            return;
        }

        if (sessionOTP.equals(enteredOTP)) {

            // OTP verified successfully
            session.setAttribute("otpVerified", true);

            response.sendRedirect("ResetPassword.jsp");

        } else {

            request.setAttribute(
                "message",
                "Invalid OTP. Please enter the correct OTP."
            );

            request.getRequestDispatcher(
                "VerifyOTP.jsp"
            ).forward(request, response);
        }
    }
}