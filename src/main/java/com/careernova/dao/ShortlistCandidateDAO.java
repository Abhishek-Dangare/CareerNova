package com.careernova.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.careernova.connection.DBConnect;

public class ShortlistCandidateDAO {

    public int shortlistCandidate(int applicationId) {

        int row = 0;

        try {

            Connection con = DBConnect.getCon();

            PreparedStatement ps = con.prepareStatement(
                    "UPDATE JOB_APPLICATION SET STATUS=? WHERE APPLICATION_ID=?");

            ps.setString(1, "SHORTLISTED");
            ps.setInt(2, applicationId);

            row = ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return row;
    }
}