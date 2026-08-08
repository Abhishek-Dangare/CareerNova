<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="com.careernova.bean.CompanyBean"%>

<%
CompanyBean c = (CompanyBean)request.getAttribute("company");
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Company Profile</title>

<style>

body{
    font-family:Arial;
    background:#f4f6f9;
}

.container{
    width:60%;
    margin:40px auto;
    background:white;
    padding:30px;
    border-radius:10px;
    box-shadow:0 0 10px gray;
}

h2{
    text-align:center;
    color:#2c3e50;
}

table{
    width:100%;
}

td{
    padding:10px;
}

input,textarea{
    width:100%;
    padding:10px;
}

input[type=submit]{
    background:#3498db;
    color:white;
    border:none;
    cursor:pointer;
}

.back{
    text-decoration:none;
    padding:10px 20px;
    background:#2c3e50;
    color:white;
    border-radius:5px;
}

</style>

</head>

<body>

<div class="container">

<a href="CompanyHome.jsp" class="back">← Dashboard</a>

<h2>Company Profile</h2>

<form action="UpdateCompanyProfile" method="post">

<input type="hidden" name="companyId"
value="<%=c!=null?c.getCompanyId():""%>">

<table>

<tr>
<td>Company Name</td>
<td>
<input type="text" name="companyName"
value="<%=c!=null?c.getCompanyName():""%>">
</td>
</tr>

<tr>
<td>Email</td>
<td>
<input type="email" name="companyEmail"
value="<%=c!=null?c.getCompanyEmail():""%>">
</td>
</tr>

<tr>
<td>Phone</td>
<td>
<input type="text" name="companyPhone"
value="<%=c!=null?c.getCompanyPhone():""%>">
</td>
</tr>

<tr>
<td>Website</td>
<td>
<input type="text" name="website"
value="<%=c!=null?c.getWebsite():""%>">
</td>
</tr>

<tr>
<td>Industry</td>
<td>
<input type="text" name="industry"
value="<%=c!=null?c.getIndustry():""%>">
</td>
</tr>

<tr>
<td>Address</td>
<td>
<textarea name="address"><%=c!=null?c.getAddress():""%></textarea>
</td>
</tr>

<tr>
<td>City</td>
<td>
<input type="text" name="city"
value="<%=c!=null?c.getCity():""%>">
</td>
</tr>

<tr>
<td>State</td>
<td>
<input type="text" name="state"
value="<%=c!=null?c.getState():""%>">
</td>
</tr>

<tr>
<td>Pincode</td>
<td>
<input type="text" name="pincode"
value="<%=c!=null?c.getPincode():""%>">
</td>
</tr>

<tr>
<td>Description</td>
<td>
<textarea name="description"><%=c!=null?c.getDescription():""%></textarea>
</td>
</tr>

<tr>
<td colspan="2">
<input type="submit" value="Update Profile">
</td>
</tr>

</table>

</form>

</div>

</body>
</html>