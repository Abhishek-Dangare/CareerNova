package com.careernova.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.careernova.bean.CompanyReportBean;
import com.careernova.connection.DBConnect;

public class CompanyReportDAO {

    public CompanyReportBean getCompanyReport(int companyId) {

        CompanyReportBean bean = new CompanyReportBean();

        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {

            con = DBConnect.getCon();

            // ==========================
            // Total HR
            // ==========================
            String totalHR = "SELECT COUNT(*) FROM HR WHERE COMPANY_ID=?";
            ps = con.prepareStatement(totalHR);
            ps.setInt(1, companyId);
            rs = ps.executeQuery();

            if (rs.next()) {
                bean.setTotalHR(rs.getInt(1));
            }

            rs.close();
            ps.close();

            // ==========================
            // Total Jobs
            // ==========================
            String totalJobs = "SELECT COUNT(*) FROM JOB WHERE COMPANY_ID=?";
            ps = con.prepareStatement(totalJobs);
            ps.setInt(1, companyId);
            rs = ps.executeQuery();

            if (rs.next()) {
                bean.setTotalJobs(rs.getInt(1));
            }

            rs.close();
            ps.close();

            // ==========================
            // Total Applications
            // ==========================
            String totalApplications =
                    "SELECT COUNT(*) "
                  + "FROM JOB_APPLICATION JA "
                  + "JOIN JOB J ON JA.JOB_ID = J.JOB_ID "
                  + "WHERE J.COMPANY_ID=?";

            ps = con.prepareStatement(totalApplications);
            ps.setInt(1, companyId);
            rs = ps.executeQuery();

            if (rs.next()) {
                bean.setTotalApplications(rs.getInt(1));
            }

            rs.close();
            ps.close();

            // ==========================
            // Total Candidates
            // ==========================
            String totalCandidates =
                    "SELECT COUNT(DISTINCT JA.CANDIDATE_ID) "
                  + "FROM JOB_APPLICATION JA "
                  + "JOIN JOB J ON JA.JOB_ID = J.JOB_ID "
                  + "WHERE J.COMPANY_ID=?";

            ps = con.prepareStatement(totalCandidates);
            ps.setInt(1, companyId);
            rs = ps.executeQuery();

            if (rs.next()) {
                bean.setTotalCandidates(rs.getInt(1));
            }

            rs.close();
            ps.close();

            // ==========================
            // Shortlisted
            // ==========================
            String shortlisted =
                    "SELECT COUNT(*) "
                  + "FROM JOB_APPLICATION JA "
                  + "JOIN JOB J ON JA.JOB_ID = J.JOB_ID "
                  + "WHERE J.COMPANY_ID=? "
                  + "AND JA.STATUS='SHORTLISTED'";

            ps = con.prepareStatement(shortlisted);
            ps.setInt(1, companyId);
            rs = ps.executeQuery();

            if (rs.next()) {
                bean.setShortlisted(rs.getInt(1));
            }

            rs.close();
            ps.close();

            // ==========================
            // Selected
            // ==========================
            String selected =
                    "SELECT COUNT(*) "
                  + "FROM JOB_APPLICATION JA "
                  + "JOIN JOB J ON JA.JOB_ID = J.JOB_ID "
                  + "WHERE J.COMPANY_ID=? "
                  + "AND JA.STATUS='SELECTED'";

            ps = con.prepareStatement(selected);
            ps.setInt(1, companyId);
            rs = ps.executeQuery();

            if (rs.next()) {
                bean.setSelected(rs.getInt(1));
            }

            rs.close();
            ps.close();

            // ==========================
            // Rejected
            // ==========================
            String rejected =
                    "SELECT COUNT(*) "
                  + "FROM JOB_APPLICATION JA "
                  + "JOIN JOB J ON JA.JOB_ID = J.JOB_ID "
                  + "WHERE J.COMPANY_ID=? "
                  + "AND JA.STATUS='REJECTED'";

            ps = con.prepareStatement(rejected);
            ps.setInt(1, companyId);
            rs = ps.executeQuery();

            if (rs.next()) {
                bean.setRejected(rs.getInt(1));
            }

            rs.close();
            ps.close();

            // ==========================
            // Interviews
            // ==========================
            String interviews =
                    "SELECT COUNT(*) "
                  + "FROM INTERVIEW I "
                  + "JOIN JOB_APPLICATION JA "
                  + "ON I.APPLICATION_ID = JA.APPLICATION_ID "
                  + "JOIN JOB J "
                  + "ON JA.JOB_ID = J.JOB_ID "
                  + "WHERE J.COMPANY_ID=?";

            ps = con.prepareStatement(interviews);
            ps.setInt(1, companyId);
            rs = ps.executeQuery();

            if (rs.next()) {
                bean.setInterviews(rs.getInt(1));
            }

            rs.close();
            ps.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return bean;
    }
}