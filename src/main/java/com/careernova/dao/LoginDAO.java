package com.careernova.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.careernova.bean.UserAccountBean;
import com.careernova.connection.DBConnect;

public class LoginDAO {

	public UserAccountBean login(String email, String password) {

		UserAccountBean ub = null;

		try {

			Connection con = DBConnect.getCon();

			PreparedStatement ps = con.prepareStatement(
					"SELECT * FROM USER_ACCOUNT WHERE EMAIL=? AND USER_PASSWORD=? AND STATUS='ACTIVE'");

			ps.setString(1, email);
			ps.setString(2, password);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {

				ub = new UserAccountBean();

				ub.setUserId(rs.getInt("USER_ID"));
				ub.setRoleId(rs.getInt("ROLE_ID"));
				ub.setEmail(rs.getString("EMAIL"));
				ub.setUserPassword(rs.getString("USER_PASSWORD"));
				ub.setStatus(rs.getString("STATUS"));
				ub.setCreatedDate(rs.getDate("CREATED_DATE"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return ub;
	}
}