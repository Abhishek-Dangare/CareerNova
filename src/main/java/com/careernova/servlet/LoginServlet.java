package com.careernova.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.careernova.dao.CandidateDAO;

import com.careernova.bean.UserAccountBean;
import com.careernova.dao.LoginDAO;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        LoginDAO dao = new LoginDAO();
        UserAccountBean ub = dao.login(email, password);

        if (ub != null) {

            // Create Session
            HttpSession session = request.getSession(true);

            // Store Logged In User
            session.setAttribute("user", ub);
            CandidateDAO cdao = new CandidateDAO();

            int candidateId = cdao.getCandidateIdByUserId(ub.getUserId());

            session.setAttribute("candidateId", candidateId);
            

            if (ub.getRoleId() == 1) {
                response.sendRedirect("AdminHome.jsp");

            } else if (ub.getRoleId() == 2) {
                response.sendRedirect("CompanyHome.jsp");

            } else if (ub.getRoleId() == 3) {
                response.sendRedirect("HRHome.jsp");

            } else if (ub.getRoleId() == 4) {
                response.sendRedirect("CandidateHome.jsp");

            } else {
                response.sendRedirect("Login.html");
            }

        } else {

            response.sendRedirect("Login.html");

        }
    }
}