package com.careernova.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.careernova.dao.ShortlistCandidateDAO;

@WebServlet("/shortlistCandidate")
public class ShortlistCandidateServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        int applicationId = Integer.parseInt(request.getParameter("aid"));

        System.out.println("Application ID Received = " + applicationId);

        ShortlistCandidateDAO dao = new ShortlistCandidateDAO();

        int result = dao.shortlistCandidate(applicationId);

        System.out.println("Update Result = " + result);

        if (result > 0) {
            response.sendRedirect("viewAssignedApplications");
        } else {
            response.getWriter().println("Candidate Shortlist Failed!");
        }
    }
}