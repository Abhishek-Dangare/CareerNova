package com.careernova.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.careernova.bean.ApplicationBean;
import com.careernova.connection.DBConnect;

public class InterviewFeedbackDAO {

    // =========================================================
    // 1. GET INTERVIEW CANDIDATES
    // =========================================================

    public ArrayList<ApplicationBean> getInterviewCandidates() {

        ArrayList<ApplicationBean> list = new ArrayList<>();

        try {

            Connection con = DBConnect.getCon();

            String sql =
                "SELECT I.INTERVIEW_ID, " +
                "A.APPLICATION_ID, " +
                "C.CANDIDATE_ID, " +
                "C.FIRST_NAME || ' ' || C.LAST_NAME AS CANDIDATE_NAME, " +
                "J.JOB_TITLE, " +
                "I.INTERVIEW_DATE, " +
                "I.INTERVIEW_TIME, " +
                "I.INTERVIEW_MODE, " +
                "I.INTERVIEW_STATUS " +
                "FROM INTERVIEW I " +
                "JOIN JOB_APPLICATION A " +
                "ON I.APPLICATION_ID = A.APPLICATION_ID " +
                "JOIN CANDIDATE C " +
                "ON A.CANDIDATE_ID = C.CANDIDATE_ID " +
                "JOIN JOB J " +
                "ON A.JOB_ID = J.JOB_ID";

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ResultSet rs =
                    ps.executeQuery();

            while (rs.next()) {

                ApplicationBean app =
                        new ApplicationBean();

                app.setApplicationId(
                        rs.getInt("APPLICATION_ID")
                );

                app.setCandidateId(
                        rs.getInt("CANDIDATE_ID")
                );

                app.setCandidateName(
                        rs.getString("CANDIDATE_NAME")
                );

                app.setJobTitle(
                        rs.getString("JOB_TITLE")
                );

                list.add(app);
            }

            rs.close();
            ps.close();
            con.close();

        } catch (Exception e) {

            e.printStackTrace();
        }

        return list;
    }


    // =========================================================
    // 2. SAVE INTERVIEW FEEDBACK
    // =========================================================

    public int saveFeedback(
            int applicationId,
            int rating,
            String comments,
            String result) {

        int row = 0;

        try {

            Connection con = DBConnect.getCon();

            /*
             * First find INTERVIEW_ID using APPLICATION_ID
             */

            String findInterview =
                    "SELECT INTERVIEW_ID " +
                    "FROM INTERVIEW " +
                    "WHERE APPLICATION_ID=?";

            PreparedStatement ps1 =
                    con.prepareStatement(findInterview);

            ps1.setInt(1, applicationId);

            ResultSet rs =
                    ps1.executeQuery();

            int interviewId = 0;

            if (rs.next()) {

                interviewId =
                        rs.getInt("INTERVIEW_ID");
            }

            rs.close();
            ps1.close();


            /*
             * If interview does not exist
             */

            if (interviewId == 0) {

                con.close();

                return 0;
            }


            /*
             * Insert feedback
             */

            String insertSQL =
                    "INSERT INTO INTERVIEW_FEEDBACK " +
                    "(FEEDBACK_ID, INTERVIEW_ID, RATING, COMMENTS, RESULT) " +
                    "VALUES (FEEDBACK_SEQ.NEXTVAL, ?, ?, ?, ?)";

            PreparedStatement ps2 =
                    con.prepareStatement(insertSQL);

            ps2.setInt(1, interviewId);

            ps2.setInt(2, rating);

            ps2.setString(3, comments);

            ps2.setString(4, result);

            row =
                    ps2.executeUpdate();

            ps2.close();


            /*
             * Update Interview Status
             */

            if (row > 0) {

                String updateInterview =
                        "UPDATE INTERVIEW " +
                        "SET INTERVIEW_STATUS='COMPLETED' " +
                        "WHERE INTERVIEW_ID=?";

                PreparedStatement ps3 =
                        con.prepareStatement(updateInterview);

                ps3.setInt(1, interviewId);

                ps3.executeUpdate();

                ps3.close();
            }


            con.close();

        } catch (Exception e) {

            e.printStackTrace();
        }

        return row;
    }

}