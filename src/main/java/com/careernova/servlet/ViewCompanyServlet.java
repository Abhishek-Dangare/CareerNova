package com.careernova.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.careernova.bean.CompanyBean;
import com.careernova.dao.ViewCompanyDAO;

@WebServlet("/ViewCompany")
public class ViewCompanyServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ViewCompanyDAO dao = new ViewCompanyDAO();

		ArrayList<CompanyBean> list = dao.getAllCompanies();

		request.setAttribute("companyList", list);

		request.getRequestDispatcher("ViewCompany.jsp").forward(request, response);

	}
}