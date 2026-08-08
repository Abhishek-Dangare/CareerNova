
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.careernova.bean.ReportBean"%>

<%
ReportBean r = (ReportBean) request.getAttribute("report");
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>CareerNova | Reports</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Poppins',sans-serif;
}

body{
    min-height:100vh;
    background:#f1f5f9;
    color:#1e293b;
}

/* ================= HEADER ================= */

.header{
    height:75px;
    background:#ffffff;
    border-bottom:1px solid #e2e8f0;

    display:flex;
    align-items:center;
    justify-content:space-between;

    padding:0 45px;

    box-shadow:0 2px 10px rgba(15,23,42,.05);
}

.logo{
    display:flex;
    align-items:center;
    gap:12px;
}

.logo-icon{
    width:42px;
    height:42px;

    border-radius:10px;

    background:linear-gradient(135deg,#1d4ed8,#2563eb);

    color:white;

    display:flex;
    align-items:center;
    justify-content:center;

    font-size:20px;
}

.logo h2{
    font-size:20px;
    font-weight:600;
    color:#1e3a8a;
}

.logo span{
    font-size:12px;
    color:#64748b;
    display:block;
}

/* ================= CONTAINER ================= */

.container{
    width:92%;
    max-width:1200px;
    margin:35px auto;
}

/* ================= PAGE TITLE ================= */

.page-header{
    display:flex;
    align-items:center;
    justify-content:space-between;

    margin-bottom:30px;
}

.page-title h1{
    font-size:27px;
    font-weight:600;
    color:#0f172a;
}

.page-title p{
    margin-top:5px;
    color:#64748b;
    font-size:13px;
}

/* Back Button */

.back-btn{
    display:flex;
    align-items:center;
    gap:7px;

    padding:10px 18px;

    background:#ffffff;

    color:#334155;

    text-decoration:none;

    border:1px solid #e2e8f0;

    border-radius:9px;

    font-size:13px;
    font-weight:500;

    transition:.25s;
}

.back-btn:hover{
    background:#f8fafc;
    border-color:#cbd5e1;
    transform:translateY(-1px);
}

/* ================= REPORT GRID ================= */

.cards{
    display:grid;

    grid-template-columns:
        repeat(3,1fr);

    gap:22px;
}

/* ================= CARD ================= */

.card{

    position:relative;

    background:#ffffff;

    border:1px solid #e5e7eb;

    border-radius:14px;

    padding:25px;

    min-height:155px;

    box-shadow:
        0 5px 15px rgba(15,23,42,.05);

    transition:.25s;

    overflow:hidden;
}

.card:hover{

    transform:translateY(-4px);

    box-shadow:
        0 12px 25px rgba(15,23,42,.09);

}

/* Top Accent */

.card::before{

    content:"";

    position:absolute;

    top:0;
    left:0;

    width:100%;
    height:4px;

    background:#2563eb;

}

/* Icon */

.card-icon{

    width:45px;
    height:45px;

    border-radius:10px;

    background:#eff6ff;

    display:flex;
    align-items:center;
    justify-content:center;

    font-size:21px;

    margin-bottom:15px;
}

/* Text */

.card h3{

    font-size:13px;

    font-weight:500;

    color:#64748b;

    margin-bottom:5px;
}

.card p{

    font-size:30px;

    font-weight:600;

    color:#0f172a;
}

/* ================= SUMMARY ================= */

.summary{

    margin-top:30px;

    background:#ffffff;

    border:1px solid #e5e7eb;

    border-radius:14px;

    padding:22px 25px;

    box-shadow:
        0 5px 15px rgba(15,23,42,.04);
}

.summary h3{

    font-size:15px;

    font-weight:600;

    color:#1e293b;

    margin-bottom:8px;
}

.summary p{

    font-size:13px;

    color:#64748b;

}

/* ================= RESPONSIVE ================= */

@media(max-width:900px){

    .cards{
        grid-template-columns:
            repeat(2,1fr);
    }

}

@media(max-width:600px){

    .header{
        padding:0 20px;
    }

    .container{
        width:92%;
    }

    .page-header{
        align-items:flex-start;
        gap:15px;
        flex-direction:column;
    }

    .cards{
        grid-template-columns:1fr;
    }

}

</style>

</head>

<body>


<!-- ================= HEADER ================= -->

<div class="header">

    <div class="logo">

        <div class="logo-icon">
            📊
        </div>

        <div>
            <h2>CareerNova</h2>
            <span>Recruitment Management System</span>
        </div>

    </div>

</div>


<!-- ================= MAIN ================= -->

<div class="container">


    <!-- Page Header -->

    <div class="page-header">

        <div class="page-title">

            <h1>System Reports</h1>

            <p>
                Overview of CareerNova recruitment activities
            </p>

        </div>


        <a href="AdminHome.jsp" class="back-btn">
            ← Back to Dashboard
        </a>

    </div>


    <!-- ================= REPORT CARDS ================= -->

    <div class="cards">


        <!-- Companies -->

        <div class="card">

            <div class="card-icon">
                🏢
            </div>

            <h3>Total Companies</h3>

            <p>
                <%=r.getTotalCompanies()%>
            </p>

        </div>


        <!-- HR -->

        <div class="card">

            <div class="card-icon">
                👨‍💼
            </div>

            <h3>Total HR</h3>

            <p>
                <%=r.getTotalHR()%>
            </p>

        </div>


        <!-- Candidates -->

        <div class="card">

            <div class="card-icon">
                👥
            </div>

            <h3>Total Candidates</h3>

            <p>
                <%=r.getTotalCandidates()%>
            </p>

        </div>


        <!-- Jobs -->

        <div class="card">

            <div class="card-icon">
                💼
            </div>

            <h3>Total Jobs</h3>

            <p>
                <%=r.getTotalJobs()%>
            </p>

        </div>


        <!-- Open Jobs -->

        <div class="card">

            <div class="card-icon">
                🟢
            </div>

            <h3>Open Jobs</h3>

            <p>
                <%=r.getOpenJobs()%>
            </p>

        </div>


        <!-- Closed Jobs -->

        <div class="card">

            <div class="card-icon">
                🔒
            </div>

            <h3>Closed Jobs</h3>

            <p>
                <%=r.getClosedJobs()%>
            </p>

        </div>


    </div>


    <!-- ================= SUMMARY ================= -->

    <div class="summary">

        <h3>📈 Recruitment Overview</h3>

        <p>
            This report provides a quick overview of companies,
            HR users, candidates and job postings currently available
            in the CareerNova recruitment management system.
        </p>

    </div>


</div>


</body>

</html>
