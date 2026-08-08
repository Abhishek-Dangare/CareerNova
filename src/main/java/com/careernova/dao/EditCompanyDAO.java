package com.careernova.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.careernova.bean.CompanyBean;
import com.careernova.connection.DBConnect;

public class EditCompanyDAO {

    public CompanyBean getCompanyById(int companyId) {

        CompanyBean cb = null;

        try {

            Connection con = DBConnect.getCon();

            PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM COMPANY WHERE COMPANY_ID=?");

            ps.setInt(1, companyId);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                cb = new CompanyBean();

                cb.setCompanyId(rs.getInt("COMPANY_ID"));
                cb.setUserId(rs.getInt("USER_ID"));
                cb.setCompanyName(rs.getString("COMPANY_NAME"));
                cb.setCompanyEmail(rs.getString("COMPANY_EMAIL"));
                cb.setCompanyPhone(rs.getString("COMPANY_PHONE"));
                cb.setWebsite(rs.getString("WEBSITE"));
                cb.setIndustry(rs.getString("INDUSTRY"));
                cb.setCompanySize(rs.getInt("COMPANY_SIZE"));
                cb.setAddress(rs.getString("ADDRESS"));
                cb.setCity(rs.getString("CITY"));
                cb.setState(rs.getString("STATE"));
                cb.setPincode(rs.getString("PINCODE"));
                cb.setDescription(rs.getString("DESCRIPTION"));
                cb.setLogo(rs.getString("LOGO"));
                cb.setStatus(rs.getString("STATUS"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return cb;
    }

}