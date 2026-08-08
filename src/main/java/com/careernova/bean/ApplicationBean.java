package com.careernova.bean;

import java.util.Date;

public class ApplicationBean {

    private int applicationId;
    private int candidateId;
    private int jobId;
    private Date applyDate;
    private String status;

    // NEW FIELDS
    private String candidateName;
    private String jobTitle;

    public int getApplicationId() {
        return applicationId;
    }

    public void setApplicationId(int applicationId) {
        this.applicationId = applicationId;
    }

    public int getCandidateId() {
        return candidateId;
    }

    public void setCandidateId(int candidateId) {
        this.candidateId = candidateId;
    }

    public int getJobId() {
        return jobId;
    }

    public void setJobId(int jobId) {
        this.jobId = jobId;
    }

    public Date getApplyDate() {
        return applyDate;
    }

    public void setApplyDate(Date string) {
        this.applyDate = string;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    // NEW GETTERS / SETTERS

    public String getCandidateName() {
        return candidateName;
    }

    public void setCandidateName(String candidateName) {
        this.candidateName = candidateName;
    }

    public String getJobTitle() {
        return jobTitle;
    }

    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }

	public void setApplyDate(String string) {
		// TODO Auto-generated method stub
		
	}
}