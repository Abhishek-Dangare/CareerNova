package com.careernova.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.careernova.bean.ApplicationBean;
import com.careernova.connection.DBConnect;

public class PendingReviewDAO {

    public ArrayList<ApplicationBean> getPendingApplications() {

        ArrayList<ApplicationBean> list = new ArrayList<>();

        try {

            Connection con = DBConnect.getCon();

            String sql =
            	    "SELECT A.APPLICATION_ID, " +
            	    "C.CANDIDATE_ID, " +
            	    "C.FIRST_NAME || ' ' || C.LAST_NAME AS CANDIDATE_NAME, " +
            	    "J.JOB_TITLE, " +
            	    "A.APPLY_DATE, " +
            	    "A.STATUS " +
            	    "FROM JOB_APPLICATION A " +
            	    "JOIN CANDIDATE C ON A.CANDIDATE_ID = C.CANDIDATE_ID " +
            	    "JOIN JOB J ON A.JOB_ID = J.JOB_ID " +
            	    "WHERE UPPER(A.STATUS)='PENDING'";

            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while(rs.next()) {

                ApplicationBean app = new ApplicationBean();

                app.setApplicationId(rs.getInt("APPLICATION_ID"));
                app.setCandidateId(rs.getInt("CANDIDATE_ID"));
                app.setCandidateName(rs.getString("CANDIDATE_NAME"));
                app.setJobTitle(rs.getString("JOB_TITLE"));
                app.setApplyDate(rs.getString("APPLIED_DATE"));
                app.setStatus(rs.getString("STATUS"));

                list.add(app);
            }

            con.close();

        } catch(Exception e) {
            e.printStackTrace();
        }

        return list;
    }

}