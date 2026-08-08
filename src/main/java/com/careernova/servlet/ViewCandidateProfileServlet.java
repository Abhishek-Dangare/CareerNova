package com.careernova.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.careernova.bean.CandidateBean;
import com.careernova.dao.ViewCandidateProfileDAO;

@WebServlet("/viewCandidateProfile")
public class ViewCandidateProfileServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public ViewCandidateProfileServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        try {

            int candidateId = Integer.parseInt(request.getParameter("cid"));

            ViewCandidateProfileDAO dao = new ViewCandidateProfileDAO();

            CandidateBean candidate = dao.getCandidateById(candidateId);

            if (candidate != null) {

                request.setAttribute("candidate", candidate);

                request.getRequestDispatcher("ViewCandidateProfile.jsp")
                        .forward(request, response);

            } else {

                request.setAttribute("msg", "Candidate Not Found");

                request.getRequestDispatcher("AssignedApplications.jsp")
                        .forward(request, response);
            }

        } catch (Exception e) {

            e.printStackTrace();

            response.getWriter().println("Error : " + e.getMessage());
        }
    }

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        doGet(request, response);
    }
}