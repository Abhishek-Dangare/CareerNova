package com.careernova.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.careernova.bean.ReportBean;
import com.careernova.dao.ReportDAO;

@WebServlet("/Report")
public class ReportServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ReportDAO dao = new ReportDAO();

        ReportBean report = dao.getReport();

        request.setAttribute("report", report);

        request.getRequestDispatcher("Reports.jsp").forward(request, response);
    }
}