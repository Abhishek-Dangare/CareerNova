
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>CareerNova | HR Dashboard</title>

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:"Poppins",sans-serif;
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
    color:white;
    left:0;
    top:0;
}

.sidebar h2{
    text-align:center;
    padding:25px;
    font-size:28px;
    background:#16335f;
}

.sidebar ul{
    list-style:none;
    margin-top:20px;
}

.sidebar ul li{
    padding:16px 25px;
    border-bottom:1px solid rgba(255,255,255,.1);
}

.sidebar ul li:hover{
    background:#28539a;
    cursor:pointer;
}

.sidebar ul li a{
    color:white;
    text-decoration:none;
    font-size:17px;
    display:block;
}

.sidebar ul li i{
    margin-right:12px;
}

/* Main */

.main{
    margin-left:250px;
    padding:25px;
}

/* Header */

.header{
    background:white;
    padding:18px 30px;
    border-radius:10px;
    box-shadow:0px 3px 10px rgba(0,0,0,.1);

    display:flex;
    justify-content:space-between;
    align-items:center;
}

.header h2{
    color:#1e3c72;
}

.header span{
    font-size:18px;
    font-weight:bold;
    color:#444;
}

/* Cards */

.cards{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(220px,1fr));
    gap:20px;
    margin-top:30px;
}

.card{
    background:white;
    padding:25px;
    border-radius:12px;
    box-shadow:0px 5px 15px rgba(0,0,0,.1);
    text-align:center;
    transition:.3s;
}

.card:hover{
    transform:translateY(-5px);
}

.card i{
    font-size:40px;
    color:#1e3c72;
    margin-bottom:15px;
}

.card h3{
    color:#555;
    margin-bottom:10px;
}

.card h1{
    font-size:35px;
    color:#1e3c72;
}

/* Welcome */

.welcome{
    margin-top:30px;
    background:white;
    padding:30px;
    border-radius:12px;
    box-shadow:0px 5px 15px rgba(0,0,0,.1);
}

.welcome h2{
    color:#1e3c72;
    margin-bottom:10px;
}

.welcome p{
    font-size:17px;
    color:#666;
    line-height:28px;
}

</style>

</head>

<body>

<!-- Sidebar -->

<div class="sidebar">

    <h2>CareerNova</h2>

    <ul>

        <!-- Dashboard -->
        <li>
            <a href="HRHome.jsp">
                <i class="fa-solid fa-house"></i>
                Dashboard
            </a>
        </li>

        <!-- Assigned Applications -->
        <li>
            <a href="viewAssignedApplications">
                <i class="fa-solid fa-file-lines"></i>
                Assigned Applications
            </a>
        </li>

        <!-- Candidate Profile -->
        <li>
            <a href="viewCandidateProfile">
                <i class="fa-solid fa-user"></i>
                View Candidate Profile
            </a>
        </li>

        <!-- Shortlist Candidate -->
        <li>
            <a href="viewShortlistCandidate">
                <i class="fa-solid fa-star"></i>
                Shortlist Candidate
            </a>
        </li>

        <!-- Interview Feedback -->
        <li>
            <a href="InterviewFeedback.jsp">
                <i class="fa-solid fa-comments"></i>
                Interview Feedback
            </a>
        </li>

        <!-- Change Password -->
        <li>
            <a href="ChangePassword.jsp">
                <i class="fa-solid fa-key"></i>
                Change Password
            </a>
        </li>

        <!-- Logout -->
        <li>
            <a href="Logout">
                <i class="fa-solid fa-right-from-bracket"></i>
                Logout
            </a>
        </li>

    </ul>

</div>


<!-- Main -->

<div class="main">

    <div class="header">

        <h2>HR Dashboard</h2>

        <span>Welcome HR</span>

    </div>


    <!-- Cards -->

    <div class="cards">

        <!-- Assigned Applications -->

        <a href="viewAssignedApplications"
           style="text-decoration:none;color:inherit;">

            <div class="card">

                <i class="fa-solid fa-file-lines"></i>

                <h3>Assigned Applications</h3>

                <h1>18</h1>

            </div>

        </a>


        <!-- Pending Review -->

        <a href="pendingReview"
           style="text-decoration:none;color:inherit;">

            <div class="card">

                <i class="fa-solid fa-user-clock"></i>

                <h3>Pending Review</h3>

                <h1>08</h1>

            </div>

        </a>


        <!-- Shortlisted -->

        <a href="shortlistedApplications"
           style="text-decoration:none;color:inherit;">

            <div class="card">

                <i class="fa-solid fa-user-check"></i>

                <h3>Shortlisted</h3>

                <h1>15</h1>

            </div>

        </a>


        <!-- Interview Feedback -->

        <a href="interviewFeedback"
           style="text-decoration:none;color:inherit;">

            <div class="card">

                <i class="fa-solid fa-check-circle"></i>

                <h3>Interview Feedback</h3>

                <h1>05</h1>

            </div>

        </a>

    </div>


    <!-- Welcome -->

    <div class="welcome">

        <h2>Welcome to CareerNova HR Portal</h2>

        <p>
            Manage assigned job applications, review candidate profiles,
            shortlist eligible candidates, provide interview feedback,
            and efficiently handle the complete recruitment process.
        </p>

    </div>

</div>

</body>
</html>

