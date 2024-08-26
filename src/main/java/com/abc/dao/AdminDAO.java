package com.abc.dao;

import com.restaurant.model.Admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminDAO {

    public void insertAdmin(Connection connection, Admin admin) throws SQLException {
        String query = "INSERT INTO admins (username, password) VALUES (?, ?)";
        try (PreparedStatement pst = connection.prepareStatement(query)) {
            pst.setString(1, admin.getUsername());
            pst.setString(2, admin.getPassword());
            pst.executeUpdate();
        }
    }

    public Admin getAdminByCredentials(String username, String password) throws SQLException {
        String query = "SELECT * FROM admins WHERE username = ? AND password = ?";
        try (Connection connection = DBConnector.getConnection();  // Ensure you have a DBConnector class for connection
             PreparedStatement pst = connection.prepareStatement(query)) {
            pst.setString(1, username);
            pst.setString(2, password);
            try (ResultSet rs = pst.executeQuery()) {
                if (rs.next()) {
                    return new Admin(
                        rs.getString("username"),
                        rs.getString("password")
                    );
                }
            }
        }
        return null;
    }
}
