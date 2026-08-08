package com.careernova.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.careernova.bean.ApplicationBean;
import com.careernova.dao.ApplicationDAO;

@WebServlet("/ApplyJobServlet")
public class ApplyJobServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();

        int candidateId = (Integer) session.getAttribute("candidateId");

        int jobId = Integer.parseInt(request.getParameter("jobId"));

        ApplicationDAO dao = new ApplicationDAO();

        if (dao.isAlreadyApplied(candidateId, jobId)) {

            response.sendRedirect("AlreadyApplied.jsp");

        } else {

            ApplicationBean ab = new ApplicationBean();

            ab.setCandidateId(candidateId);
            ab.setJobId(jobId);
            ab.setStatus("APPLIED");

            boolean status = dao.applyJob(ab);

            if (status) {

                response.sendRedirect("ApplySuccess.jsp");

            } else {

                response.sendRedirect("ApplyFailed.jsp");

            }

        }

    }

}