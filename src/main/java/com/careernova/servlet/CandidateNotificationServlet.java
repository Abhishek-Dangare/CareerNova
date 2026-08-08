
package com.careernova.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.careernova.bean.NotificationBean;
import com.careernova.bean.UserAccountBean;
import com.careernova.dao.NotificationDAO;

@WebServlet("/candidateNotifications")
public class CandidateNotificationServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        // Session nahi hai
        if (session == null) {
            response.sendRedirect("Login.html");
            return;
        }

        // User session se lena
        UserAccountBean user =
                (UserAccountBean) session.getAttribute("user");

        // User session me nahi mila
        if (user == null) {
            response.sendRedirect("Login.html");
            return;
        }

        // User mil gaya
        NotificationDAO dao = new NotificationDAO();

        ArrayList<NotificationBean> list =
                dao.getNotifications(user.getUserId());

        request.setAttribute("notificationList", list);

        request.getRequestDispatcher("CandidateNotifications.jsp")
                .forward(request, response);
    }
}
