package com.careernova.servlet;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.careernova.bean.CandidateBean;
import com.careernova.bean.UserAccountBean;
import com.careernova.dao.CandidateDAO;

@WebServlet("/CompleteProfileServlet")
public class CompleteProfileServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        if (session == null || session.getAttribute("user") == null) {
            response.sendRedirect("Login.html");
            return;
        }

        UserAccountBean ub = (UserAccountBean) session.getAttribute("user");

        CandidateBean cb = new CandidateBean();

        cb.setUserId(ub.getUserId());
        cb.setFirstName(request.getParameter("firstName"));
        cb.setLastName(request.getParameter("lastName"));
        cb.setGender(request.getParameter("gender"));

        String dob = request.getParameter("dob");
        if (dob != null && !dob.trim().isEmpty()) {
            cb.setDob(Date.valueOf(dob));
        }

        cb.setEmail(request.getParameter("email"));
        cb.setMobileNo(request.getParameter("mobileNo"));
        cb.setAddress(request.getParameter("address"));
        cb.setCity(request.getParameter("city"));
        cb.setState(request.getParameter("state"));
        cb.setPincode(request.getParameter("pincode"));
        cb.setCurrentJobTitle(request.getParameter("currentJobTitle"));

        String exp = request.getParameter("experienceYears");
        if (exp != null && !exp.trim().isEmpty()) {
            cb.setExperienceYears(Integer.parseInt(exp));
        } else {
            cb.setExperienceYears(0);
        }

        cb.setProfileSummary(request.getParameter("profileSummary"));

        CandidateDAO dao = new CandidateDAO();

        boolean result = dao.saveCandidate(cb);

        if (result) {
            response.sendRedirect("CandidateHome.jsp");
        } else {
            response.sendRedirect("ProfileFailed.jsp");
        }
    }
}