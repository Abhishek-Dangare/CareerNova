package com.careernova.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.careernova.bean.CompanyBean;
import com.careernova.connection.DBConnect;

public class AddCompanyDAO {

    public int addCompany(CompanyBean cb, String password) {

        int k = 0;

        try {

            Connection con = DBConnect.getCon();
            con.setAutoCommit(false);

            // Insert into USER_ACCOUNT
            PreparedStatement ps1 = con.prepareStatement(
                    "INSERT INTO USER_ACCOUNT VALUES(USER_SEQ.NEXTVAL,2,?,?,?,SYSDATE)");

            ps1.setString(1, cb.getCompanyEmail());
            ps1.setString(2, password);
            ps1.setString(3, "ACTIVE");

            int x = ps1.executeUpdate();

            // Insert into COMPANY
            PreparedStatement ps2 = con.prepareStatement(
            	    "INSERT INTO COMPANY " +
            	    "(COMPANY_ID, USER_ID, COMPANY_NAME, COMPANY_EMAIL, COMPANY_PHONE, WEBSITE, INDUSTRY, COMPANY_SIZE, ADDRESS, CITY, STATE, PINCODE, DESCRIPTION, LOGO, STATUS, CREATED_DATE) " +
            	    "VALUES (COMPANY_SEQ.NEXTVAL, USER_SEQ.CURRVAL, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, SYSDATE)");

            ps2.setString(1, cb.getCompanyName());
            ps2.setString(2, cb.getCompanyEmail());
            ps2.setString(3, cb.getCompanyPhone());
            ps2.setString(4, cb.getWebsite());
            ps2.setString(5, cb.getIndustry());
            ps2.setInt(6, cb.getCompanySize());
            ps2.setString(7, cb.getAddress());
            ps2.setString(8, cb.getCity());
            ps2.setString(9, cb.getState());
            ps2.setString(10, cb.getPincode());
            ps2.setString(11, cb.getDescription());
            ps2.setString(12, cb.getLogo());
            ps2.setString(13, "PENDING");

            int y = ps2.executeUpdate();

            if (x > 0 && y > 0) {
                con.commit();
                k = 1;
            } else {
                con.rollback();
            }

            ps1.close();
            ps2.close();
          

        } catch (Exception e) {
            e.printStackTrace();
        }

        return k;
    }
}