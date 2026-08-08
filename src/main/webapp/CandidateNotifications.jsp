<%@page import="java.util.ArrayList"%>
<%@page import="com.careernova.bean.NotificationBean"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%
ArrayList<NotificationBean> list =
(ArrayList<NotificationBean>)request.getAttribute("notificationList");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CareerNova | Notifications</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Segoe UI',sans-serif;
}

body{

background:#eef3f8;

}

.header{

background:#0f172a;
color:white;
padding:20px 40px;
display:flex;
justify-content:space-between;
align-items:center;

}

.header h1{

font-size:32px;

}

.back{

text-decoration:none;
background:#2563eb;
color:white;
padding:10px 20px;
border-radius:8px;

}

.back:hover{

background:#1d4ed8;

}

.container{

width:90%;
margin:40px auto;

}

.notification-card{

background:white;
padding:25px;
margin-bottom:20px;
border-radius:12px;
box-shadow:0px 5px 15px rgba(0,0,0,.15);
border-left:6px solid #2563eb;

}

.notification-card:hover{

transform:translateY(-4px);
transition:.3s;

}

.top{

display:flex;
justify-content:space-between;
align-items:center;
margin-bottom:15px;

}

.top h2{

color:#1e3a8a;
font-size:24px;

}

.status{

background:#2563eb;
color:white;
padding:6px 15px;
border-radius:20px;
font-size:14px;

}

.message{

font-size:18px;
line-height:30px;
color:#444;
margin-bottom:15px;

}

.date{

color:gray;
font-size:15px;

}

.empty{

background:white;
padding:50px;
text-align:center;
font-size:25px;
border-radius:12px;
box-shadow:0px 5px 15px rgba(0,0,0,.15);

}

</style>

</head>

<body>

<div class="header">

<h1>🔔 Candidate Notifications</h1>

<a href="CandidateHome.jsp" class="back">
← Back
</a>

</div>

<div class="container">

<%

if(list!=null && !list.isEmpty())
{

for(NotificationBean nb:list)
{

%>

<div class="notification-card">

<div class="top">

<h2>🔔 Notification</h2>

<span class="status">

<%=nb.getNotificationStatus()%>

</span>

</div>

<div class="message">

<%=nb.getMessage()%>

</div>

<div class="date">

<strong>Date :</strong>

<%=nb.getCreatedDate()%>

</div>

</div>

<%

}

}
else
{

%>

<div class="empty">

🔕 No Notifications Available

</div>

<%

}

%>

</div>

</body>
</html>