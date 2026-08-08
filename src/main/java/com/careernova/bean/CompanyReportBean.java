package com.careernova.bean;

public class CompanyReportBean {

    private int totalHR;
    private int totalJobs;
    private int totalApplications;
    private int totalCandidates;
    private int shortlisted;
    private int selected;
    private int rejected;
    private int interviews;

    public CompanyReportBean() {
    }

    public int getTotalHR() {
        return totalHR;
    }

    public void setTotalHR(int totalHR) {
        this.totalHR = totalHR;
    }

    public int getTotalJobs() {
        return totalJobs;
    }

    public void setTotalJobs(int totalJobs) {
        this.totalJobs = totalJobs;
    }

    public int getTotalApplications() {
        return totalApplications;
    }

    public void setTotalApplications(int totalApplications) {
        this.totalApplications = totalApplications;
    }

    public int getTotalCandidates() {
        return totalCandidates;
    }

    public void setTotalCandidates(int totalCandidates) {
        this.totalCandidates = totalCandidates;
    }

    public int getShortlisted() {
        return shortlisted;
    }

    public void setShortlisted(int shortlisted) {
        this.shortlisted = shortlisted;
    }

    public int getSelected() {
        return selected;
    }

    public void setSelected(int selected) {
        this.selected = selected;
    }

    public int getRejected() {
        return rejected;
    }

    public void setRejected(int rejected) {
        this.rejected = rejected;
    }

    public int getInterviews() {
        return interviews;
    }

    public void setInterviews(int interviews) {
        this.interviews = interviews;
    }

}