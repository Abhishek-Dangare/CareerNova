package com.careernova.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.careernova.bean.CompanyBean;
import com.careernova.bean.UserAccountBean;
import com.careernova.dao.CompanyDAO;

@WebServlet("/MyCompanyProfile")
public class MyCompanyProfileServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        if(session == null) {
            response.sendRedirect("Login.html");
            return;
        }

        UserAccountBean user =
                (UserAccountBean) session.getAttribute("user");

        if(user == null) {
            response.sendRedirect("Login.html");
            return;
        }

        CompanyDAO dao = new CompanyDAO();

        CompanyBean company = dao.getCompanyByUserId(user.getUserId());

        request.setAttribute("company", company);

        request.getRequestDispatcher("MyCompanyProfile.jsp")
               .forward(request, response);
    }

}