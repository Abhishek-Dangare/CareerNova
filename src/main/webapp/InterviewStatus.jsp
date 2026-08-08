<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.util.*"%>
<%@ page import="com.careernova.bean.InterviewStatusBean"%>

<%
List<InterviewStatusBean> list =
(List<InterviewStatusBean>)request.getAttribute("interviewList");
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>CareerNova | Interview Status</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Poppins',sans-serif;
}

body{
background:#eef3f8;
}

.sidebar{
position:fixed;
left:0;
top:0;
width:250px;
height:100%;
background:#0f172a;
padding:25px;
overflow-y:auto;
}

.sidebar h2{
text-align:center;
margin-bottom:35px;
color:#38bdf8;
}

.sidebar a{
display:block;
text-decoration:none;
color:white;
padding:14px;
margin:8px 0;
border-radius:8px;
transition:.3s;
}

.sidebar a:hover{
background:#2563eb;
}

.main{
margin-left:250px;
}

.header{
height:70px;
background:white;
display:flex;
justify-content:space-between;
align-items:center;
padding:0 35px;
box-shadow:0 2px 10px rgba(0,0,0,.1);
}

.header h2{
color:#1e3a8a;
}

.profile{
font-weight:bold;
color:#2563eb;
}

.container{
padding:30px;
}

.cards{
display:grid;
grid-template-columns:repeat(auto-fit,minmax(350px,1fr));
gap:25px;
}

.card{
background:white;
padding:25px;
border-radius:12px;
box-shadow:0 5px 15px rgba(0,0,0,.1);
transition:.3s;
}

.card:hover{
transform:translateY(-8px);
}

.card h2{
color:#1e3a8a;
margin-bottom:15px;
}

.card p{
margin:10px 0;
color:#555;
}

.status{
display:inline-block;
margin-top:15px;
padding:8px 20px;
background:#2563eb;
color:white;
border-radius:30px;
font-weight:bold;
}

.footer{
text-align:center;
padding:20px;
color:#777;
}

</style>

</head>

<body>

<div class="sidebar">

<h2>CareerNova</h2>

<a href="CandidateHome.jsp">🏠 Dashboard</a>
<a href="CompleteProfile.jsp">👤 Complete Profile</a>
<a href="Education.jsp">🎓 Education</a>
<a href="Experience.jsp">💼 Experience</a>
<a href="#">🛠 Skills</a>
<a href="#">📂 Projects</a>
<a href="#">📜 Certificates</a>
<a href="UploadResume.jsp">📄 Upload Resume</a>
<a href="searchJobs">💼 Search Jobs</a>
<a href="appliedJobs">📨 Applied Jobs</a>
<a href="interviewStatus">📅 Interviews</a>
<a href="#">🔔 Notifications</a>
<a href="index.html">🚪 Logout</a>

</div>

<div class="main">

<div class="header">

<h2>Interview Status</h2>

<div class="profile">

Welcome Candidate

</div>

</div>

<div class="container">

<div class="cards">

<%

if(list!=null && !list.isEmpty()){

for(InterviewStatusBean interview:list){

%>

<div class="card">

<h2><%=interview.getJobTitle()%></h2>

<p><b>Company :</b> <%=interview.getCompanyName()%></p>

<p><b>Interview Date :</b> <%=interview.getInterviewDate()%></p>

<p><b>Interview Time :</b> <%=interview.getInterviewTime()%></p>

<p><b>Mode :</b> <%=interview.getInterviewMode()%></p>

<p><b>Application ID :</b> <%=interview.getApplicationId()%></p>

<div class="status">

<%=interview.getInterviewStatus()%>

</div>

</div>

<%

}

}else{

%>

<h2>No Interview Scheduled.</h2>

<%

}

%>

</div>

</div>

<div class="footer">

© 2026 CareerNova | Smart Recruitment & Career Management Platform

</div>

</div>

</body>

</html>