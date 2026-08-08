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
<title>CareerNova | Shortlisted Applications</title>

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
}

.sidebar ul li i{
margin-right:10px;
}

.main{
margin-left:250px;
padding:30px;
}

.header{
background:white;
padding:20px;
border-radius:10px;
box-shadow:0 3px 10px rgba(0,0,0,.1);
margin-bottom:25px;
}

.header h2{
color:#1e3c72;
}

table{
width:100%;
border-collapse:collapse;
background:white;
box-shadow:0 5px 15px rgba(0,0,0,.1);
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
}

.view{
background:#28a745;
}

.shortlist{
background:#007bff;
}

.back{
display:inline-block;
margin-top:20px;
padding:10px 20px;
background:#1e3c72;
color:white;
text-decoration:none;
border-radius:5px;
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
<li>
    <a href="shortlistedApplications">
        <i class="fa fa-user-check"></i> Shortlisted
    </a>
</li>

<li><a href="HRHome.jsp"><i class="fa fa-home"></i> Dashboard</a></li>

<li><a href="pendingReview"><i class="fa fa-user-clock"></i> Pending Review</a></li>

<li><a href="viewAssignedApplications"><i class="fa fa-file"></i> Assigned Applications</a></li>

<li><a href="logout"><i class="fa fa-sign-out-alt"></i> Logout</a></li>

</ul>

</div>

<div class="main">

<div class="header">
<h2>Shortlisted Applications</h2>
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
if(list != null && !list.isEmpty()){

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
        <span style="color:green;font-weight:bold;">
            ✔ Shortlisted
        </span>
    </td>

</tr>

<%
    }

}else{
%>

<tr>
    <td colspan="7" style="text-align:center;">
        No Shortlisted Applications Found
    </td>
</tr>

<%
}
%>
</table>

</div>

</body>
</html>