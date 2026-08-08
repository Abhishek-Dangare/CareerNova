package com.careernova.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.careernova.bean.ExperienceBean;
import com.careernova.connection.DBConnect;

public class ExperienceDAO {

    public boolean addExperience(ExperienceBean eb) {

        boolean status = false;

        try {

            Connection con = DBConnect.getCon();

            PreparedStatement ps = con.prepareStatement(

                "INSERT INTO EXPERIENCE "
                + "(EXPERIENCE_ID, CANDIDATE_ID, COMPANY_NAME, JOB_TITLE, "
                + "START_DATE, END_DATE, EXPERIENCE_YEARS, JOB_DESCRIPTION) "
                + "VALUES (EXPERIENCE_SEQ.NEXTVAL, ?, ?, ?, ?, ?, ?, ?)"
            );

            ps.setInt(1, eb.getCandidateId());
            ps.setString(2, eb.getCompanyName());
            ps.setString(3, eb.getJobTitle());

            ps.setDate(4, new java.sql.Date(eb.getStartDate().getTime()));

            if (eb.getEndDate() != null) {
                ps.setDate(5, new java.sql.Date(eb.getEndDate().getTime()));
            } else {
                ps.setNull(5, java.sql.Types.DATE);
            }

            ps.setDouble(6, eb.getExperienceYears());
            ps.setString(7, eb.getJobDescription());

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