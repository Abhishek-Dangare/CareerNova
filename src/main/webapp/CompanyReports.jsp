<%@page import="com.careernova.bean.CompanyReportBean"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%
CompanyReportBean report =
(CompanyReportBean) request.getAttribute("report");
%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>CareerNova | Company Reports</title>

<style>

/* =========================
   GLOBAL
========================= */

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:"Segoe UI",Arial,sans-serif;
}

body{
    min-height:100vh;
    background:#f5f7fb;
    color:#1e293b;
}


/* =========================
   HEADER
========================= */

.header{
    background:linear-gradient(135deg,#0f172a,#1e3a8a);
    color:white;
    padding:20px 6%;
    display:flex;
    align-items:center;
    justify-content:space-between;
    box-shadow:0 4px 18px rgba(0,0,0,.15);
}

.brand{
    display:flex;
    align-items:center;
    gap:12px;
}

.brand-logo{
    width:44px;
    height:44px;
    border-radius:11px;
    background:#3b82f6;
    display:flex;
    align-items:center;
    justify-content:center;
    font-size:23px;
    font-weight:bold;
    box-shadow:0 4px 10px rgba(0,0,0,.2);
}

.brand h2{
    font-size:23px;
    letter-spacing:.5px;
}

.header-right{
    font-size:14px;
    opacity:.85;
}


/* =========================
   MAIN CONTAINER
========================= */

.container{
    width:88%;
    max-width:1250px;
    margin:40px auto;
}


/* =========================
   PAGE TITLE
========================= */

.page-title{
    margin-bottom:30px;
    display:flex;
    justify-content:space-between;
    align-items:center;
    gap:20px;
}

.page-title h1{
    font-size:30px;
    color:#0f172a;
    margin-bottom:7px;
}

.page-title p{
    color:#64748b;
    font-size:15px;
}


/* =========================
   BACK BUTTON
========================= */

.back-btn{
    display:inline-flex;
    align-items:center;
    gap:8px;
    text-decoration:none;
    background:#0f172a;
    color:white;
    padding:12px 19px;
    border-radius:9px;
    font-size:14px;
    font-weight:600;
    transition:all .3s ease;
    white-space:nowrap;
    box-shadow:0 4px 10px rgba(15,23,42,.15);
}

.back-btn:hover{
    background:#2563eb;
    transform:translateY(-2px);
    box-shadow:0 7px 16px rgba(37,99,235,.25);
}


/* =========================
   SUMMARY BAR
========================= */

.summary{
    background:white;
    border-radius:14px;
    padding:18px 22px;
    margin-bottom:25px;
    display:flex;
    justify-content:space-between;
    align-items:center;
    box-shadow:0 4px 18px rgba(15,23,42,.07);
    border:1px solid #e8edf5;
}

.summary-title{
    font-weight:600;
    color:#334155;
}

.status{
    display:flex;
    align-items:center;
    gap:8px;
    color:#16a34a;
    font-size:14px;
    font-weight:600;
}

.status-dot{
    width:9px;
    height:9px;
    background:#22c55e;
    border-radius:50%;
}


/* =========================
   CARDS
========================= */

.cards{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:22px;
}

.card{
    position:relative;
    background:white;
    border-radius:16px;
    padding:25px;
    min-height:170px;
    overflow:hidden;
    border:1px solid #e7ebf2;
    box-shadow:0 6px 20px rgba(15,23,42,.07);
    transition:all .3s ease;
}

.card:hover{
    transform:translateY(-7px);
    box-shadow:0 14px 30px rgba(15,23,42,.14);
}


/* =========================
   CARD TOP LINE
========================= */

.card::before{
    content:"";
    position:absolute;
    top:0;
    left:0;
    width:100%;
    height:4px;
    background:#3b82f6;
}


/* =========================
   ICON
========================= */

.icon{
    width:50px;
    height:50px;
    border-radius:13px;
    display:flex;
    align-items:center;
    justify-content:center;
    font-size:23px;
    margin-bottom:16px;
    background:#eff6ff;
}


/* =========================
   CARD CONTENT
========================= */

.card h2{
    font-size:35px;
    color:#0f172a;
    margin-bottom:5px;
}

.card p{
    font-size:14px;
    color:#64748b;
    font-weight:600;
}


/* =========================
   ICON BACKGROUNDS
========================= */

.hr .icon{
    background:#eef2ff;
}

.jobs .icon{
    background:#ecfeff;
}

.applications .icon{
    background:#eff6ff;
}

.candidates .icon{
    background:#f0fdf4;
}

.shortlisted .icon{
    background:#ecfdf5;
}

.selected .icon{
    background:#f0fdf4;
}

.rejected .icon{
    background:#fef2f2;
}

.interviews .icon{
    background:#fff7ed;
}


/* =========================
   CARD ACCENT COLORS
========================= */

.hr::before{
    background:#6366f1;
}

.jobs::before{
    background:#06b6d4;
}

.applications::before{
    background:#3b82f6;
}

.candidates::before{
    background:#22c55e;
}

.shortlisted::before{
    background:#10b981;
}

.selected::before{
    background:#16a34a;
}

.rejected::before{
    background:#ef4444;
}

.interviews::before{
    background:#f97316;
}


/* =========================
   FOOTER
========================= */

.footer{
    text-align:center;
    margin:45px 0 25px;
    color:#94a3b8;
    font-size:13px;
}


/* =========================
   TABLET
========================= */

@media(max-width:1000px){

    .cards{
        grid-template-columns:repeat(2,1fr);
    }

}


/* =========================
   MOBILE
========================= */

@media(max-width:600px){

    .header{
        padding:18px 5%;
    }

    .header-right{
        display:none;
    }

    .container{
        width:92%;
        margin:25px auto;
    }

    .page-title{
        flex-direction:column;
        align-items:flex-start;
    }

    .page-title h1{
        font-size:25px;
    }

    .back-btn{
        width:100%;
        justify-content:center;
    }

    .summary{
        align-items:flex-start;
        gap:10px;
        flex-direction:column;
    }

    .cards{
        grid-template-columns:1fr;
    }

}

</style>

</head>

<body>

<!-- =========================
     HEADER
========================= -->

<header class="header">

```
<div class="brand">

    <div class="brand-logo">
        C
    </div>

    <h2>CareerNova</h2>

</div>

<div class="header-right">
    Company Management System
</div>
```

</header>

<!-- =========================
     MAIN CONTAINER
========================= -->

<div class="container">

```
<!-- PAGE TITLE -->

<div class="page-title">

    <div>

        <h1>Company Reports</h1>

        <p>
            Recruitment performance and workforce analytics
        </p>

    </div>


    <!-- BACK TO DASHBOARD -->

    <a href="CompanyHome.jsp" class="back-btn">
        ← Back to Dashboard
    </a>

</div>



<!-- =========================
     SUMMARY
========================= -->

<div class="summary">

    <div class="summary-title">
        Recruitment Overview
    </div>

    <div class="status">

        <span class="status-dot"></span>

        System Active

    </div>

</div>



<!-- =========================
     REPORT CARDS
========================= -->

<div class="cards">


    <!-- TOTAL HR -->

    <div class="card hr">

        <div class="icon">
            👥
        </div>

        <h2>
            <%=report.getTotalHR()%>
        </h2>

        <p>
            Total HR
        </p>

    </div>



    <!-- TOTAL JOBS -->

    <div class="card jobs">

        <div class="icon">
            💼
        </div>

        <h2>
            <%=report.getTotalJobs()%>
        </h2>

        <p>
            Total Jobs
        </p>

    </div>



    <!-- APPLICATIONS -->

    <div class="card applications">

        <div class="icon">
            📄
        </div>

        <h2>
            <%=report.getTotalApplications()%>
        </h2>

        <p>
            Total Applications
        </p>

    </div>



    <!-- CANDIDATES -->

    <div class="card candidates">

        <div class="icon">
            👤
        </div>

        <h2>
            <%=report.getTotalCandidates()%>
        </h2>

        <p>
            Total Candidates
        </p>

    </div>



    <!-- SHORTLISTED -->

    <div class="card shortlisted">

        <div class="icon">
            ⭐
        </div>

        <h2>
            <%=report.getShortlisted()%>
        </h2>

        <p>
            Shortlisted
        </p>

    </div>



    <!-- SELECTED -->

    <div class="card selected">

        <div class="icon">
            ✓
        </div>

        <h2>
            <%=report.getSelected()%>
        </h2>

        <p>
            Selected Candidates
        </p>

    </div>



    <!-- REJECTED -->

    <div class="card rejected">

        <div class="icon">
            ✕
        </div>

        <h2>
            <%=report.getRejected()%>
        </h2>

        <p>
            Rejected Candidates
        </p>

    </div>



    <!-- INTERVIEWS -->

    <div class="card interviews">

        <div class="icon">
            🎯
        </div>

        <h2>
            <%=report.getInterviews()%>
        </h2>

        <p>
            Interviews
        </p>

    </div>


</div>



<!-- =========================
     FOOTER
========================= -->

<div class="footer">

    © 2026 CareerNova — Smart Recruitment & Career Management Platform

</div>
```

</div>

</body>

</html>
