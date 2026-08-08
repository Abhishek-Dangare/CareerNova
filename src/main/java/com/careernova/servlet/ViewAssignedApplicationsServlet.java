package com.careernova.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.careernova.bean.ApplicationBean;
import com.careernova.dao.ViewAssignedApplicationsDAO;

@WebServlet("/viewAssignedApplications")
public class ViewAssignedApplicationsServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("===== ViewAssignedApplicationsServlet Called =====");

        try {

            ViewAssignedApplicationsDAO dao = new ViewAssignedApplicationsDAO();

            ArrayList<ApplicationBean> list = dao.getAssignedApplications();

            if (list == null) {
                System.out.println("Application List is NULL");
                list = new ArrayList<ApplicationBean>();
            } else {
                System.out.println("Total Applications : " + list.size());
            }

            request.setAttribute("applicationList", list);

            request.getRequestDispatcher("AssignedApplications.jsp")
                    .forward(request, response);

        } catch (Exception e) {

            e.printStackTrace();

            request.setAttribute("errorMessage", e.getMessage());

            request.getRequestDispatcher("AssignedApplications.jsp")
                    .forward(request, response);
        }
    }
}