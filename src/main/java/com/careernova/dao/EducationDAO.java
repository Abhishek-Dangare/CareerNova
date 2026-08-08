package com.careernova.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.careernova.bean.EducationBean;
import com.careernova.connection.DBConnect;

public class EducationDAO {

    public boolean addEducation(EducationBean eb) {

        boolean status = false;

        try {

            Connection con = DBConnect.getCon();

            PreparedStatement ps = con.prepareStatement(

                "INSERT INTO EDUCATION "
                + "(EDUCATION_ID, CANDIDATE_ID, QUALIFICATION, "
                + "COLLEGE_NAME, UNIVERSITY_NAME, "
                + "PASSING_YEAR, PERCENTAGE, CGPA, STATUS) "
                + "VALUES "
                + "(EDUCATION_SEQ.NEXTVAL, ?, ?, ?, ?, ?, ?, ?, ?)"

            );

            ps.setInt(1, eb.getCandidateId());
            ps.setString(2, eb.getQualification());
            ps.setString(3, eb.getCollegeName());
            ps.setString(4, eb.getUniversityName());
            ps.setInt(5, eb.getPassingYear());
            ps.setDouble(6, eb.getPercentage());
            ps.setDouble(7, eb.getCgpa());

            // Database allows only COMPLETED or PURSUING
            ps.setString(8, "PURSUING");

            int k = ps.executeUpdate();

            if (k > 0) {
                status = true;
                System.out.println("Education Saved Successfully...");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }
}