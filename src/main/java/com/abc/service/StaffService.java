package com.abc.service;

import com.abc.dao.StaffDAO;
import com.restaurant.model.Staff;

import java.sql.SQLException;

public class StaffService {

    private StaffDAO staffDAO;

    public StaffService() {
        staffDAO = new StaffDAO();
    }

    public Staff authenticateStaff(String username, String password) {
        try {
            return staffDAO.getStaffByCredentials(username, password);
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    // Additional business logic methods for Staff can be added here
}
