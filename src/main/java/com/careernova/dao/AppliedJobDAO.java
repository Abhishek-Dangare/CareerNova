package com.careernova.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.careernova.bean.AppliedJobBean;
import com.careernova.connection.DBConnect;

public class AppliedJobDAO {

    public List<AppliedJobBean> getAppliedJobs(int candidateId) {

        List<AppliedJobBean> list = new ArrayList<AppliedJobBean>();

        try {

            Connection con = DBConnect.getCon();

            String sql =
                    "SELECT JA.APPLICATION_ID, " +
                    "JA.CANDIDATE_ID, " +
                    "JA.JOB_ID, " +
                    "JA.APPLY_DATE, " +
                    "JA.STATUS, " +
                    "J.JOB_TITLE, " +
                    "J.JOB_LOCATION, " +
                    "J.JOB_TYPE, " +
                    "J.SALARY, " +
                    "C.COMPANY_NAME " +
                    "FROM JOB_APPLICATION JA " +
                    "JOIN JOB J ON JA.JOB_ID = J.JOB_ID " +
                    "JOIN COMPANY C ON J.COMPANY_ID = C.COMPANY_ID " +
                    "WHERE JA.CANDIDATE_ID=? " +
                    "ORDER BY JA.APPLICATION_ID DESC";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, candidateId);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                AppliedJobBean ab = new AppliedJobBean();

                ab.setApplicationId(rs.getInt("APPLICATION_ID"));
                ab.setCandidateId(rs.getInt("CANDIDATE_ID"));
                ab.setJobId(rs.getInt("JOB_ID"));
                ab.setApplyDate(rs.getDate("APPLY_DATE"));
                ab.setStatus(rs.getString("STATUS"));

                ab.setJobTitle(rs.getString("JOB_TITLE"));
                ab.setJobLocation(rs.getString("JOB_LOCATION"));
                ab.setJobType(rs.getString("JOB_TYPE"));
                ab.setSalary(rs.getDouble("SALARY"));
                ab.setCompanyName(rs.getString("COMPANY_NAME"));

                list.add(ab);
            }

            rs.close();
            ps.close();
           

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}