package com.careernova.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.careernova.connection.DBConnect;

public class DeleteCompanyDAO {

    public int deleteCompany(int companyId) {

        int k = 0;

        try {

            Connection con = DBConnect.getCon();

            PreparedStatement ps = con.prepareStatement(
                    "DELETE FROM COMPANY WHERE COMPANY_ID=?");

            ps.setInt(1, companyId);

            k = ps.executeUpdate();

        } catch (Exception e) {

            e.printStackTrace();

        }

        return k;
    }

}