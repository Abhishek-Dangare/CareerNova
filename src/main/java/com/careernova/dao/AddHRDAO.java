package com.careernova.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.careernova.bean.HRBean;
import com.careernova.connection.DBConnect;

public class AddHRDAO {

    public int addHR(HRBean hb, String password) {

        int k = 0;

        try {

            Connection con = DBConnect.getCon();
            con.setAutoCommit(false);

            // USER_ACCOUNT TABLE
            PreparedStatement ps1 = con.prepareStatement(

                    "INSERT INTO USER_ACCOUNT(USER_ID,ROLE_ID,EMAIL,USER_PASSWORD,STATUS,CREATED_DATE) "
                            + "VALUES(USER_SEQ.NEXTVAL,3,?,?,?,SYSDATE)");

            ps1.setString(1, hb.getEmail());
            ps1.setString(2, password);
            ps1.setString(3, "ACTIVE");

            int x = ps1.executeUpdate();

            // HR TABLE
            PreparedStatement ps2 = con.prepareStatement(

                    "INSERT INTO HR(HR_ID,USER_ID,COMPANY_ID,FIRST_NAME,LAST_NAME,GENDER,EMAIL,MOBILE_NO,DESIGNATION,ADDRESS,STATUS,CREATED_DATE) "
                            + "VALUES(HR_SEQ.NEXTVAL,USER_SEQ.CURRVAL,?,?,?,?,?,?,?,?,?,SYSDATE)");

            ps2.setInt(1, hb.getCompanyId());
            ps2.setString(2, hb.getFirstName());
            ps2.setString(3, hb.getLastName());
            ps2.setString(4, hb.getGender());
            ps2.setString(5, hb.getEmail());
            ps2.setString(6, hb.getMobileNo());
            ps2.setString(7, hb.getDesignation());
            ps2.setString(8, hb.getAddress());
            ps2.setString(9, "ACTIVE");

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