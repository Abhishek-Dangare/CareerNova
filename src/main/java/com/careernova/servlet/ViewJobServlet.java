package com.careernova.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.careernova.bean.JobBean;
import com.careernova.dao.JobDAO;

@WebServlet("/ViewJob")
public class ViewJobServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        JobDAO dao = new JobDAO();

        List<JobBean> jobList = dao.getAllJobsAdmin();

        request.setAttribute("jobList", jobList);

        request.getRequestDispatcher("ViewJobs.jsp").forward(request, response);
    }
}