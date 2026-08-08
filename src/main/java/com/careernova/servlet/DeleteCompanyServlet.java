package com.careernova.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.careernova.dao.DeleteCompanyDAO;

@WebServlet("/DeleteCompany")
public class DeleteCompanyServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        int companyId =
                Integer.parseInt(request.getParameter("id"));

        DeleteCompanyDAO dao = new DeleteCompanyDAO();

        int k = dao.deleteCompany(companyId);

        if(k>0){

            request.getRequestDispatcher("DeleteCompanySuccess.jsp")
                   .forward(request,response);

        }else{

            response.getWriter().println("Delete Failed");

        }

    }

}