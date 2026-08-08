package com.careernova.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.careernova.bean.ApplicationBean;
import com.careernova.connection.DBConnect;

public class ApplicationDAO {

    // Check Already Applied
    public boolean isAlreadyApplied(int candidateId, int jobId) {

        boolean flag = false;

        try {

            Connection con = DBConnect.getCon();

            String sql = "SELECT * FROM JOB_APPLICATION WHERE CANDIDATE_ID=? AND JOB_ID=?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, candidateId);
            ps.setInt(2, jobId);

            ResultSet rs = ps.executeQuery();

            if(rs.next()) {

                flag = true;

            }

            rs.close();
            ps.close();
       

        } catch(Exception e) {

            e.printStackTrace();

        }

        return flag;

    }

    // Apply Job
    public boolean applyJob(ApplicationBean ab) {

        boolean status = false;

        try {

            Connection con = DBConnect.getCon();

            String sql = "INSERT INTO JOB_APPLICATION(APPLICATION_ID,CANDIDATE_ID,JOB_ID,APPLY_DATE,STATUS) VALUES(APPLICATION_SEQ.NEXTVAL,?,?,SYSDATE,?)";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, ab.getCandidateId());
            ps.setInt(2, ab.getJobId());
            ps.setString(3, ab.getStatus());

            int i = ps.executeUpdate();

            if(i > 0) {

                status = true;

            }

            ps.close();
           

        } catch(Exception e) {

            e.printStackTrace();

        }

        return status;

    }

}