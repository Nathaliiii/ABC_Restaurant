package com.abc.dao;

import com.restaurant.model.Admin;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminDAO {

    // Method to validate admin credentials
    public Admin validateAdmin(String username, String password) throws SQLException {
        Admin admin = null;
        String query = "SELECT * FROM admin WHERE username = ? AND password = ?";
        try (Connection connection = DBConnector.getConnection();
             PreparedStatement pstmt = connection.prepareStatement(query)) {
            pstmt.setString(1, username);
            pstmt.setString(2, password); // Consider hashing passwords in practice
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                admin = new Admin();
                admin.setId(rs.getInt("admin_id"));
                admin.setUsername(rs.getString("username"));
                admin.setPassword(rs.getString("password"));
            }
        }
        return admin;
    }
}
