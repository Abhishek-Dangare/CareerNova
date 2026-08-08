```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>CareerNova | Complete Profile</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
      rel="stylesheet">


<style>

/* =====================================================
   RESET
===================================================== */

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Poppins',sans-serif;
}


/* =====================================================
   BODY
===================================================== */

body{

    min-height:100vh;

    background:
        linear-gradient(
            135deg,
            #eef4ff,
            #f8fafc
        );

    color:#1e293b;

}


/* =====================================================
   SIDEBAR
===================================================== */

.left-panel{

    position:fixed;

    top:20px;
    left:20px;

    width:255px;

    height:calc(100vh - 40px);

    background:
        linear-gradient(
            180deg,
            #0f172a,
            #172554
        );

    color:white;

    border-radius:20px;

    padding:25px 18px;

    box-shadow:
        0 15px 40px rgba(15,23,42,.20);

    overflow-y:auto;

    z-index:1000;
}


/* =====================================================
   PROFILE BOX
===================================================== */

.profile-box{

    text-align:center;

    padding-bottom:20px;

}

.profile-box img{

    width:82px;
    height:82px;

    object-fit:cover;

    border-radius:50%;

    border:4px solid rgba(255,255,255,.9);

    margin-bottom:10px;

    box-shadow:
        0 8px 25px rgba(37,99,235,.35);

}

.profile-box h4{

    font-size:18px;

    font-weight:600;

    margin-bottom:3px;

}

.profile-box p{

    color:#94a3b8;

    font-size:11px;

}


/* =====================================================
   DIVIDER
===================================================== */

.sidebar-line{

    border:0;

    border-top:1px solid rgba(255,255,255,.10);

    margin:5px 0 20px;

}


/* =====================================================
   PROFILE COMPLETION
===================================================== */

.completion-title{

    display:flex;

    justify-content:space-between;

    align-items:center;

    margin-bottom:8px;

}

.completion-title h6{

    font-size:11px;

    font-weight:500;

    color:#cbd5e1;

    margin:0;

}

.completion-title span{

    font-size:11px;

    color:#60a5fa;

    font-weight:600;

}

.progress{

    height:7px;

    background:rgba(255,255,255,.10);

    border-radius:20px;

    overflow:hidden;

    margin-bottom:25px;

}

.progress-bar{

    background:
        linear-gradient(
            90deg,
            #2563eb,
            #60a5fa
        );

    border-radius:20px;

}


/* =====================================================
   MENU
===================================================== */

.menu{

    list-style:none;

    padding:0;

    margin:0;

}


/* Menu item */

.menu li{

    margin-bottom:8px;

}


/* IMPORTANT:
   Actual sidebar button */

.menu li a{

    display:flex;

    align-items:center;

    gap:12px;

    width:100%;

    min-height:48px;

    padding:12px 15px;

    border-radius:11px;

    color:#cbd5e1;

    background:rgba(255,255,255,.045);

    border:1px solid rgba(255,255,255,.055);

    text-decoration:none;

    font-size:13px;

    font-weight:500;

    transition:
        background .25s ease,
        color .25s ease,
        transform .25s ease,
        box-shadow .25s ease;

}


/* Icon */

.menu li a .menu-icon{

    width:28px;

    height:28px;

    display:flex;

    align-items:center;

    justify-content:center;

    border-radius:8px;

    background:rgba(255,255,255,.07);

    font-size:15px;

    flex-shrink:0;

}


/* Text */

.menu li a .menu-text{

    flex:1;

}


/* Arrow */

.menu li a .arrow{

    color:#64748b;

    font-size:13px;

    transition:.25s;

}


/* Hover */

.menu li a:hover{

    background:#2563eb;

    color:#ffffff;

    border-color:#3b82f6;

    transform:translateX(4px);

    box-shadow:
        0 6px 18px rgba(37,99,235,.25);

}

.menu li a:hover .menu-icon{

    background:rgba(255,255,255,.16);

}

.menu li a:hover .arrow{

    color:#ffffff;

    transform:translateX(3px);

}


/* =====================================================
   ACTIVE ITEM
===================================================== */

.menu li a.active{

    background:
        linear-gradient(
            135deg,
            #2563eb,
            #1d4ed8
        );

    color:white;

    border-color:#3b82f6;

    box-shadow:
        0 7px 20px rgba(37,99,235,.28);

}


.menu li a.active .menu-icon{

    background:rgba(255,255,255,.16);

}

.menu li a.active .arrow{

    color:white;

}


/* =====================================================
   MAIN CONTENT
===================================================== */

.main-content{

    margin-left:295px;

    padding:35px 35px 50px;

}


/* =====================================================
   TOP BAR
===================================================== */

.topbar{

    display:flex;

    justify-content:space-between;

    align-items:center;

    margin-bottom:25px;

}

.topbar-left h1{

    font-size:25px;

    font-weight:600;

    color:#0f172a;

}

.topbar-left p{

    font-size:12px;

    color:#64748b;

    margin-top:4px;

}


/* Dashboard button */

.dashboard-btn{

    display:flex;

    align-items:center;

    gap:8px;

    padding:10px 17px;

    background:#ffffff;

    color:#334155;

    text-decoration:none;

    border:1px solid #e2e8f0;

    border-radius:9px;

    font-size:12px;

    font-weight:500;

    transition:.25s;

}

.dashboard-btn:hover{

    color:#2563eb;

    border-color:#2563eb;

    transform:translateY(-2px);

    box-shadow:
        0 5px 15px rgba(37,99,235,.10);

}


/* =====================================================
   PROFILE CARD
===================================================== */

.profile-card{

    width:100%;

    max-width:1050px;

    margin:auto;

    background:#ffffff;

    border-radius:20px;

    border:1px solid #e5e7eb;

    box-shadow:
        0 15px 40px rgba(15,23,42,.08);

    overflow:hidden;

}


/* =====================================================
   PROFILE HEADER
===================================================== */

.profile-header{

    position:relative;

    text-align:center;

    padding:35px 25px;

    background:
        linear-gradient(
            135deg,
            #1d4ed8,
            #2563eb,
            #3b82f6
        );

    color:white;

}


.profile-header::after{

    content:"";

    position:absolute;

    left:0;
    right:0;
    bottom:0;

    height:1px;

    background:rgba(255,255,255,.20);

}


.profile-header img{

    width:88px;
    height:88px;

    object-fit:cover;

    border-radius:50%;

    border:4px solid rgba(255,255,255,.9);

    margin-bottom:12px;

    box-shadow:
        0 10px 30px rgba(15,23,42,.20);

    transition:.3s;

}

.profile-header img:hover{

    transform:scale(1.05);

}

.profile-header h2{

    font-size:23px;

    font-weight:600;

    margin-bottom:5px;

}

.profile-header p{

    max-width:600px;

    margin:auto;

    font-size:12px;

    line-height:1.7;

    color:#dbeafe;

}


/* =====================================================
   FORM CONTAINER
===================================================== */

.form-container{

    padding:35px;

}


/* =====================================================
   SECTION TITLE
===================================================== */

.section-title{

    display:flex;

    align-items:center;

    gap:10px;

    font-size:16px;

    font-weight:600;

    color:#1e293b;

    margin-bottom:22px;

    padding-bottom:12px;

    border-bottom:1px solid #e5e7eb;

}

.section-title::before{

    content:"";

    width:4px;

    height:20px;

    background:#2563eb;

    border-radius:10px;

}


/* =====================================================
   FORM GRID
===================================================== */

.form-grid{

    display:grid;

    grid-template-columns:
        repeat(2,1fr);

    gap:20px 22px;

}


/* Full width */

.form-group.full{

    grid-column:
        1 / -1;

}


/* =====================================================
   LABEL
===================================================== */

.form-label{

    display:block;

    font-size:12px;

    font-weight:500;

    color:#334155;

    margin-bottom:7px;

}


/* Required */

.required{

    color:#ef4444;

}


/* =====================================================
   INPUT
===================================================== */

.form-control,
.form-select{

    width:100%;

    height:46px;

    padding:10px 13px;

    border:1px solid #dbe2ea;

    border-radius:9px;

    background:#f8fafc;

    color:#1e293b;

    font-size:12px;

    outline:none;

    transition:.25s;

}


.form-control::placeholder{

    color:#94a3b8;

}


.form-control:hover,
.form-select:hover{

    border-color:#94a3b8;

}


.form-control:focus,
.form-select:focus{

    background:#ffffff;

    border-color:#2563eb;

    box-shadow:
        0 0 0 3px rgba(37,99,235,.10);

}


/* =====================================================
   TEXTAREA
===================================================== */

textarea.form-control{

    height:95px;

    resize:none;

    padding-top:12px;

}


/* =====================================================
   BUTTON AREA
===================================================== */

.button-area{

    display:flex;

    justify-content:flex-end;

    gap:12px;

    margin-top:30px;

    padding-top:22px;

    border-top:1px solid #e5e7eb;

}


/* Cancel */

.cancel-btn{

    display:flex;

    align-items:center;

    justify-content:center;

    padding:11px 22px;

    border-radius:9px;

    background:#f8fafc;

    border:1px solid #e2e8f0;

    color:#475569;

    text-decoration:none;

    font-size:12px;

    font-weight:500;

    transition:.25s;

}

.cancel-btn:hover{

    background:#e2e8f0;

    color:#334155;

}


/* Save */

.btn-save{

    border:none;

    padding:11px 25px;

    border-radius:9px;

    background:
        linear-gradient(
            135deg,
            #2563eb,
            #1d4ed8
        );

    color:white;

    font-size:12px;

    font-weight:500;

    cursor:pointer;

    box-shadow:
        0 6px 16px rgba(37,99,235,.20);

    transition:.25s;

}

.btn-save:hover{

    transform:translateY(-2px);

    box-shadow:
        0 10px 22px rgba(37,99,235,.28);

}


/* =====================================================
   RESPONSIVE
===================================================== */

@media(max-width:1000px){

    .left-panel{

        width:225px;

    }

    .main-content{

        margin-left:255px;

        padding:25px;

    }

}


@media(max-width:768px){

    body{

        background:#f1f5f9;

    }

    .left-panel{

        position:relative;

        top:0;
        left:0;

        width:100%;

        height:auto;

        margin:15px;

        width:calc(100% - 30px);

    }

    .main-content{

        margin-left:0;

        padding:15px;

    }

    .form-grid{

        grid-template-columns:1fr;

    }

    .form-group.full{

        grid-column:1;

    }

    .topbar{

        flex-direction:column;

        align-items:flex-start;

        gap:15px;

    }

}


@media(max-width:500px){

    .form-container{

        padding:22px 18px;

    }

    .profile-header{

        padding:28px 18px;

    }

    .button-area{

        flex-direction:column;

    }

    .cancel-btn,
    .btn-save{

        width:100%;

    }

}

</style>

</head>


<body>


<!-- =====================================================
     SIDEBAR
===================================================== -->

<div class="left-panel">


    <!-- Candidate -->

    <div class="profile-box">

        <img
            src="https://cdn-icons-png.flaticon.com/512/3135/3135715.png"
            alt="Candidate">

        <h4>Candidate</h4>

        <p>CareerNova Candidate Portal</p>

    </div>


    <hr class="sidebar-line">


    <!-- Profile Completion -->

    <div class="completion-title">

        <h6>Profile Completion</h6>

        <span>25%</span>

    </div>


    <div class="progress">

        <div
            class="progress-bar"
            style="width:25%;">

        </div>

    </div>


    <!-- Menu -->

    <ul class="menu">


        <!-- Dashboard -->

        <li>

            <a href="CandidateHome.jsp">

                <span class="menu-icon">
                    🏠
                </span>

                <span class="menu-text">
                    Dashboard
                </span>

                <span class="arrow">
                    ›
                </span>

            </a>

        </li>


        <!-- Complete Profile -->

        <li>

            <a href="CompleteProfile.jsp"
               class="active">

                <span class="menu-icon">
                    👤
                </span>

                <span class="menu-text">
                    Complete Profile
                </span>

                <span class="arrow">
                    ›
                </span>

            </a>

        </li>


        <!-- Education -->

        <li>

            <a href="Education.jsp">

                <span class="menu-icon">
                    🎓
                </span>

                <span class="menu-text">
                    Education
                </span>

                <span class="arrow">
                    ›
                </span>

            </a>

        </li>


        <!-- Experience -->

        <li>

            <a href="Experience.jsp">

                <span class="menu-icon">
                    💼
                </span>

                <span class="menu-text">
                    Experience
                </span>

                <span class="arrow">
                    ›
                </span>

            </a>

        </li>


        <!-- Projects -->

        <li>

            <a href="Projects.jsp">

                <span class="menu-icon">
                    📁
                </span>

                <span class="menu-text">
                    Projects
                </span>

                <span class="arrow">
                    ›
                </span>

            </a>

        </li>


        <!-- Certificates -->

        <li>

            <a href="Certificates.jsp">

                <span class="menu-icon">
                    📜
                </span>

                <span class="menu-text">
                    Certificates
                </span>

                <span class="arrow">
                    ›
                </span>

            </a>

        </li>


        <!-- Skills -->

        <li>

            <a href="Skills.jsp">

                <span class="menu-icon">
                    🛠
                </span>

                <span class="menu-text">
                    Skills
                </span>

                <span class="arrow">
                    ›
                </span>

            </a>

        </li>


    </ul>


</div>



<!-- =====================================================
     MAIN CONTENT
===================================================== -->

<div class="main-content">


    <!-- Topbar -->

    <div class="topbar">

        <div class="topbar-left">

            <h1>
                Complete Your Profile
            </h1>

            <p>
                Keep your professional information updated
                to improve your career opportunities.
            </p>

        </div>


        <a
            href="CandidateHome.jsp"
            class="dashboard-btn">

            ← Dashboard

        </a>

    </div>



    <!-- =================================================
         PROFILE CARD
    ================================================= -->

    <div class="profile-card">


        <!-- Header -->

        <div class="profile-header">

            <img
                src="https://cdn-icons-png.flaticon.com/512/3135/3135715.png"
                alt="Candidate Profile">

            <h2>
                CareerNova
            </h2>

            <p>
                Complete your professional profile and
                unlock the best career opportunities.
            </p>

        </div>


        <!-- Form -->

        <div class="form-container">


            <form
                action="CompleteProfileServlet"
                method="post">


                <!-- ================================
                     PERSONAL INFORMATION
                ================================= -->

                <div class="section-title">

                    Personal Information

                </div>


                <div class="form-grid">


                    <!-- First Name -->

                    <div class="form-group">

                        <label class="form-label">
                            First Name
                            <span class="required">*</span>
                        </label>

                        <input
                            type="text"
                            class="form-control"
                            name="firstName"
                            placeholder="Enter first name"
                            required>

                    </div>


                    <!-- Last Name -->

                    <div class="form-group">

                        <label class="form-label">
                            Last Name
                        </label>

                        <input
                            type="text"
                            class="form-control"
                            name="lastName"
                            placeholder="Enter last name">

                    </div>


                    <!-- Gender -->

                    <div class="form-group">

                        <label class="form-label">
                            Gender
                        </label>

                        <select
                            class="form-select"
                            name="gender">

                            <option value="">
                                Select Gender
                            </option>

                            <option value="MALE">
                                Male
                            </option>

                            <option value="FEMALE">
                                Female
                            </option>

                            <option value="OTHER">
                                Other
                            </option>

                        </select>

                    </div>


                    <!-- DOB -->

                    <div class="form-group">

                        <label class="form-label">
                            Date Of Birth
                        </label>

                        <input
                            type="date"
                            class="form-control"
                            name="dob">

                    </div>


                    <!-- Email -->

                    <div class="form-group">

                        <label class="form-label">
                            Email
                            <span class="required">*</span>
                        </label>

                        <input
                            type="email"
                            class="form-control"
                            name="email"
                            placeholder="example@gmail.com"
                            required>

                    </div>


                    <!-- Mobile -->

                    <div class="form-group">

                        <label class="form-label">
                            Mobile Number
                        </label>

                        <input
                            type="text"
                            class="form-control"
                            name="mobileNo"
                            placeholder="Enter mobile number">

                    </div>


                    <!-- Address -->

                    <div class="form-group full">

                        <label class="form-label">
                            Address
                        </label>

                        <textarea
                            class="form-control"
                            name="address"
                            placeholder="Enter your complete address"></textarea>

                    </div>


                    <!-- City -->

                    <div class="form-group">

                        <label class="form-label">
                            City
                        </label>

                        <input
                            type="text"
                            class="form-control"
                            name="city"
                            placeholder="Enter city">

                    </div>


                    <!-- State -->

                    <div class="form-group">

                        <label class="form-label">
                            State
                        </label>

                        <input
                            type="text"
                            class="form-control"
                            name="state"
                            placeholder="Enter state">

                    </div>


                    <!-- Pincode -->

                    <div class="form-group">

                        <label class="form-label">
                            Pincode
                        </label>

                        <input
                            type="text"
                            class="form-control"
                            name="pincode"
                            placeholder="Enter pincode">

                    </div>


                </div>



                <!-- ================================
                     PROFESSIONAL INFORMATION
                ================================= -->

                <div class="section-title"
                     style="margin-top:35px;">

                    Professional Information

                </div>


                <div class="form-grid">


                    <!-- Job Title -->

                    <div class="form-group">

                        <label class="form-label">
                            Current Job Title
                        </label>

                        <input
                            type="text"
                            class="form-control"
                            name="currentJobTitle"
                            placeholder="Java Developer">

                    </div>


                    <!-- Experience -->

                    <div class="form-group">

                        <label class="form-label">
                            Experience (Years)
                        </label>

                        <input
                            type="number"
                            class="form-control"
                            name="experienceYears"
                            min="0"
                            max="50"
                            placeholder="0">

                    </div>


                    <!-- Summary -->

                    <div class="form-group full">

                        <label class="form-label">
                            Professional Summary
                        </label>

                        <textarea
                            class="form-control"
                            name="profileSummary"
                            placeholder="Write about your skills, projects, achievements and career objective..."></textarea>

                    </div>


                </div>



                <!-- ================================
                     BUTTONS
                ================================= -->

                <div class="button-area">


                    <a
                        href="CandidateHome.jsp"
                        class="cancel-btn">

                        Cancel

                    </a>


                    <button
                        type="submit"
                        class="btn-save">

                        💾 Save Profile

                    </button>


                </div>


            </form>


        </div>


    </div>


</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>

</body>

</html>
```
