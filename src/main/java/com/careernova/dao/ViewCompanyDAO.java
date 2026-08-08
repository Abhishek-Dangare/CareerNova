package com.careernova.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.careernova.bean.CompanyBean;
import com.careernova.connection.DBConnect;

public class ViewCompanyDAO {

	public ArrayList<CompanyBean> getAllCompanies() {

		ArrayList<CompanyBean> list = new ArrayList<>();

		try {

			Connection con = DBConnect.getCon();

			PreparedStatement ps = con.prepareStatement(
					"SELECT * FROM COMPANY ORDER BY COMPANY_ID");

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				CompanyBean cb = new CompanyBean();

				cb.setCompanyId(rs.getInt("COMPANY_ID"));
				cb.setUserId(rs.getInt("USER_ID"));
				cb.setCompanyName(rs.getString("COMPANY_NAME"));
				cb.setCompanyEmail(rs.getString("COMPANY_EMAIL"));
				cb.setCompanyPhone(rs.getString("COMPANY_PHONE"));
				cb.setIndustry(rs.getString("INDUSTRY"));
				cb.setCity(rs.getString("CITY"));
				cb.setState(rs.getString("STATE"));
				cb.setStatus(rs.getString("STATUS"));

				list.add(cb);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
}