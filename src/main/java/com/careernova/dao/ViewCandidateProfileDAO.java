package com.careernova.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.careernova.bean.CandidateBean;
import com.careernova.connection.DBConnect;

public class ViewCandidateProfileDAO {

    public CandidateBean getCandidateById(int candidateId) {

        CandidateBean cb = null;

        try {

            Connection con = DBConnect.getCon();

            PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM CANDIDATE WHERE CANDIDATE_ID=?");

            ps.setInt(1, candidateId);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                cb = new CandidateBean();

                cb.setCandidateId(rs.getInt("CANDIDATE_ID"));
                cb.setUserId(rs.getInt("USER_ID"));
                cb.setFirstName(rs.getString("FIRST_NAME"));
                cb.setLastName(rs.getString("LAST_NAME"));
                cb.setGender(rs.getString("GENDER"));
                cb.setDob(rs.getDate("DOB"));
                cb.setEmail(rs.getString("EMAIL"));
                cb.setMobileNo(rs.getString("MOBILE_NO"));
                cb.setAddress(rs.getString("ADDRESS"));
                cb.setCity(rs.getString("CITY"));
                cb.setState(rs.getString("STATE"));
                cb.setPincode(rs.getString("PINCODE"));
                cb.setCurrentJobTitle(rs.getString("CURRENT_JOB_TITLE"));
                cb.setExperienceYears(rs.getInt("EXPERIENCE_YEARS"));
                cb.setProfileSummary(rs.getString("PROFILE_SUMMARY"));
                cb.setStatus(rs.getString("STATUS"));
                cb.setCreatedDate(rs.getDate("CREATED_DATE"));

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return cb;
    }

}