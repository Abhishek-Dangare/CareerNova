package com.careernova.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.careernova.bean.JobBean;
import com.careernova.connection.DBConnect;

public class JobDAO {

    // Get All Active Jobs
    public List<JobBean> getAllJobs() {

        List<JobBean> list = new ArrayList<JobBean>();

        try {

            Connection con = DBConnect.getCon();

            String sql = "SELECT * FROM JOB WHERE STATUS='OPEN' ORDER BY JOB_ID DESC";

            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                JobBean jb = new JobBean();

                jb.setJobId(rs.getInt("JOB_ID"));
                jb.setCompanyId(rs.getInt("COMPANY_ID"));
                jb.setCategoryId(rs.getInt("CATEGORY_ID"));
                jb.setJobTitle(rs.getString("JOB_TITLE"));
                jb.setJobDescription(rs.getString("JOB_DESCRIPTION"));
                jb.setJobLocation(rs.getString("JOB_LOCATION"));
                jb.setJobType(rs.getString("JOB_TYPE"));
                jb.setExperienceRequired(rs.getInt("EXPERIENCE_REQUIRED"));
                jb.setSalary(rs.getDouble("SALARY"));
                jb.setVacancy(rs.getInt("VACANCY"));
                jb.setLastApplyDate(rs.getDate("LAST_APPLY_DATE"));
                jb.setStatus(rs.getString("STATUS"));
                jb.setCreatedDate(rs.getDate("CREATED_DATE"));

                list.add(jb);
            }

            rs.close();
            ps.close();
  

        } catch (Exception e) {

            e.printStackTrace();

        }

        return list;
    }
 // Get All Jobs (Admin)
    public List<JobBean> getAllJobsAdmin() {

        List<JobBean> list = new ArrayList<JobBean>();

        try {

            Connection con = DBConnect.getCon();

            String sql = "SELECT * FROM JOB ORDER BY JOB_ID DESC";

            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                JobBean jb = new JobBean();

                jb.setJobId(rs.getInt("JOB_ID"));
                jb.setCompanyId(rs.getInt("COMPANY_ID"));
                jb.setCategoryId(rs.getInt("CATEGORY_ID"));
                jb.setJobTitle(rs.getString("JOB_TITLE"));
                jb.setJobDescription(rs.getString("JOB_DESCRIPTION"));
                jb.setJobLocation(rs.getString("JOB_LOCATION"));
                jb.setJobType(rs.getString("JOB_TYPE"));
                jb.setExperienceRequired(rs.getInt("EXPERIENCE_REQUIRED"));
                jb.setSalary(rs.getDouble("SALARY"));
                jb.setVacancy(rs.getInt("VACANCY"));
                jb.setLastApplyDate(rs.getDate("LAST_APPLY_DATE"));
                jb.setStatus(rs.getString("STATUS"));
                jb.setCreatedDate(rs.getDate("CREATED_DATE"));

                list.add(jb);
            }

            rs.close();
            ps.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

}