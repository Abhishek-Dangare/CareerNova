<%@page import="com.careernova.bean.CompanyBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%
CompanyBean cb=(CompanyBean)request.getAttribute("company");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Company Details</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Poppins',sans-serif;
}

body{
background:#eef2f7;
}

.container{

width:900px;
margin:40px auto;
background:white;
padding:30px;
border-radius:15px;
box-shadow:0 5px 20px rgba(0,0,0,.15);

}

h2{

text-align:center;
margin-bottom:30px;
color:#1e3a8a;

}

table{

width:100%;
border-collapse:collapse;

}

td{

padding:15px;
border-bottom:1px solid #ddd;

}

td:first-child{

font-weight:bold;
width:250px;
background:#f8fafc;

}

.badge{

padding:8px 18px;
border-radius:20px;
color:white;
font-weight:bold;

}

.pending{

background:#f59e0b;

}

.approved{

background:#16a34a;

}

.rejected{

background:#dc2626;

}

.btn{

display:inline-block;
padding:12px 25px;
border-radius:8px;
text-decoration:none;
color:white;
margin-top:25px;
margin-right:10px;

}

.edit{

background:#2563eb;

}

.back{

background:#555;

}

</style>

</head>

<body>

<div class="container">

<h2>Company Details</h2>

<table>

<tr>

<td>Company ID</td>

<td><%=cb.getCompanyId()%></td>

</tr>

<tr>

<td>Company Name</td>

<td><%=cb.getCompanyName()%></td>

</tr>

<tr>

<td>Email</td>

<td><%=cb.getCompanyEmail()%></td>

</tr>

<tr>

<td>Phone</td>

<td><%=cb.getCompanyPhone()%></td>

</tr>

<tr>

<td>Website</td>

<td><%=cb.getWebsite()%></td>

</tr>

<tr>

<td>Industry</td>

<td><%=cb.getIndustry()%></td>

</tr>

<tr>

<td>Company Size</td>

<td><%=cb.getCompanySize()%></td>

</tr>

<tr>

<td>Address</td>

<td><%=cb.getAddress()%></td>

</tr>

<tr>

<td>City</td>

<td><%=cb.getCity()%></td>

</tr>

<tr>

<td>State</td>

<td><%=cb.getState()%></td>

</tr>

<tr>

<td>Pincode</td>

<td><%=cb.getPincode()%></td>

</tr>

<tr>

<td>Description</td>

<td><%=cb.getDescription()%></td>

</tr>

<tr>

<td>Status</td>

<td>

<%
if(cb.getStatus().equalsIgnoreCase("APPROVED")){
%>

<span class="badge approved">APPROVED</span>

<%
}else if(cb.getStatus().equalsIgnoreCase("PENDING")){
%>

<span class="badge pending">PENDING</span>

<%
}else{
%>

<span class="badge rejected">REJECTED</span>

<%
}
%>

</td>

</tr>

<tr>

<td>Created Date</td>

<td><%=cb.getCreatedDate()%></td>

</tr>

</table>

<a href="EditCompany?id=<%=cb.getCompanyId()%>" class="btn edit">

Edit Company

</a>

<a href="ViewCompany" class="btn back">

Back

</a>

</div>

</body>
</html>