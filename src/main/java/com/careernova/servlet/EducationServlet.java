package com.careernova.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.careernova.bean.EducationBean;
import com.careernova.bean.UserAccountBean;
import com.careernova.dao.CandidateDAO;
import com.careernova.dao.EducationDAO;

@WebServlet("/education")
public class EducationServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        UserAccountBean ub =
                (UserAccountBean) session.getAttribute("user");

        int userId = ub.getUserId();

        CandidateDAO cdao = new CandidateDAO();

        int candidateId = cdao.getCandidateId(userId);

        // ===== DEBUG =====
        System.out.println("==================================");
        System.out.println("USER ID      = " + userId);
        System.out.println("CANDIDATE ID = " + candidateId);
        System.out.println("==================================");

        EducationBean eb = new EducationBean();

        eb.setCandidateId(candidateId);
        eb.setQualification(request.getParameter("qualification"));
        eb.setCollegeName(request.getParameter("collegeName"));
        eb.setUniversityName(request.getParameter("universityName"));
        eb.setPassingYear(Integer.parseInt(request.getParameter("passingYear")));

        String per = request.getParameter("percentage");
        if (per != null && !per.isEmpty()) {
            eb.setPercentage(Double.parseDouble(per));
        }

        String cgpa = request.getParameter("cgpa");
        if (cgpa != null && !cgpa.isEmpty()) {
            eb.setCgpa(Double.parseDouble(cgpa));
        }

        EducationDAO dao = new EducationDAO();

        boolean status = dao.addEducation(eb);

        if (status) {

            response.sendRedirect("EducationSuccess.jsp");

        } else {

            response.sendRedirect("EducationFailed.jsp");

        }

    }

}