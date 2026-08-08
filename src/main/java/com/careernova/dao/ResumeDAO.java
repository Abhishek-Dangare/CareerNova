package com.careernova.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.careernova.bean.ResumeBean;
import com.careernova.connection.DBConnect;

public class ResumeDAO {

    public boolean uploadResume(ResumeBean rb) {

        boolean status = false;

        try {

            Connection con = DBConnect.getCon();

            PreparedStatement ps = con.prepareStatement(

                "INSERT INTO RESUME "
                + "(RESUME_ID,CANDIDATE_ID,FILE_NAME,FILE_PATH,"
                + "FILE_SIZE,FILE_TYPE,UPLOAD_DATE,STATUS)"
                + " VALUES("
                + "RESUME_SEQ.NEXTVAL,?,?,?,?,?,SYSDATE,?)"

            );

            ps.setInt(1, rb.getCandidateId());
            ps.setString(2, rb.getFileName());
            ps.setString(3, rb.getFilePath());
            ps.setLong(4, rb.getFileSize());
            ps.setString(5, rb.getFileType());
            ps.setString(6, "ACTIVE");

            int k = ps.executeUpdate();

            if (k > 0) {
                status = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }
}