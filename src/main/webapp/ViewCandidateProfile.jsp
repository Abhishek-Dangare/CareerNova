<%@page import="com.careernova.bean.CandidateBean"%>
<%
CandidateBean c=(CandidateBean)request.getAttribute("candidate");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CareerNova | Candidate Profile</title>

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

.container{
width:80%;
margin:40px auto;
}

.header{
background:#1e3c72;
color:white;
padding:20px;
border-radius:10px;
margin-bottom:25px;
}

.profile-card{
background:white;
border-radius:12px;
box-shadow:0 5px 15px rgba(0,0,0,.15);
padding:30px;
}

.profile-top{
text-align:center;
margin-bottom:30px;
}

.profile-top i{
font-size:90px;
color:#1e3c72;
margin-bottom:15px;
}

.profile-top h2{
color:#1e3c72;
}

table{
width:100%;
border-collapse:collapse;
}

table td{
padding:15px;
border-bottom:1px solid #ddd;
}

.title{
font-weight:bold;
width:250px;
background:#f5f5f5;
}

.back{
display:inline-block;
margin-top:25px;
padding:12px 25px;
background:#1e3c72;
color:white;
text-decoration:none;
border-radius:6px;
}

.back:hover{
background:#16335f;
}

</style>

</head>

<body>

<div class="container">

<div class="header">
<h2>Candidate Profile</h2>
</div>

<div class="profile-card">

<div class="profile-top">

<i class="fa-solid fa-circle-user"></i>

<h2><%=c.getFirstName()%> <%=c.getLastName()%></h2>

</div>

<table>

<tr>
<td class="title">Candidate ID</td>
<td><%=c.getCandidateId()%></td>
</tr>

<tr>
<td class="title">Email</td>
<td><%=c.getEmail()%></td>
</tr>

<tr>
<td class="title">Mobile</td>
<td><%=c.getMobileNo()%></td>
</tr>

<tr>
<td class="title">Gender</td>
<td><%=c.getGender()%></td>
</tr>

<tr>
<td class="title">Current Job</td>
<td><%=c.getCurrentJobTitle()%></td>
</tr>

<tr>
<td class="title">Experience</td>
<td><%=c.getExperienceYears()%> Years</td>
</tr>

<tr>
<td class="title">City</td>
<td><%=c.getCity()%></td>
</tr>

<tr>
<td class="title">State</td>
<td><%=c.getState()%></td>
</tr>

<tr>
<td class="title">Address</td>
<td><%=c.getAddress()%></td>
</tr>

<tr>
<td class="title">Profile Summary</td>
<td><%=c.getProfileSummary()%></td>
</tr>

</table>

<a href="viewAssignedApplications" class="back">
<i class="fa fa-arrow-left"></i> Back
</a>

</div>

</div>

</body>
</html>