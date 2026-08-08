package com.careernova.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.careernova.bean.CompanyBean;
import com.careernova.dao.AddCompanyDAO;

@WebServlet("/addCompany")
public class AddCompanyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		CompanyBean cb = new CompanyBean();

		cb.setCompanyName(request.getParameter("companyName"));
		cb.setCompanyEmail(request.getParameter("companyEmail"));
		cb.setCompanyPhone(request.getParameter("phone"));
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

		// Logo abhi manually set kar rahe hain
		cb.setLogo("default.png");

		cb.setStatus(request.getParameter("status"));

		String password = request.getParameter("password");

		AddCompanyDAO dao = new AddCompanyDAO();

		int k = dao.addCompany(cb, password);

		if (k > 0) {

			response.sendRedirect("CompanySuccess.jsp");

		} else {

			response.sendRedirect("CompanyFailed.jsp");

		}
	}
}