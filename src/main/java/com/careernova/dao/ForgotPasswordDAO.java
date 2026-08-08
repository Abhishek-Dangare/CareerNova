package com.careernova.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.careernova.connection.DBConnect;

public class ForgotPasswordDAO {

    public int getUserIdByEmail(String email) {

        int userId = 0;

        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {

            con = DBConnect.getConnection();

            String sql = "SELECT USER_ID FROM USER_ACCOUNT WHERE EMAIL = ?";

            ps = con.prepareStatement(sql);

            ps.setString(1, email);

            rs = ps.executeQuery();

            if (rs.next()) {

                userId = rs.getInt("USER_ID");
            }

        } catch (Exception e) {

            e.printStackTrace();

        } finally {

            try {

                if (rs != null)
                    rs.close();

                if (ps != null)
                    ps.close();

                if (con != null)
                    con.close();

            } catch (Exception e) {

                e.printStackTrace();
            }
        }

        return userId;
    }
}