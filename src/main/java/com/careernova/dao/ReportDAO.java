package com.careernova.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.careernova.bean.ReportBean;
import com.careernova.connection.DBConnect;

public class ReportDAO {

    public ReportBean getReport() {

        ReportBean rb = new ReportBean();

        try {

            Connection con = DBConnect.getCon();

            // Total Companies
            PreparedStatement ps = con.prepareStatement("SELECT COUNT(*) FROM COMPANY");
            ResultSet rs = ps.executeQuery();
            if (rs.next())
                rb.setTotalCompanies(rs.getInt(1));

            // Total HR
            ps = con.prepareStatement("SELECT COUNT(*) FROM HR");
            rs = ps.executeQuery();
            if (rs.next())
                rb.setTotalHR(rs.getInt(1));

            // Total Candidates
            ps = con.prepareStatement("SELECT COUNT(*) FROM CANDIDATE");
            rs = ps.executeQuery();
            if (rs.next())
                rb.setTotalCandidates(rs.getInt(1));

            // Total Jobs
            ps = con.prepareStatement("SELECT COUNT(*) FROM JOB");
            rs = ps.executeQuery();
            if (rs.next())
                rb.setTotalJobs(rs.getInt(1));

            // Open Jobs
            ps = con.prepareStatement("SELECT COUNT(*) FROM JOB WHERE STATUS='OPEN'");
            rs = ps.executeQuery();
            if (rs.next())
                rb.setOpenJobs(rs.getInt(1));

            // Closed Jobs
            ps = con.prepareStatement("SELECT COUNT(*) FROM JOB WHERE STATUS='CLOSED'");
            rs = ps.executeQuery();
            if (rs.next())
                rb.setClosedJobs(rs.getInt(1));

        } catch (Exception e) {
            e.printStackTrace();
        }

        return rb;
    }
}