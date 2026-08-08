<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>CareerNova | Give Interview Feedback</title>

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

/* Sidebar */

.sidebar{
    position:fixed;
    width:250px;
    height:100%;
    background:#1e3c72;
}

.sidebar h2{
    color:white;
    text-align:center;
    padding:22px;
    background:#16335f;
}

.sidebar ul{
    list-style:none;
    margin-top:20px;
}

.sidebar ul li{
    padding:15px 25px;
    border-bottom:1px solid rgba(255,255,255,.1);
}

.sidebar ul li:hover{
    background:#28539a;
}

.sidebar ul li a{
    color:white;
    text-decoration:none;
    display:block;
}

.sidebar ul li i{
    margin-right:10px;
}

/* Main */

.main{
    margin-left:250px;
    padding:30px;
}

.header{
    background:white;
    padding:20px;
    border-radius:10px;
    box-shadow:0 3px 10px rgba(0,0,0,.1);
    margin-bottom:25px;
}

.header h2{
    color:#1e3c72;
}

/* Form */

.form-box{
    width:70%;
    background:white;
    padding:30px;
    border-radius:10px;
    box-shadow:0 5px 15px rgba(0,0,0,.1);
}

.form-group{
    margin-bottom:20px;
}

.form-group label{
    display:block;
    margin-bottom:8px;
    font-weight:bold;
    color:#333;
}

.form-group input,
.form-group textarea,
.form-group select{
    width:100%;
    padding:12px;
    border:1px solid #ccc;
    border-radius:5px;
    font-size:15px;
}

.form-group textarea{
    height:130px;
    resize:none;
}

/* Rating */

.rating{
    display:flex;
    gap:10px;
    flex-direction:row-reverse;
    justify-content:flex-end;
}

.rating input{
    display:none;
}

.rating label{
    font-size:30px;
    color:#ccc;
    cursor:pointer;
}

.rating input:checked ~ label,
.rating label:hover,
.rating label:hover ~ label{
    color:#ffc107;
}

/* Button */

.submit-btn{
    background:#1e3c72;
    color:white;
    border:none;
    padding:12px 25px;
    border-radius:5px;
    cursor:pointer;
    font-size:15px;
}

.submit-btn:hover{
    background:#28539a;
}

.back{
    display:inline-block;
    margin-top:20px;
    padding:10px 20px;
    background:#777;
    color:white;
    text-decoration:none;
    border-radius:5px;
}

.back:hover{
    background:#555;
}

</style>

</head>

<body>

<!-- Sidebar -->

<div class="sidebar">

    <h2>CareerNova</h2>

    <ul>

        <li>
            <a href="HRHome.jsp">
                <i class="fa fa-home"></i>
                Dashboard
            </a>
        </li>

        <li>
            <a href="viewAssignedApplications">
                <i class="fa fa-file"></i>
                Assigned Applications
            </a>
        </li>

        <li>
            <a href="pendingReview">
                <i class="fa fa-user-clock"></i>
                Pending Review
            </a>
        </li>

        <li>
            <a href="shortlistedApplications">
                <i class="fa fa-user-check"></i>
                Shortlisted
            </a>
        </li>

        <li>
            <a href="interviewFeedback">
                <i class="fa fa-comments"></i>
                Interview Feedback
            </a>
        </li>

        <li>
            <a href="logout">
                <i class="fa fa-sign-out-alt"></i>
                Logout
            </a>
        </li>

    </ul>

</div>


<!-- Main -->

<div class="main">

    <div class="header">

        <h2>
            <i class="fa fa-comments"></i>
            Give Interview Feedback
        </h2>

    </div>


    <div class="form-box">

        <form action="saveInterviewFeedback" method="post">

            <!-- Application ID -->

            <div class="form-group">

                <label>
                    Application ID
                </label>

                <input type="text"
                       name="applicationId"
                       value="<%=request.getAttribute("applicationId")%>"
                       readonly>

            </div>


            <!-- Rating -->

            <div class="form-group">

                <label>
                    Candidate Rating
                </label>

                <div class="rating">

                    <input type="radio"
                           name="rating"
                           value="5"
                           id="star5">

                    <label for="star5">★</label>


                    <input type="radio"
                           name="rating"
                           value="4"
                           id="star4">

                    <label for="star4">★</label>


                    <input type="radio"
                           name="rating"
                           value="3"
                           id="star3">

                    <label for="star3">★</label>


                    <input type="radio"
                           name="rating"
                           value="2"
                           id="star2">

                    <label for="star2">★</label>


                    <input type="radio"
                           name="rating"
                           value="1"
                           id="star1">

                    <label for="star1">★</label>

                </div>

            </div>


            <!-- Comments -->

            <div class="form-group">

                <label>
                    Interview Comments
                </label>

                <textarea
                    name="comments"
                    placeholder="Enter interview feedback..."
                    required></textarea>

            </div>


            <!-- Result -->

            <div class="form-group">

                <label>
                    Interview Result
                </label>

                <select name="result" required>

                    <option value="">
                        -- Select Result --
                    </option>

                    <option value="SELECTED">
                        Selected
                    </option>

                    <option value="REJECTED">
                        Rejected
                    </option>

                </select>

            </div>


            <!-- Submit -->

            <button type="submit"
                    class="submit-btn">

                <i class="fa fa-save"></i>
                Save Feedback

            </button>

        </form>


        <a href="interviewFeedback"
           class="back">

            <i class="fa fa-arrow-left"></i>
            Back

        </a>

    </div>

</div>

</body>

</html>