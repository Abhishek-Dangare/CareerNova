package com.careernova.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.careernova.bean.HRBean;
import com.careernova.dao.AddHRDAO;

@WebServlet("/AddHR")
public class AddHRServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        HRBean hb = new HRBean();

        hb.setCompanyId(Integer.parseInt(request.getParameter("companyId")));
        hb.setFirstName(request.getParameter("firstName"));
        hb.setLastName(request.getParameter("lastName"));
        hb.setGender(request.getParameter("gender").toUpperCase());
        hb.setEmail(request.getParameter("email"));
        hb.setMobileNo(request.getParameter("mobile"));
        hb.setDesignation(request.getParameter("designation"));
        hb.setAddress(request.getParameter("address"));
        hb.setStatus("ACTIVE");

        String password = request.getParameter("password");

        AddHRDAO dao = new AddHRDAO();

        int k = dao.addHR(hb, password);

        if (k > 0) {

            response.sendRedirect("AddHRSuccess.jsp");

        } else {

            response.sendRedirect("AddHR.html");

        }

    }

}