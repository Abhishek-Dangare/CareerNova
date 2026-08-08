package com.careernova.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/giveInterviewFeedback")
public class GiveInterviewFeedbackServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String applicationId = request.getParameter("aid");

        request.setAttribute("applicationId", applicationId);

        RequestDispatcher rd =
                request.getRequestDispatcher("GiveInterviewFeedback.jsp");

        rd.forward(request, response);
    }
}