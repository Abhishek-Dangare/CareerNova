package com.careernova.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.careernova.bean.CompanyBean;
import com.careernova.bean.CompanyReportBean;
import com.careernova.bean.UserAccountBean;
import com.careernova.dao.CompanyDAO;
import com.careernova.dao.CompanyReportDAO;

@WebServlet("/companyReports")
public class CompanyReportsServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        if (session == null) {
            response.sendRedirect("Login.html");
            return;
        }

        UserAccountBean user = (UserAccountBean) session.getAttribute("user");

        if (user == null) {
            response.sendRedirect("Login.html");
            return;
        }

        try {

            // Get Company Details
            CompanyDAO companyDAO = new CompanyDAO();
            CompanyBean company = companyDAO.getCompanyByUserId(user.getUserId());

            if (company == null) {

                response.sendRedirect("CompanyHome.jsp");
                return;

            }

            int companyId = company.getCompanyId();

            // Get Report
            CompanyReportDAO reportDAO = new CompanyReportDAO();

            CompanyReportBean report = reportDAO.getCompanyReport(companyId);

            request.setAttribute("report", report);

            request.getRequestDispatcher("CompanyReports.jsp")
                   .forward(request, response);

        } catch (Exception e) {

            e.printStackTrace();

            response.sendRedirect("CompanyHome.jsp");

        }

    }

}