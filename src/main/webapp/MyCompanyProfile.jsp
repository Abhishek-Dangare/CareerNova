<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="com.careernova.bean.CompanyBean"%>

<%
CompanyBean c = (CompanyBean)request.getAttribute("company");
%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>My Company Profile | CareerNova</title>

<style>

/* =========================
   RESET
========================= */

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:"Segoe UI",Arial,sans-serif;
}


/* =========================
   BODY
========================= */

body{
    min-height:100vh;
    background:#f4f7fb;
    color:#1e293b;
}


/* =========================
   TOP HEADER
========================= */

.header{
    height:70px;
    background:linear-gradient(135deg,#0f172a,#1e3a8a);
    display:flex;
    align-items:center;
    justify-content:space-between;
    padding:0 6%;
    color:white;
    box-shadow:0 4px 15px rgba(0,0,0,.15);
}

.logo-area{
    display:flex;
    align-items:center;
    gap:12px;
}

.logo{
    width:42px;
    height:42px;
    border-radius:10px;
    background:#3b82f6;
    display:flex;
    align-items:center;
    justify-content:center;
    font-size:22px;
    font-weight:bold;
}

.logo-area h1{
    font-size:22px;
    letter-spacing:.4px;
}

.header-text{
    font-size:14px;
    opacity:.85;
}


/* =========================
   MAIN CONTAINER
========================= */

.container{
    width:88%;
    max-width:950px;
    margin:40px auto;
}


/* =========================
   TOP BAR
========================= */

.top-bar{
    display:flex;
    justify-content:space-between;
    align-items:center;
    margin-bottom:25px;
}

.title-section h2{
    font-size:29px;
    color:#0f172a;
    margin-bottom:5px;
}

.title-section p{
    color:#64748b;
    font-size:14px;
}


/* =========================
   BACK BUTTON
========================= */

.back{
    text-decoration:none;
    padding:11px 19px;
    background:#0f172a;
    color:white;
    border-radius:8px;
    font-size:14px;
    font-weight:600;
    transition:.3s;
    box-shadow:0 4px 10px rgba(15,23,42,.15);
}

.back:hover{
    background:#2563eb;
    transform:translateY(-2px);
}


/* =========================
   MAIN CARD
========================= */

.profile-card{
    background:white;
    border-radius:16px;
    overflow:hidden;
    border:1px solid #e2e8f0;
    box-shadow:0 8px 25px rgba(15,23,42,.08);
}


/* =========================
   PROFILE HEADER
========================= */

.profile-header{
    background:linear-gradient(135deg,#1e3a8a,#2563eb);
    padding:27px 30px;
    color:white;
    display:flex;
    align-items:center;
    gap:18px;
}

.company-icon{
    width:58px;
    height:58px;
    border-radius:14px;
    background:rgba(255,255,255,.16);
    border:1px solid rgba(255,255,255,.25);
    display:flex;
    align-items:center;
    justify-content:center;
    font-size:27px;
}

.profile-header h3{
    font-size:21px;
    margin-bottom:4px;
}

.profile-header p{
    font-size:13px;
    opacity:.85;
}


/* =========================
   FORM AREA
========================= */

.form-area{
    padding:32px;
}

.form-title{
    font-size:17px;
    font-weight:700;
    color:#0f172a;
    margin-bottom:22px;
    padding-bottom:12px;
    border-bottom:1px solid #e5e7eb;
}


/* =========================
   TABLE
========================= */

table{
    width:100%;
    border-collapse:separate;
    border-spacing:0 17px;
}

td{
    padding:0 8px;
    vertical-align:middle;
}

td:first-child{
    width:180px;
    font-size:14px;
    font-weight:600;
    color:#334155;
}


/* =========================
   INPUTS
========================= */

input,
textarea{
    width:100%;
    padding:12px 14px;
    border:1px solid #d5dce6;
    border-radius:8px;
    background:#fff;
    color:#1e293b;
    font-size:14px;
    outline:none;
    transition:.25s;
}

input:hover,
textarea:hover{
    border-color:#94a3b8;
}

input:focus,
textarea:focus{
    border-color:#3b82f6;
    box-shadow:0 0 0 3px rgba(59,130,246,.12);
}


/* =========================
   TEXTAREA
========================= */

textarea{
    min-height:95px;
    resize:vertical;
}


/* =========================
   UPDATE BUTTON
========================= */

input[type=submit]{
    width:auto;
    min-width:180px;
    padding:13px 25px;
    background:#2563eb;
    color:white;
    border:none;
    border-radius:8px;
    cursor:pointer;
    font-size:14px;
    font-weight:600;
    box-shadow:0 4px 12px rgba(37,99,235,.25);
    transition:.3s;
}

input[type=submit]:hover{
    background:#1d4ed8;
    transform:translateY(-2px);
    box-shadow:0 7px 16px rgba(37,99,235,.3);
}


/* =========================
   BUTTON ROW
========================= */

.button-row{
    padding-top:18px;
    border-top:1px solid #e5e7eb;
}


/* =========================
   FOOTER
========================= */

.footer{
    text-align:center;
    margin:30px 0;
    color:#94a3b8;
    font-size:13px;
}


/* =========================
   TABLET
========================= */

@media(max-width:750px){

    .header{
        padding:0 4%;
    }

    .header-text{
        display:none;
    }

    .container{
        width:92%;
        margin:25px auto;
    }

    .top-bar{
        align-items:flex-start;
        gap:15px;
    }

    td:first-child{
        width:140px;
    }

}


/* =========================
   MOBILE
========================= */

@media(max-width:600px){

    .top-bar{
        flex-direction:column;
    }

    .back{
        width:100%;
        text-align:center;
    }

    .title-section h2{
        font-size:24px;
    }

    .form-area{
        padding:22px 16px;
    }

    .profile-header{
        padding:22px;
    }

    .profile-header h3{
        font-size:18px;
    }

    table,
    tbody,
    tr,
    td{
        display:block;
        width:100%;
    }

    tr{
        margin-bottom:17px;
    }

    td:first-child{
        width:100%;
        margin-bottom:7px;
    }

    td{
        padding:0;
    }

    .button-row{
        text-align:center;
    }

    input[type=submit]{
        width:100%;
    }

}

</style>

</head>

<body>

<!-- =========================
     HEADER
========================= -->

<div class="header">

```
<div class="logo-area">

    <div class="logo">
        C
    </div>

    <h1>CareerNova</h1>

</div>

<div class="header-text">
    Company Management System
</div>

</div>

<!-- =========================
     MAIN
========================= -->

<div class="container">

```
<!-- TOP BAR -->

<div class="top-bar">

    <div class="title-section">

        <h2>My Company Profile</h2>

        <p>
            Manage your company information
        </p>

    </div>


    <a href="CompanyHome.jsp" class="back">
        ← Dashboard
    </a>

</div>



<!-- PROFILE CARD -->

<div class="profile-card">


    <!-- PROFILE HEADER -->

    <div class="profile-header">

        <div class="company-icon">
            🏢
        </div>

        <div>

            <h3>
                <%=c!=null?c.getCompanyName():"My Company"%>
            </h3>

            <p>
                Company Information
            </p>

        </div>

    </div>



    <!-- FORM -->

    <div class="form-area">

        <div class="form-title">
            Company Details
        </div>


        <form action="UpdateMyCompany" method="post">


            <table>


                <tr>

                    <td>Company Name</td>

                    <td>

                        <input
                            type="text"
                            name="companyName"
                            value="<%=c!=null?c.getCompanyName():""%>"
                            required>

                    </td>

                </tr>


                <tr>

                    <td>Email</td>

                    <td>

                        <input
                            type="email"
                            name="companyEmail"
                            value="<%=c!=null?c.getCompanyEmail():""%>"
                            required>

                    </td>

                </tr>


                <tr>

                    <td>Phone</td>

                    <td>

                        <input
                            type="text"
                            name="companyPhone"
                            value="<%=c!=null?c.getCompanyPhone():""%>">

                    </td>

                </tr>


                <tr>

                    <td>Website</td>

                    <td>

                        <input
                            type="text"
                            name="website"
                            value="<%=c!=null?c.getWebsite():""%>">

                    </td>

                </tr>


                <tr>

                    <td>Industry</td>

                    <td>

                        <input
                            type="text"
                            name="industry"
                            value="<%=c!=null?c.getIndustry():""%>">

                    </td>

                </tr>


                <tr>

                    <td>Company Size</td>

                    <td>

                        <input
                            type="number"
                            name="companySize"
                            value="<%=c!=null?c.getCompanySize():""%>">

                    </td>

                </tr>


                <tr>

                    <td>Address</td>

                    <td>

                        <textarea name="address"><%=c!=null?c.getAddress():""%></textarea>

                    </td>

                </tr>


                <tr>

                    <td>City</td>

                    <td>

                        <input
                            type="text"
                            name="city"
                            value="<%=c!=null?c.getCity():""%>">

                    </td>

                </tr>


                <tr>

                    <td>State</td>

                    <td>

                        <input
                            type="text"
                            name="state"
                            value="<%=c!=null?c.getState():""%>">

                    </td>

                </tr>


                <tr>

                    <td>Pincode</td>

                    <td>

                        <input
                            type="text"
                            name="pincode"
                            value="<%=c!=null?c.getPincode():""%>">

                    </td>

                </tr>


                <tr>

                    <td>Description</td>

                    <td>

                        <textarea name="description"><%=c!=null?c.getDescription():""%></textarea>

                    </td>

                </tr>


                <tr>

                    <td></td>

                    <td class="button-row">

                        <input
                            type="submit"
                            value="✓ Update Profile">

                    </td>

                </tr>


            </table>


        </form>

    </div>

</div>


<!-- FOOTER -->

<div class="footer">

    © 2026 CareerNova — Smart Recruitment & Career Management Platform

</div>


</div>

</body>

</html>
