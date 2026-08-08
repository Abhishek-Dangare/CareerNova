<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.util.*"%>
<%@ page import="com.careernova.bean.JobBean"%>

<%
List<JobBean> jobList=(List<JobBean>)request.getAttribute("jobList");
%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>CareerNova | Search Jobs</title>

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
color:#38bdf8;
text-align:center;
margin-bottom:35px;
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

.searchBox{

background:white;

padding:20px;

border-radius:10px;

box-shadow:0 5px 15px rgba(0,0,0,.1);

margin-bottom:30px;

}

.searchBox input[type=text]{

width:82%;

padding:12px;

font-size:16px;

border:1px solid #ccc;

border-radius:5px;

}

.searchBox input[type=submit]{

padding:12px 25px;

background:#2563eb;

color:white;

border:none;

border-radius:5px;

cursor:pointer;

font-weight:bold;

}

.searchBox input[type=submit]:hover{

background:#0f172a;

}

.cards{

display:grid;

grid-template-columns:repeat(auto-fit,minmax(320px,1fr));

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

transform:translateY(-6px);

}

.card h2{

color:#1e3a8a;

margin-bottom:15px;

}

.card p{

margin:10px 0;

color:#555;

}

.btn{

display:inline-block;

margin-top:15px;

padding:10px 20px;

background:#2563eb;

color:white;

text-decoration:none;

border-radius:6px;

}

.btn:hover{

background:#0f172a;

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

<a href="#">📨 Applied Jobs</a>

<a href="#">📅 Interviews</a>

<a href="#">🔔 Notifications</a>

<a href="index.html">🚪 Logout</a>

</div>

<div class="main">

<div class="header">

<h2>Search Jobs</h2>

<div class="profile">

Welcome Candidate

</div>

</div>

<div class="container">

<div class="searchBox">

<form action="searchJobs" method="get">

<input type="text"
name="keyword"
placeholder="Search Job Title">

<input type="submit"
value="Search">

</form>

</div>
<div class="cards">

<%
if (jobList != null && !jobList.isEmpty()) {

    for (JobBean job : jobList) {
%>

<div class="card">

<h2><%= job.getJobTitle() %></h2>

<p><b>Company ID :</b> <%= job.getCompanyId() %></p>

<p><b>Location :</b> <%= job.getJobLocation() %></p>

<p><b>Job Type :</b> <%= job.getJobType() %></p>

<p><b>Experience :</b> <%= job.getExperienceRequired() %> Year(s)</p>

<p><b>Salary :</b> ₹ <%= job.getSalary() %></p>

<p><b>Vacancy :</b> <%= job.getVacancy() %></p>

<p><b>Last Apply :</b> <%= job.getLastApplyDate() %></p>

<p><%= job.getJobDescription() %></p>

<a href="JobDetails.jsp?jobId=<%= job.getJobId() %>" class="btn">
View Details
</a>

<a href="ApplyJobServlet?jobId=<%= job.getJobId() %>" class="btn">
Apply Now
</a>

</div>

<%
    }

} else {
%>

<h2>No Jobs Available</h2>

<%
}
%>

</div>
</div>

</div>

</body>
</html>