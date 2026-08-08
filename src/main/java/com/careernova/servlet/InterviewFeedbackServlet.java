package com.careernova.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.careernova.bean.ApplicationBean;
import com.careernova.dao.InterviewFeedbackDAO;

@WebServlet("/interviewFeedback")
public class InterviewFeedbackServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        InterviewFeedbackDAO dao = new InterviewFeedbackDAO();

        ArrayList<ApplicationBean> list =
                dao.getInterviewCandidates();

        request.setAttribute("interviewList", list);

        RequestDispatcher rd =
                request.getRequestDispatcher("InterviewFeedback.jsp");

        rd.forward(request, response);
    }
}