package com.careernova.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.careernova.bean.CandidateBean;
import com.careernova.dao.CandidateDAO;

@WebServlet("/ViewCandidate")
public class ViewCandidateServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        CandidateDAO dao = new CandidateDAO();

        List<CandidateBean> list = dao.getAllCandidates();

        request.setAttribute("candidateList", list);

        request.getRequestDispatcher("ViewCandidates.jsp").forward(request, response);
    }
}