package com.careernova.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.careernova.bean.CompanyBean;
import com.careernova.bean.UserAccountBean;
import com.careernova.dao.CompanyDAO;

@WebServlet("/CompanyProfile")
public class CompanyProfileServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        UserAccountBean user =
                (UserAccountBean) session.getAttribute("user");

        CompanyDAO dao = new CompanyDAO();

        CompanyBean company =
                dao.getCompanyByUserId(user.getUserId());

        request.setAttribute("company", company);

        request.getRequestDispatcher("CompanyProfile.jsp")
               .forward(request, response);
    }
}