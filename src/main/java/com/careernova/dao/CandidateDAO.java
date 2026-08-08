package com.careernova.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.careernova.bean.CandidateBean;
import com.careernova.connection.DBConnect;
import java.util.ArrayList;
import java.util.List;


public class CandidateDAO {
	public int getCandidateId(int userId) {

	    int candidateId = 0;

	    try {

	        Connection con = DBConnect.getCon();

	        PreparedStatement ps = con.prepareStatement(
	                "SELECT CANDIDATE_ID FROM CANDIDATE WHERE USER_ID=?");

	        ps.setInt(1, userId);

	        ResultSet rs = ps.executeQuery();

	        if (rs.next()) {

	            candidateId = rs.getInt("CANDIDATE_ID");

	        }

	    } catch (Exception e) {

	        e.printStackTrace();

	    }

	    return candidateId;
	}
	public int getCandidateIdByUserId(int userId) {

	    int candidateId = 0;

	    try {

	        Connection con = DBConnect.getCon();

	        String sql = "SELECT CANDIDATE_ID FROM CANDIDATE WHERE USER_ID=?";

	        PreparedStatement ps = con.prepareStatement(sql);

	        ps.setInt(1, userId);

	        ResultSet rs = ps.executeQuery();

	        if(rs.next()){

	            candidateId = rs.getInt("CANDIDATE_ID");

	        }

	        rs.close();
	        ps.close();

	    } catch(Exception e){

	        e.printStackTrace();

	    }

	    return candidateId;
	}

    public boolean saveCandidate(CandidateBean cb) {

        boolean status = false;

        try {

            Connection con = DBConnect.getCon();

            // Check if profile already exists
            PreparedStatement check = con.prepareStatement(
                    "SELECT COUNT(*) FROM CANDIDATE WHERE USER_ID=?");

            check.setInt(1, cb.getUserId());

            ResultSet rs = check.executeQuery();

            rs.next();

            if (rs.getInt(1) > 0) {

                // UPDATE
                PreparedStatement ps = con.prepareStatement(

                        "UPDATE CANDIDATE SET "
                        + "FIRST_NAME=?,LAST_NAME=?,GENDER=?,DOB=?,EMAIL=?,"
                        + "MOBILE_NO=?,ADDRESS=?,CITY=?,STATE=?,PINCODE=?,"
                        + "CURRENT_JOB_TITLE=?,EXPERIENCE_YEARS=?,"
                        + "PROFILE_SUMMARY=?,STATUS='ACTIVE' "
                        + "WHERE USER_ID=?");

                ps.setString(1, cb.getFirstName());
                ps.setString(2, cb.getLastName());
                ps.setString(3, cb.getGender());
                ps.setDate(4, new java.sql.Date(cb.getDob().getTime()));
                ps.setString(5, cb.getEmail());
                ps.setString(6, cb.getMobileNo());
                ps.setString(7, cb.getAddress());
                ps.setString(8, cb.getCity());
                ps.setString(9, cb.getState());
                ps.setString(10, cb.getPincode());
                ps.setString(11, cb.getCurrentJobTitle());
                ps.setInt(12, cb.getExperienceYears());
                ps.setString(13, cb.getProfileSummary());
                ps.setInt(14, cb.getUserId());

                status = ps.executeUpdate() > 0;

            } else {

                // INSERT
                PreparedStatement ps = con.prepareStatement(

                        "INSERT INTO CANDIDATE "
                        + "(CANDIDATE_ID,USER_ID,FIRST_NAME,LAST_NAME,GENDER,DOB,EMAIL,"
                        + "MOBILE_NO,ADDRESS,CITY,STATE,PINCODE,"
                        + "CURRENT_JOB_TITLE,EXPERIENCE_YEARS,"
                        + "PROFILE_SUMMARY,STATUS,CREATED_DATE)"
                        + " VALUES(CANDIDATE_SEQ.NEXTVAL,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,SYSDATE)");

                ps.setInt(1, cb.getUserId());
                ps.setString(2, cb.getFirstName());
                ps.setString(3, cb.getLastName());
                ps.setString(4, cb.getGender());
                ps.setDate(5, new java.sql.Date(cb.getDob().getTime()));
                ps.setString(6, cb.getEmail());
                ps.setString(7, cb.getMobileNo());
                ps.setString(8, cb.getAddress());
                ps.setString(9, cb.getCity());
                ps.setString(10, cb.getState());
                ps.setString(11, cb.getPincode());
                ps.setString(12, cb.getCurrentJobTitle());
                ps.setInt(13, cb.getExperienceYears());
                ps.setString(14, cb.getProfileSummary());
                ps.setString(15, "ACTIVE");

                status = ps.executeUpdate() > 0;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }
    public List<CandidateBean> getAllCandidates() {

        List<CandidateBean> list = new ArrayList<CandidateBean>();

        try {

            Connection con = DBConnect.getCon();

            String sql = "SELECT * FROM CANDIDATE ORDER BY CANDIDATE_ID";

            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                CandidateBean cb = new CandidateBean();

                cb.setCandidateId(rs.getInt("CANDIDATE_ID"));
                cb.setUserId(rs.getInt("USER_ID"));
                cb.setFirstName(rs.getString("FIRST_NAME"));
                cb.setLastName(rs.getString("LAST_NAME"));
                cb.setGender(rs.getString("GENDER"));
                cb.setEmail(rs.getString("EMAIL"));
                cb.setMobileNo(rs.getString("MOBILE_NO"));
                cb.setCity(rs.getString("CITY"));
                cb.setState(rs.getString("STATE"));
                cb.setStatus(rs.getString("STATUS"));

                list.add(cb);
            }

            rs.close();
            ps.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}