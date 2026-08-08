package com.careernova.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.careernova.bean.CompanyBean;
import com.careernova.dao.UpdateCompanyDAO;

@WebServlet("/UpdateCompany")
public class UpdateCompanyServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        CompanyBean cb = new CompanyBean();

        cb.setCompanyId(Integer.parseInt(request.getParameter("companyId")));
        cb.setCompanyName(request.getParameter("companyName"));
        cb.setCompanyEmail(request.getParameter("companyEmail"));
        cb.setCompanyPhone(request.getParameter("companyPhone"));
        cb.setWebsite(request.getParameter("website"));
        cb.setIndustry(request.getParameter("industry"));
        cb.setCompanySize(Integer.parseInt(request.getParameter("companySize")));
        cb.setAddress(request.getParameter("address"));
        cb.setCity(request.getParameter("city"));
        cb.setState(request.getParameter("state"));
        cb.setPincode(request.getParameter("pincode"));
        cb.setDescription(request.getParameter("description"));
        cb.setStatus(request.getParameter("status"));

        UpdateCompanyDAO dao = new UpdateCompanyDAO();

        int k = dao.updateCompany(cb);

        if (k > 0) {

            request.getRequestDispatcher("UpdateCompanySuccess.jsp")
                   .forward(request, response);

        } else {

            response.getWriter().println("Update Failed");

        }

    }

}