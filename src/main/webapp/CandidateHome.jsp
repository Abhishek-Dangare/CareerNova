<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>CareerNova | Candidate Dashboard</title>

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
    color:white;
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
    color:white;
    text-decoration:none;
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

.cards{
    padding:35px;
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(280px,1fr));
    gap:25px;
}

.card{
    background:white;
    border-radius:15px;
    padding:25px;
    box-shadow:0 5px 15px rgba(0,0,0,.1);
    transition:.3s;
}

.card:hover{
    transform:translateY(-8px);
}

.card h3{
    color:#1e3a8a;
    margin-bottom:15px;
}

.card p{
    color:#666;
    margin-bottom:20px;
    line-height:24px;
}

.card a{
    display:inline-block;
    text-decoration:none;
    background:#2563eb;
    color:white;
    padding:10px 20px;
    border-radius:6px;
    transition:.3s;
}

.card a:hover{
    background:#0f172a;
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

<a href="candidateNotifications">Open</a>

<a href="Logout">🚪 Logout</a>

</div>

<div class="main">

<div class="header">

<h2>Candidate Dashboard</h2>

<div class="profile">

Welcome Candidate

</div>

</div>

<div class="cards">

<div class="card">

<h3>👤 Complete Profile</h3>

<p>
Complete your personal profile including name,
address, contact details and professional summary.
</p>

<a href="CompleteProfile.jsp">

Open

</a>

</div>

<div class="card">

<h3>🎓 Education</h3>

<p>
Add your education details including qualification,
college, university, percentage and CGPA.
</p>

<a href="Education.jsp">

Open

</a>

</div>

<div class="card">

<h3>💼 Experience</h3>

<p>
Add your work experience including company name,
job title, duration and responsibilities.
</p>

<a href="Experience.jsp">

Open

</a>

</div>

<div class="card">

<h3>📄 Upload Resume</h3>

<p>
Upload your latest resume and increase your chances
of getting shortlisted by recruiters.
</p>

<a href="UploadResume.jsp">
    Upload
</a>

</div>

<div class="card">

<h3>💼 Search Jobs</h3>

<p>
Browse thousands of jobs posted by top companies
across different industries.
</p>
<a href="searchJobs">Search</a>

</div>

<div class="card">

<h3>📨 Applied Jobs</h3>

<p>
Track all your job applications and their current
application status.
</p>

<a href="appliedJobs">View</a>


</a>

</div>

<div class="card">

<h3>📅 Interview Status</h3>

<p>
Check interview schedules, interview rounds and
selection updates.
</p>

<a href="interviewStatus">
Check
</a>


</div>

<div class="card">

<h3>🔔 Notifications</h3>

<p>
Receive latest job alerts, interview updates and
important announcements.
</p>

<a href="candidateNotifications" class="btn">
        Open
    </a>

</div>

</div>

<div class="footer">

© 2026 CareerNova | Smart Recruitment & Career Management Platform

</div>

</div>

</body>

</html>