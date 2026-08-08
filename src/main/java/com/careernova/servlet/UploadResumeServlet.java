package com.careernova.servlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.careernova.bean.ResumeBean;
import com.careernova.bean.UserAccountBean;
import com.careernova.dao.CandidateDAO;
import com.careernova.dao.ResumeDAO;

@WebServlet("/uploadResume")
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024 * 2,
    maxFileSize = 1024 * 1024 * 5,
    maxRequestSize = 1024 * 1024 * 10
)
public class UploadResumeServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private static final String UPLOAD_PATH = "D:/CareerNovaResume/";

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        UserAccountBean ub =
                (UserAccountBean) session.getAttribute("user");

        int userId = ub.getUserId();

        CandidateDAO cdao = new CandidateDAO();

        int candidateId = cdao.getCandidateId(userId);

        File folder = new File(UPLOAD_PATH);

        if (!folder.exists()) {
            folder.mkdirs();
        }

        Part part = request.getPart("resume");

        String fileName = part.getSubmittedFileName();

        String filePath = UPLOAD_PATH + fileName;

        part.write(filePath);

        ResumeBean rb = new ResumeBean();

        rb.setCandidateId(candidateId);
        rb.setFileName(fileName);
        rb.setFilePath(filePath);
        rb.setFileSize(part.getSize());
        rb.setFileType(part.getContentType());
        rb.setStatus("ACTIVE");

        ResumeDAO dao = new ResumeDAO();

        boolean status = dao.uploadResume(rb);

        if(status){

            response.sendRedirect("ResumeSuccess.jsp");

        }else{

            response.sendRedirect("ResumeFailed.jsp");

        }

    }

}