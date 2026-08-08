package com.careernova.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.careernova.bean.ExperienceBean;
import com.careernova.bean.UserAccountBean;
import com.careernova.dao.CandidateDAO;
import com.careernova.dao.ExperienceDAO;

@WebServlet("/experience")
public class ExperienceServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        try {

            HttpSession session = request.getSession(false);

            UserAccountBean ub =
                    (UserAccountBean) session.getAttribute("user");

            int userId = ub.getUserId();

            CandidateDAO cdao = new CandidateDAO();

            int candidateId = cdao.getCandidateId(userId);

            ExperienceBean eb = new ExperienceBean();

            eb.setCandidateId(candidateId);
            eb.setCompanyName(request.getParameter("companyName"));
            eb.setJobTitle(request.getParameter("jobTitle"));

            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

            eb.setStartDate(
                    sdf.parse(request.getParameter("startDate")));

            String endDate = request.getParameter("endDate");

            if (endDate != null && !endDate.isEmpty()) {
                eb.setEndDate(sdf.parse(endDate));
            }

            String exp = request.getParameter("experienceYears");

            if (exp != null && !exp.isEmpty()) {
                eb.setExperienceYears(Double.parseDouble(exp));
            }

            eb.setJobDescription(
                    request.getParameter("jobDescription"));

            ExperienceDAO dao = new ExperienceDAO();

            boolean status = dao.addExperience(eb);

            if (status) {

                response.sendRedirect("ExperienceSuccess.jsp");

            } else {

                response.sendRedirect("ExperienceFailed.jsp");

            }

        } catch (Exception e) {

            e.printStackTrace();

            response.sendRedirect("ExperienceFailed.jsp");
        }
    }
}