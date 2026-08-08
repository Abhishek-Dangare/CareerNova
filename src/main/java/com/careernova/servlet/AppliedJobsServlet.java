package com.careernova.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.careernova.bean.AppliedJobBean;
import com.careernova.bean.UserAccountBean;
import com.careernova.connection.DBConnect;
import com.careernova.dao.AppliedJobDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/appliedJobs")
public class AppliedJobsServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        try {

            HttpSession session = request.getSession(false);

            UserAccountBean user =
                    (UserAccountBean) session.getAttribute("user");

            Connection con = DBConnect.getCon();

            PreparedStatement ps = con.prepareStatement(
                    "SELECT CANDIDATE_ID FROM CANDIDATE WHERE USER_ID=?");

            ps.setInt(1, user.getUserId());

            ResultSet rs = ps.executeQuery();

            int candidateId = 0;

            if (rs.next()) {

                candidateId = rs.getInt("CANDIDATE_ID");

            }

            rs.close();
            ps.close();
           

            AppliedJobDAO dao = new AppliedJobDAO();

            List<AppliedJobBean> list =
                    dao.getAppliedJobs(candidateId);

            request.setAttribute("appliedList", list);

            request.getRequestDispatcher("AppliedJobs.jsp")
                    .forward(request, response);

        } catch (Exception e) {

            e.printStackTrace();

        }

    }

}