package com.abc.service;

import com.abc.dao.AdminDAO;
import com.restaurant.model.Admin;

import java.sql.SQLException;

public class AdminService {

    private AdminDAO adminDAO;

    public AdminService() {
        adminDAO = new AdminDAO();
    }

    public Admin authenticateAdmin(String username, String password) {
        try {
            return adminDAO.getAdminByCredentials(username, password);
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    // Additional business logic methods for Admin can be added here
}
