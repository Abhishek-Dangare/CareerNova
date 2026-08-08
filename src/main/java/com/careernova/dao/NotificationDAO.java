package com.careernova.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.careernova.bean.NotificationBean;
import com.careernova.connection.DBConnect;

public class NotificationDAO {

    public ArrayList<NotificationBean> getNotifications(int userId) {

        ArrayList<NotificationBean> list = new ArrayList<>();

        try {

            Connection con = DBConnect.getCon();

            String sql = "SELECT * FROM NOTIFICATION WHERE USER_ID=? ORDER BY CREATED_DATE DESC";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, userId);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                NotificationBean nb = new NotificationBean();

                nb.setNotificationId(rs.getInt("NOTIFICATION_ID"));
                nb.setUserId(rs.getInt("USER_ID"));
                nb.setMessage(rs.getString("MESSAGE"));
                nb.setCreatedDate(rs.getDate("CREATED_DATE"));
                nb.setNotificationStatus(rs.getString("NOTIFICATION_STATUS"));

                list.add(nb);

            }

            rs.close();
            ps.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;

    }

}