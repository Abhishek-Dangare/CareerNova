package com.careernova.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.careernova.bean.CompanyBean;
import com.careernova.dao.EditCompanyDAO;

@WebServlet("/EditCompany")
public class EditCompanyServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        int companyId =
                Integer.parseInt(request.getParameter("id"));

        EditCompanyDAO dao = new EditCompanyDAO();

        CompanyBean cb = dao.getCompanyById(companyId);

        request.setAttribute("company", cb);

        request.getRequestDispatcher("EditCompany.jsp")
                .forward(request, response);

    }

}