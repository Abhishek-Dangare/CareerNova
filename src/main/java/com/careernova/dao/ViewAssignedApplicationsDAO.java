package com.careernova.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.careernova.bean.ApplicationBean;
import com.careernova.connection.DBConnect;

public class ViewAssignedApplicationsDAO {

    public ArrayList<ApplicationBean> getAssignedApplications() {

        ArrayList<ApplicationBean> list = new ArrayList<ApplicationBean>();

        try {

            Connection con = DBConnect.getCon();

            String sql =
                "SELECT JA.APPLICATION_ID, " +
                "C.FIRST_NAME || ' ' || C.LAST_NAME AS CANDIDATE_NAME, " +
                "J.JOB_TITLE, " +
                "JA.CANDIDATE_ID, " +
                "JA.JOB_ID, " +
                "JA.APPLY_DATE, " +
                "JA.STATUS " +
                "FROM JOB_APPLICATION JA " +
                "JOIN CANDIDATE C ON JA.CANDIDATE_ID = C.CANDIDATE_ID " +
                "JOIN JOB J ON JA.JOB_ID = J.JOB_ID " +
                "ORDER BY JA.APPLICATION_ID";

            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                ApplicationBean ab = new ApplicationBean();

                ab.setApplicationId(rs.getInt("APPLICATION_ID"));
                ab.setCandidateId(rs.getInt("CANDIDATE_ID"));
                ab.setJobId(rs.getInt("JOB_ID"));
                ab.setCandidateName(rs.getString("CANDIDATE_NAME"));
                ab.setJobTitle(rs.getString("JOB_TITLE"));
                ab.setApplyDate(rs.getDate("APPLY_DATE"));
                ab.setStatus(rs.getString("STATUS"));

                list.add(ab);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}