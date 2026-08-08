package com.careernova.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.careernova.connection.DBConnect;

public class ResetPasswordDAO {

    public boolean updatePassword(int userId, String password) {

        Connection con = null;
        PreparedStatement ps = null;

        boolean result = false;

        try {

            con = DBConnect.getConnection();

            String sql = "UPDATE USER_ACCOUNT "
                       + "SET USER_PASSWORD = ? "
                       + "WHERE USER_ID = ?";

            ps = con.prepareStatement(sql);

            ps.setString(1, password);
            ps.setInt(2, userId);

            int rows = ps.executeUpdate();

            if (rows > 0) {
                result = true;
            }

        } catch (Exception e) {

            e.printStackTrace();

        } finally {

            try {

                if (ps != null)
                    ps.close();

                if (con != null)
                    con.close();

            } catch (Exception e) {

                e.printStackTrace();
            }
        }

        return result;
    }
}