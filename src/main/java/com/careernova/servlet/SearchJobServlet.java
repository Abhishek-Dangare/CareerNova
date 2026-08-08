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

@WebServlet("/searchJobs")
public class SearchJobServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public SearchJobServlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        JobDAO dao = new JobDAO();

        List<JobBean> jobs = dao.getAllJobs();

        request.setAttribute("jobList", jobs);

        request.getRequestDispatcher("SearchJobs.jsp")
               .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        doGet(request, response);
    }
}