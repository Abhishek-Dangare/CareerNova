package com.careernova.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.careernova.bean.InterviewStatusBean;
import com.careernova.connection.DBConnect;

public class InterviewStatusDAO {

    public List<InterviewStatusBean> getInterviewList(int candidateId) {

        List<InterviewStatusBean> list = new ArrayList<InterviewStatusBean>();

        try {

            Connection con = DBConnect.getCon();

            String sql =
            "SELECT I.INTERVIEW_ID, " +
            "I.APPLICATION_ID, " +
            "I.INTERVIEW_DATE, " +
            "I.INTERVIEW_TIME, " +
            "I.INTERVIEW_MODE, " +
            "I.INTERVIEW_STATUS, " +
            "J.JOB_TITLE, " +
            "C.COMPANY_NAME " +
            "FROM INTERVIEW I " +
            "JOIN JOB_APPLICATION JA ON I.APPLICATION_ID=JA.APPLICATION_ID " +
            "JOIN JOB J ON JA.JOB_ID=J.JOB_ID " +
            "JOIN COMPANY C ON J.COMPANY_ID=C.COMPANY_ID " +
            "WHERE JA.CANDIDATE_ID=? " +
            "ORDER BY I.INTERVIEW_DATE DESC";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, candidateId);

            ResultSet rs = ps.executeQuery();

            while(rs.next()) {

                InterviewStatusBean ib = new InterviewStatusBean();

                ib.setInterviewId(rs.getInt("INTERVIEW_ID"));
                ib.setApplicationId(rs.getInt("APPLICATION_ID"));
                ib.setInterviewDate(rs.getDate("INTERVIEW_DATE"));
                ib.setInterviewTime(rs.getString("INTERVIEW_TIME"));
                ib.setInterviewMode(rs.getString("INTERVIEW_MODE"));
                ib.setInterviewStatus(rs.getString("INTERVIEW_STATUS"));

                ib.setJobTitle(rs.getString("JOB_TITLE"));
                ib.setCompanyName(rs.getString("COMPANY_NAME"));

                list.add(ib);

            }

            rs.close();
            ps.close();
            

        } catch(Exception e) {

            e.printStackTrace();

        }

        return list;

    }

}