# 🚀 CareerNova – Smart Recruitment & Career Management Platform

> **A Java Full Stack web application designed to manage the complete recruitment lifecycle for Candidates, HR, Companies, and Administrators.**

## 🎥 Project Demo

▶️ **[Watch CareerNova Project Demo on LinkedIn]([PASTE-LINKEDIN-VIDEO-LINK-HERE](https://lnkd.in/p/gjQnpm2P))**

---

## 📌 About the Project

**CareerNova** is a web-based **Recruitment and Career Management Platform** developed to simplify and manage the hiring process in a centralized system.

The application provides **role-based access** for four major users:

* 🔐 Administrator
* 🏢 Company
* 👨‍💼 HR
* 👨‍🎓 Candidate

The platform allows companies to manage jobs, candidates to apply for opportunities, HR teams to review and shortlist candidates, conduct interviews, provide feedback, and administrators to manage the overall recruitment system.

> **CareerNova was developed as a practical Java Full Stack project to gain real-world experience in Java Web Development, JDBC, Oracle Database, JSP, Servlets, DAO architecture, session management, and role-based application development.**

---

## 🎯 Project Objective

The primary objective of CareerNova is to create a centralized recruitment platform that manages the complete hiring workflow from **job posting to candidate selection**.

### The system provides:

* Company and HR management
* Candidate profile management
* Job posting and management
* Job application processing
* HR application assignment
* Application review
* Candidate shortlisting
* Interview management
* Interview feedback
* Recruitment status tracking
* Administrative reports

---

# 👥 User Roles & Functionalities

## 🔐 Administrator

The Administrator manages the overall recruitment platform.

### Features

* Admin Login
* Admin Dashboard
* Manage Companies
* Manage HR
* Manage Candidates
* Manage User Accounts
* View Company Information
* Recruitment Reports
* Centralized System Management

---

## 🏢 Company

Companies can manage their recruitment activities through the company dashboard.

### Features

* Company Login
* Company Dashboard
* Manage Company Profile
* Post New Jobs
* Manage Jobs
* View Job Applications
* Monitor Recruitment Activities

---

## 👨‍💼 HR

HR users handle the candidate screening and selection process.

### Features

* HR Login
* HR Dashboard
* View Assigned Applications
* Pending Application Review
* View Candidate Profiles
* Shortlist Candidates
* Schedule Interviews
* Submit Interview Feedback
* Track Candidate Recruitment Status

---

## 👨‍🎓 Candidate

Candidates can participate in the recruitment process.

### Features

* Candidate Login
* Candidate Dashboard
* Manage Candidate Profile
* View Available Jobs
* Apply for Jobs
* Track Application Status
* View Recruitment Progress
* Interview Information

---

# 🔄 Recruitment Workflow

```text
                    ┌───────────────┐
                    │   Candidate   │
                    └───────┬───────┘
                            │
                            ▼
                  ┌───────────────────┐
                  │   View Jobs       │
                  └─────────┬─────────┘
                            │
                            ▼
                  ┌───────────────────┐
                  │   Apply for Job   │
                  └─────────┬─────────┘
                            │
                            ▼
                  ┌───────────────────┐
                  │ Application Created│
                  └─────────┬─────────┘
                            │
                            ▼
                  ┌───────────────────┐
                  │    HR Review      │
                  └─────────┬─────────┘
                            │
                    ┌───────┴────────┐
                    │                │
                    ▼                ▼
                Rejected         Shortlisted
                                     │
                                     ▼
                           Interview Scheduled
                                     │
                                     ▼
                            Interview Feedback
                                     │
                              ┌──────┴──────┐
                              │             │
                              ▼             ▼
                          Rejected       Selected
```

---

# 🛠️ Technology Stack

| Technology          | Purpose                     |
| ------------------- | --------------------------- |
| **Java**            | Backend Development         |
| **JSP**             | Dynamic Web Pages           |
| **Servlets**        | Request & Response Handling |
| **JDBC**            | Database Connectivity       |
| **Oracle Database** | Data Storage                |
| **HTML5**           | Page Structure              |
| **CSS3**            | User Interface              |
| **Apache Tomcat 9** | Application Server          |
| **Eclipse IDE**     | Development Environment     |
| **Git & GitHub**    | Version Control             |

---

# 🏗️ Application Architecture

CareerNova follows a structured **Java Web MVC-style architecture**.

```text
                 ┌──────────────────────┐
                 │     User / Browser   │
                 └──────────┬───────────┘
                            │
                            ▼
                 ┌──────────────────────┐
                 │       JSP / UI       │
                 └──────────┬───────────┘
                            │
                            ▼
                 ┌──────────────────────┐
                 │       Servlets       │
                 └──────────┬───────────┘
                            │
                            ▼
                 ┌──────────────────────┐
                 │       DAO Layer      │
                 └──────────┬───────────┘
                            │
                            ▼
                 ┌──────────────────────┐
                 │    JDBC Connection   │
                 └──────────┬───────────┘
                            │
                            ▼
                 ┌──────────────────────┐
                 │   Oracle Database    │
                 └──────────────────────┘
```

---

# 🗄️ Database

CareerNova uses **Oracle Database** to store and manage recruitment-related information.

### Main Tables

```text
USER_ACCOUNT
COMPANY
CANDIDATE
JOB
JOB_APPLICATION
INTERVIEW
INTERVIEW_FEEDBACK
```

These tables manage relationships between users, companies, candidates, jobs, applications, interviews, and interview feedback.

---

# ✨ Key Features

## 🔑 Authentication & Authorization

* Role-based login
* Role-specific dashboards
* Session management
* Login validation
* Logout functionality
* Access based on user role

## 💼 Job Management

* Create job postings
* View available jobs
* Manage jobs
* Track job applications
* Connect jobs with candidates

## 📄 Application Management

* Candidate job applications
* Application status tracking
* HR application review
* Assigned applications
* Candidate shortlisting

## 🎯 Candidate Selection

* Candidate profile viewing
* Application review
* Candidate shortlisting
* Interview scheduling
* Interview feedback
* Recruitment status tracking

## 📊 Reports

* Recruitment information
* Application tracking
* Candidate information
* Company information
* Administrative reporting

---

# 📂 Project Structure

```text
CareerNova/
│
├── Java Resources/
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

# 🔒 Security & Validation

The application implements application-level controls including:

* Role-based access control
* Session management
* Login validation
* Form validation
* Database constraints
* DAO-based database operations
* Session invalidation during logout

---

# 🖥️ Application Modules

CareerNova contains dedicated interfaces for:

* 🔐 Login
* 📊 Admin Dashboard
* 🏢 Company Dashboard
* 👨‍💼 HR Dashboard
* 👨‍🎓 Candidate Dashboard
* 🏢 Company Management
* 👨‍💼 HR Management
* 👨‍🎓 Candidate Management
* 💼 Job Management
* 📄 Job Applications
* 📋 Assigned Applications
* 🔎 Pending Reviews
* ⭐ Shortlisted Candidates
* 📅 Interview Management
* 📝 Interview Feedback
* 📊 Reports

---

# 🧠 Skills Demonstrated

This project helped me develop practical experience in:

* Core Java
* Advanced Java
* Java Servlets
* JSP
* JDBC
* Oracle SQL
* JavaBeans
* DAO Pattern
* MVC-style Architecture
* CRUD Operations
* SQL Joins
* Session Management
* Role-Based Access Control
* Database Design
* Exception Handling
* Web Application Debugging
* Apache Tomcat
* Eclipse IDE
* Git & GitHub

---

# 📈 Future Enhancements

Possible future improvements include:

* 📧 Email notifications
* 🔐 OTP-based authentication
* 📄 Resume upload and management
* 🔎 Advanced job search and filtering
* 🎥 Online interview integration
* 🤖 Automated candidate-job matching
* 📊 Advanced recruitment analytics
* 🌐 REST API integration
* 🚀 Spring Boot migration
* 🔐 Spring Security integration
* ⚛️ React/Angular frontend
* ☁️ Cloud deployment

---

# ⚙️ How to Run

## Prerequisites

Install the following:

* Java JDK
* Eclipse IDE
* Apache Tomcat 9
* Oracle Database
* Oracle JDBC Driver
* Git

## Setup

### 1. Clone the Repository

```bash
git clone https://github.com/Abhishek-Dangare/CareerNova.git
```

### 2. Import into Eclipse

Import the project into Eclipse as a Java Web/Dynamic Web Project.

### 3. Configure Apache Tomcat

Add and configure **Apache Tomcat 9** in Eclipse.

### 4. Configure Oracle Database

Create the required database tables and configure the database connection used by the application.

### 5. Configure JDBC

Add the Oracle JDBC driver to the project.

### 6. Run the Application

Start Apache Tomcat and open:

```text
http://localhost:8080/CareerNova/
```

---

# 🎯 Why I Built CareerNova

I developed CareerNova as a **real-world Java Full Stack project** to move beyond basic coding exercises and gain practical experience in designing and developing a complete web application.

The project demonstrates my ability to work with:

**Frontend → Backend → Database → Authentication → Business Logic → Recruitment Workflow → Version Control**

It was built with a focus on learning **real application development, problem solving, database integration, debugging, and software architecture**.

---

# 👨‍💻 Developer

## Abhishek Dangare

**Java Full Stack Developer | BCS Student**

### Areas of Interest

* Java Development
* Full Stack Web Development
* Backend Development
* Database Management
* Web Application Development
* Cyber Security

---

# ⭐ Project Repository

**GitHub:**
https://github.com/Abhishek-Dangare/CareerNova

If you find this project useful or interesting, feel free to ⭐ the repository.

---

## 📜 License

This project was developed for **educational, learning, portfolio, internship, and entry-level job application purposes**.
