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
import com.careernova.dao.PendingReviewDAO;

@WebServlet("/pendingReview")
public class PendingReviewServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PendingReviewDAO dao = new PendingReviewDAO();

        ArrayList<ApplicationBean> list = dao.getPendingApplications();

        request.setAttribute("applicationList", list);

        RequestDispatcher rd = request.getRequestDispatcher("PendingReview.jsp");
        rd.forward(request, response);
    }
}