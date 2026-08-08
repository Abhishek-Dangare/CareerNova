package com.careernova.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.careernova.bean.RegisterBean;
import com.careernova.connection.DBConnect;

public class RegisterDAO {

    public boolean register(RegisterBean rb) {

        boolean status = false;

        
        try {

            Connection con = DBConnect.getCon();

            PreparedStatement ps = con.prepareStatement(

                "INSERT INTO USER_ACCOUNT "
                + "(USER_ID,ROLE_ID,EMAIL,USER_PASSWORD,STATUS,CREATED_DATE) "
                + "VALUES(USER_SEQ.NEXTVAL,?,?,?,?,SYSDATE)"

            );

            // Candidate Role = 4
            ps.setInt(1, 4);

            ps.setString(2, rb.getEmail());

            ps.setString(3, rb.getUserPassword());

            ps.setString(4, "ACTIVE");

            int k = ps.executeUpdate();

            if(k > 0) {

                status = true;

            }

        } catch(Exception e) {

            e.printStackTrace();

        }

        return status;

    }

}