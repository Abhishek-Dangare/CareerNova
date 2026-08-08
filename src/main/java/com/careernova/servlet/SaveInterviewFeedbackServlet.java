package com.careernova.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.careernova.dao.InterviewFeedbackDAO;

@WebServlet("/saveInterviewFeedback")
public class SaveInterviewFeedbackServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        try {

            int applicationId =
                    Integer.parseInt(
                            request.getParameter("applicationId"));

            int rating =
                    Integer.parseInt(
                            request.getParameter("rating"));

            String comments =
                    request.getParameter("comments");

            String result =
                    request.getParameter("result");

            InterviewFeedbackDAO dao =
                    new InterviewFeedbackDAO();

            int row = dao.saveFeedback(
                    applicationId,
                    rating,
                    comments,
                    result
            );

            if (row > 0) {

                response.sendRedirect("interviewFeedback");

            } else {

                response.getWriter().println(
                        "Feedback Save Failed"
                );
            }

        } catch (Exception e) {

            e.printStackTrace();

            response.getWriter().println(
                    "Error: " + e.getMessage()
            );
        }
    }
}