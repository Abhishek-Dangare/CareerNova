package com.careernova.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.careernova.bean.CompanyBean;
import com.careernova.connection.DBConnect;

public class CompanyDAO {
	public CompanyBean getCompanyByUserId(int userId)
	{
	    CompanyBean cb = null;

	    try
	    {
	        Connection con = DBConnect.getCon();

	        String sql = "SELECT * FROM COMPANY WHERE USER_ID=?";

	        PreparedStatement ps = con.prepareStatement(sql);

	        ps.setInt(1, userId);

	        ResultSet rs = ps.executeQuery();

	        if(rs.next())
	        {
	            cb = new CompanyBean();

	            cb.setCompanyId(rs.getInt("COMPANY_ID"));
	            cb.setUserId(rs.getInt("USER_ID"));
	            cb.setCompanyName(rs.getString("COMPANY_NAME"));
	            cb.setCompanyEmail(rs.getString("COMPANY_EMAIL"));
	            cb.setCompanyPhone(rs.getString("COMPANY_PHONE"));
	            cb.setWebsite(rs.getString("WEBSITE"));
	            cb.setIndustry(rs.getString("INDUSTRY"));
	            cb.setCompanySize(rs.getInt("COMPANY_SIZE"));
	            cb.setAddress(rs.getString("ADDRESS"));
	            cb.setCity(rs.getString("CITY"));
	            cb.setState(rs.getString("STATE"));
	            cb.setPincode(rs.getString("PINCODE"));
	            cb.setDescription(rs.getString("DESCRIPTION"));
	            cb.setLogo(rs.getString("LOGO"));
	            cb.setStatus(rs.getString("STATUS"));
	            cb.setCreatedDate(rs.getDate("CREATED_DATE"));
	        }

	        rs.close();
	        ps.close();

	    }
	    catch(Exception e)
	    {
	        e.printStackTrace();
	    }

	    return cb;
	}
	public boolean updateCompany(CompanyBean cb)
	{
	    boolean status = false;

	    try
	    {
	        Connection con = DBConnect.getCon();

	        String sql = "UPDATE COMPANY SET "
	                + "COMPANY_NAME=?,"
	                + "COMPANY_EMAIL=?,"
	                + "COMPANY_PHONE=?,"
	                + "WEBSITE=?,"
	                + "INDUSTRY=?,"
	                + "COMPANY_SIZE=?,"
	                + "ADDRESS=?,"
	                + "CITY=?,"
	                + "STATE=?,"
	                + "PINCODE=?,"
	                + "DESCRIPTION=? "
	                + "WHERE USER_ID=?";

	        PreparedStatement ps = con.prepareStatement(sql);

	        ps.setString(1, cb.getCompanyName());
	        ps.setString(2, cb.getCompanyEmail());
	        ps.setString(3, cb.getCompanyPhone());
	        ps.setString(4, cb.getWebsite());
	        ps.setString(5, cb.getIndustry());
	        ps.setInt(6, cb.getCompanySize());
	        ps.setString(7, cb.getAddress());
	        ps.setString(8, cb.getCity());
	        ps.setString(9, cb.getState());
	        ps.setString(10, cb.getPincode());
	        ps.setString(11, cb.getDescription());
	        ps.setInt(12, cb.getUserId());

	        status = ps.executeUpdate() > 0;

	        ps.close();

	    }
	    catch(Exception e)
	    {
	        e.printStackTrace();
	    }

	    return status;
	}
}
