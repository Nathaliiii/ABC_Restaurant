package com.abc.dao;

import com.restaurant.model.Staff;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class StaffDAO {

    public void insertStaff(Connection connection, Staff staff) throws SQLException {
        String query = "INSERT INTO staff (username, password) VALUES (?, ?)";
        try (PreparedStatement pst = connection.prepareStatement(query)) {
            pst.setString(1, staff.getUsername());
            pst.setString(2, staff.getPassword());
            pst.executeUpdate();
        }
    }

    public Staff getStaffByCredentials(String username, String password) throws SQLException {
        String query = "SELECT * FROM staff WHERE username = ? AND password = ?";
        try (Connection connection = DBConnector.getConnection();  // Ensure you have a DBConnector class for connection
             PreparedStatement pst = connection.prepareStatement(query)) {
            pst.setString(1, username);
            pst.setString(2, password);
            try (ResultSet rs = pst.executeQuery()) {
                if (rs.next()) {
                    return new Staff(
                        rs.getString("username"),
                        rs.getString("password")
                    );
                }
            }
        }
        return null;
    }
}
