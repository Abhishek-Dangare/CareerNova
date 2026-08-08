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

@WebServlet("/UpdateMyCompany")
public class UpdateMyCompanyServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        UserAccountBean user =
                (UserAccountBean) session.getAttribute("user");

        if (user == null) {
            response.sendRedirect("Login.html");
            return;
        }

        CompanyBean cb = new CompanyBean();

        cb.setUserId(user.getUserId());
        cb.setCompanyName(request.getParameter("companyName"));
        cb.setCompanyEmail(request.getParameter("companyEmail"));
        cb.setCompanyPhone(request.getParameter("companyPhone"));
        cb.setWebsite(request.getParameter("website"));
        cb.setIndustry(request.getParameter("industry"));

        String size = request.getParameter("companySize");
        if (size != null && !size.isEmpty()) {
            cb.setCompanySize(Integer.parseInt(size));
        }

        cb.setAddress(request.getParameter("address"));
        cb.setCity(request.getParameter("city"));
        cb.setState(request.getParameter("state"));
        cb.setPincode(request.getParameter("pincode"));
        cb.setDescription(request.getParameter("description"));

        CompanyDAO dao = new CompanyDAO();

        boolean status = dao.updateCompany(cb);

        if (status) {

            response.sendRedirect("CompanyProfile");

        } else {

            response.getWriter().println("Company Profile Update Failed.");

        }

    }

}