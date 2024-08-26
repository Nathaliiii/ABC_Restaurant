package com.abc.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.abc.service.AdminService;
import com.abc.service.StaffService;
import com.restaurant.model.Admin;
import com.restaurant.model.Staff;

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private AdminService adminService;
    private StaffService staffService;

    @Override
    public void init() throws ServletException {
        adminService = new AdminService();
        staffService = new StaffService();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String role = request.getParameter("role");

        boolean isValidUser = false;

        if ("admin".equals(role)) {
            Admin admin = adminService.authenticateAdmin(username, password);
            if (admin != null) {
                isValidUser = true;
                request.getSession().setAttribute("admin", admin);
                response.sendRedirect("AdminDashboard.jsp");
            }
        } else if ("staff".equals(role)) {
            Staff staff = staffService.authenticateStaff(username, password);
            if (staff != null) {
                isValidUser = true;
                request.getSession().setAttribute("staff", staff);
                response.sendRedirect("StaffDashboard.jsp");
            }
        }

        if (!isValidUser) {
            request.setAttribute("errorMessage", "Invalid username, password, or role.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/AdminStafflogin.jsp");
            dispatcher.forward(request, response);
        }
    }
}
