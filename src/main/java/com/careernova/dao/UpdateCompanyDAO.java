package com.careernova.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.careernova.bean.CompanyBean;
import com.careernova.connection.DBConnect;

public class UpdateCompanyDAO {

    public int updateCompany(CompanyBean cb) {

        int k = 0;

        try {

            Connection con = DBConnect.getCon();

            PreparedStatement ps = con.prepareStatement(

                "UPDATE COMPANY SET COMPANY_NAME=?, COMPANY_EMAIL=?, COMPANY_PHONE=?, WEBSITE=?, INDUSTRY=?, COMPANY_SIZE=?, ADDRESS=?, CITY=?, STATE=?, PINCODE=?, DESCRIPTION=?, STATUS=? WHERE COMPANY_ID=?"

            );

            ps.setString(1, cb.getCompanyName());
            ps.setString(2, cb.getCompanyEmail());
            ps.setString(3, cb.getCompanyPhone());
            ps.setString(4, cb.getWebsite());
            ps.setString(5, cb.getIndustry());
            ps.setInt(6, cb.getCompanySize());
            ps.setString(7, cb.getAddress());
            ps.setString(8, cb.getCity());
            ps.setString(9, cb.getState());
            ps.setString(10, cb.getPincode());
            ps.setString(11, cb.getDescription());
            ps.setString(12, cb.getStatus());
            ps.setInt(13, cb.getCompanyId());

            k = ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return k;
    }

}