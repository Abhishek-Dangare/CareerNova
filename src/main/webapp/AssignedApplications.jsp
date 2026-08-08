
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.careernova.bean.ApplicationBean"%>

<%
ArrayList<ApplicationBean> list =
(ArrayList<ApplicationBean>)request.getAttribute("applicationList");
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CareerNova | Assigned Applications</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Poppins,sans-serif;
}

body{
background:#f4f6f9;
}

/* Sidebar */

.sidebar{
position:fixed;
width:250px;
height:100%;
background:#1e3c72;
}

.sidebar h2{
color:white;
text-align:center;
padding:22px;
background:#16335f;
}

.sidebar ul{
list-style:none;
margin-top:20px;
}

.sidebar ul li{
padding:15px 25px;
border-bottom:1px solid rgba(255,255,255,.1);
}

.sidebar ul li:hover{
background:#28539a;
}

.sidebar ul li a{
color:white;
text-decoration:none;
display:block;
font-size:16px;
}

.sidebar ul li i{
margin-right:10px;
}

/* Main */

.main{
margin-left:250px;
padding:30px;
}

.header{
background:white;
padding:20px;
border-radius:10px;
box-shadow:0px 3px 10px rgba(0,0,0,.1);
margin-bottom:25px;
}

.header h2{
color:#1e3c72;
}

table{
width:100%;
border-collapse:collapse;
background:white;
box-shadow:0px 5px 15px rgba(0,0,0,.1);
}

table th{
background:#1e3c72;
color:white;
padding:15px;
}

table td{
padding:15px;
text-align:center;
border-bottom:1px solid #ddd;
}

table tr:hover{
background:#f2f2f2;
}

.btn{
padding:8px 15px;
border:none;
border-radius:5px;
cursor:pointer;
color:white;
text-decoration:none;
font-size:14px;
}

.view{
background:#28a745;
}

.shortlist{
background:#007bff;
}

.back{
margin-top:20px;
display:inline-block;
padding:10px 20px;
background:#1e3c72;
color:white;
text-decoration:none;
border-radius:5px;
}
.back{
    display:inline-block;
    padding:10px 20px;
    background:#1e3c72;
    color:white;
    text-decoration:none;
    border-radius:5px;
    font-weight:bold;
    transition:0.3s;
}

.back:hover{
    background:#28539a;
}

</style>

</head>

<body>

<div class="sidebar">

<h2>CareerNova</h2>

<ul>

<li><a href="HRHome.jsp"><i class="fa fa-home"></i> Dashboard</a></li>

<a href="viewAssignedApplications">
    <i class="fa fa-file"></i> Assigned Applications
</a>
<li><a href="#"><i class="fa fa-user"></i> View Candidate Profile</a></li>

<li><a href="#"><i class="fa fa-star"></i> Shortlist Candidate</a></li>

<li><a href="#"><i class="fa fa-comments"></i> Interview Feedback</a></li>

<li><a href="#"><i class="fa fa-key"></i> Change Password</a></li>

<li><a href="logout"><i class="fa fa-sign-out-alt"></i> Logout</a></li>

</ul>

</div>

<div class="main">

<div class="header">

<h2>Assigned Applications</h2>

</div>
<table>

<tr>

<th>Application ID</th>

<th>Candidate Name</th>

<th>Job Title</th>

<th>Applied Date</th>

<th>Status</th>

<th>View</th>

<th>Shortlist</th>

</tr>

<%
if(list != null){
    for(ApplicationBean app : list){
%>

<tr>

<td><%=app.getApplicationId()%></td>

<td><%=app.getCandidateName()%></td>

<td><%=app.getJobTitle()%></td>

<td><%=app.getApplyDate()%></td>

<td><%=app.getStatus()%></td>

<td>

<a href="viewCandidateProfile?cid=<%=app.getCandidateId()%>"
class="btn view">

View

</a>

</td>

<td>

<%
if("SHORTLISTED".equalsIgnoreCase(app.getStatus())){
%>

<span style="color:green;font-weight:bold;">
✓ Shortlisted
</span>

<%
}else{
%>

<a href="shortlistCandidate?aid=<%=app.getApplicationId()%>"
class="btn shortlist">

Shortlist

</a>

<%
}
%>

</td>

</tr>

<%
    }
}
else{
%>

<tr>

<td colspan="7">No Applications Found</td>

</tr>

<%
}
%>



</body>
<a href="HRHome.jsp" class="back">
    <i class="fa fa-arrow-left"></i> Back To Dashboard
</a>

</table>

</html>