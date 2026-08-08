# CareerNova – Smart Recruitment & Career Management Platform

**CareerNova** is a web-based **Recruitment and Career Management Platform** developed to streamline the hiring process between **Candidates, HR Professionals, Companies, and Administrators**.

The platform provides role-based access and centralized recruitment management, allowing companies to post jobs, HR teams to manage applications and interviews, candidates to apply for opportunities, and administrators to manage the overall system.

> **Developed as a Java Full Stack project to demonstrate practical skills in Java Web Development, JDBC, Oracle Database, JSP, Servlets, and role-based application design.**

---

## 🚀 Project Objective

The main objective of CareerNova is to create a centralized recruitment platform that simplifies and manages the complete hiring workflow.

The system helps organizations:

* Manage companies and HR users
* Manage candidate profiles
* Create and manage job postings
* Receive and review job applications
* Shortlist candidates
* Assign applications to HR
* Schedule and manage interviews
* Record interview feedback
* Track recruitment progress
* Generate recruitment-related reports

---

## 👥 User Roles

CareerNova provides different functionality based on the user's role.

### 🔐 Administrator

The Admin manages the overall platform.

**Features:**

* Admin Login
* Manage Companies
* Manage HR
* Manage Candidates
* View company information
* Manage user accounts
* Recruitment reports
* Centralized system management

---

### 🏢 Company

Companies can manage their recruitment activities.

**Features:**

* Company Login
* Company Dashboard
* Manage Company Profile
* Post New Jobs
* Manage Jobs
* View Job Applications
* Monitor recruitment activities

---

### 👨‍💼 HR

HR users are responsible for managing the candidate selection process.

**Features:**

* HR Dashboard
* View Assigned Applications
* Pending Application Review
* Candidate Profile Management
* Shortlist Candidates
* Schedule Interviews
* Submit Interview Feedback
* Track candidate recruitment status

---

### 👨‍🎓 Candidate

Candidates can search and participate in the recruitment process.

**Features:**

* Candidate Login
* Manage Candidate Profile
* View Available Jobs
* Apply for Jobs
* Track Application Status
* View Recruitment Progress
* Interview-related information

---

## 🔄 Recruitment Workflow

```text
Candidate
    │
    ▼
View Available Jobs
    │
    ▼
Apply for Job
    │
    ▼
Application Created
    │
    ▼
HR Reviews Application
    │
    ├──► Rejected
    │
    ▼
Shortlisted
    │
    ▼
Interview Scheduled
    │
    ▼
Interview Feedback
    │
    ├──► Rejected
    │
    ▼
Selected
```

---

## 🛠️ Technology Stack

| Technology          | Usage                       |
| ------------------- | --------------------------- |
| **Java**            | Backend Development         |
| **JSP**             | Dynamic Web Pages           |
| **Servlets**        | Request & Response Handling |
| **JDBC**            | Database Connectivity       |
| **Oracle Database** | Data Storage                |
| **HTML5**           | Page Structure              |
| **CSS3**            | UI Design                   |
| **Apache Tomcat**   | Web Server                  |
| **Eclipse IDE**     | Development Environment     |
| **Git & GitHub**    | Version Control             |

---

## 🏗️ Application Architecture

CareerNova follows a structured **Java Web MVC-style architecture**.

```text
                 ┌─────────────────────┐
                 │      User / Browser │
                 └──────────┬──────────┘
                            │
                            ▼
                 ┌─────────────────────┐
                 │       JSP / UI      │
                 └──────────┬──────────┘
                            │
                            ▼
                 ┌─────────────────────┐
                 │      Servlets       │
                 └──────────┬──────────┘
                            │
                            ▼
                 ┌─────────────────────┐
                 │       DAO Layer     │
                 └──────────┬──────────┘
                            │
                            ▼
                 ┌─────────────────────┐
                 │    JDBC Connection  │
                 └──────────┬──────────┘
                            │
                            ▼
                 ┌─────────────────────┐
                 │   Oracle Database   │
                 └─────────────────────┘
```

---

## 🗄️ Database

The application uses **Oracle Database** for storing and managing recruitment data.

### Main Database Tables

* `USER_ACCOUNT`
* `COMPANY`
* `CANDIDATE`
* `JOB`
* `JOB_APPLICATION`
* `INTERVIEW`
* `INTERVIEW_FEEDBACK`

The database is designed to maintain relationships between users, companies, jobs, candidates, applications, interviews, and feedback.

---

## 📂 Project Structure

```text
CareerNova/
│
├── Java Resources/
│   │
│   └── src/
│       └── com.careernova/
│           │
│           ├── bean/
│           │   ├── CandidateBean.java
│           │   ├── CompanyBean.java
│           │   ├── JobBean.java
│           │   └── HRBean.java
│           │
│           ├── dao/
│           │   ├── CandidateDAO.java
│           │   ├── CompanyDAO.java
│           │   ├── JobDAO.java
│           │   └── ...
│           │
│           └── servlet/
│               ├── LoginServlet.java
│               ├── CandidateServlet.java
│               ├── LogoutServlet.java
│               ├── ShortlistCandidateServlet.java
│               ├── PendingReviewServlet.java
│               ├── ViewAssignedApplicationsServlet.java
│               └── ...
│
├── WebContent/
│   │
│   ├── AdminHome.jsp
│   ├── CompanyHome.jsp
│   ├── HRHome.jsp
│   ├── Candidate.jsp
│   ├── Login.jsp
│   ├── Reports.jsp
│   └── ...
│
└── README.md
```

---

## ✨ Key Features

### 🔑 Authentication & Authorization

* Secure login-based access
* Role-based dashboards
* Separate functionality for Admin, Company, HR and Candidate
* Session-based authentication
* Logout functionality

### 💼 Job Management

* Create job postings
* View available jobs
* Manage existing jobs
* Connect jobs with applications

### 📄 Application Management

* Candidate job applications
* Application status tracking
* HR application review
* Candidate shortlisting
* Assigned application management

### 🎯 Candidate Selection

* Review candidate profiles
* Shortlist candidates
* Track recruitment status
* Interview scheduling
* Interview feedback management

### 📊 Reports

* Recruitment-related information
* Application tracking
* Candidate and company data
* Administrative reporting

---

## 🔒 Security & Validation

The project includes application-level controls such as:

* Role-based access
* Session management
* Login validation
* Form validation
* Database constraints
* Controlled database operations through DAO classes
* Logout and session invalidation

---

## 🖥️ Screens / Modules

The application includes dedicated interfaces for:

* Login
* Admin Dashboard
* Company Dashboard
* HR Dashboard
* Candidate Dashboard
* Company Management
* HR Management
* Candidate Management
* Job Management
* Job Applications
* Assigned Applications
* Pending Reviews
* Shortlisted Candidates
* Interview Management
* Interview Feedback
* Reports

---

## 📌 What I Learned From This Project

Through CareerNova, I gained practical experience in:

* Core Java
* Advanced Java
* Java Servlets
* JSP
* JDBC
* Oracle SQL
* DAO Pattern
* JavaBeans
* MVC-style architecture
* Session Management
* CRUD Operations
* Role-Based Access Control
* Database Design
* SQL Joins
* Exception Handling
* Web Application Debugging
* Git & GitHub
* Apache Tomcat
* Eclipse IDE

---

## 🎯 Project Highlights

* ✔ Multi-role recruitment platform
* ✔ Java-based backend
* ✔ JSP & Servlet-based web application
* ✔ Oracle database integration
* ✔ JDBC-based database operations
* ✔ Role-based dashboards
* ✔ Complete recruitment workflow
* ✔ Job and application management
* ✔ Candidate shortlisting
* ✔ Interview management
* ✔ Interview feedback
* ✔ Administrative reports
* ✔ GitHub version control

---

## ⚙️ How to Run the Project

### Prerequisites

Make sure the following are installed:

* Java JDK
* Eclipse IDE
* Apache Tomcat 9
* Oracle Database
* Oracle JDBC Driver
* Git

### Setup

1. Clone the repository:

```bash
git clone https://github.com/Abhishek-Dangare/CareerNova.git
```

2. Import the project into Eclipse.

3. Configure Apache Tomcat Server.

4. Configure the Oracle Database connection.

5. Add the Oracle JDBC driver to the project.

6. Create the required database tables.

7. Update the database connection details in the DAO/database connection class.

8. Start Apache Tomcat.

9. Open the application in the browser.

```text
http://localhost:8080/CareerNova/
```

---

## 📈 Future Enhancements

The project can be further enhanced with:

* Email notifications
* OTP-based authentication
* Resume upload and management
* Advanced job search and filtering
* Online interview integration
* Automated candidate matching
* Recruitment analytics dashboard
* REST API integration
* Spring Boot migration
* Spring Security integration
* React/Angular frontend
* Cloud deployment

---

## 👨‍💻 Developer

**Abhishek Dangare**

Java Full Stack Developer | BCS Student

### Technical Interests

* Java Development
* Full Stack Web Development
* Database Management
* Backend Development
* Cyber Security

---

## ⭐ Project Purpose

CareerNova was developed as a **practical Java Full Stack project for building real-world development experience and demonstrating software development skills for internship and entry-level job opportunities.**

If you find this project useful, consider giving the repository a ⭐ on GitHub.

---

### 📜 License

This project is developed for **educational and portfolio purposes**.
