package com.abc.dao;

import com.restaurant.model.Order;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class OrderDAO {
    // Insert order into the database
    public void insertOrder(Order order) throws SQLException {
        String sql = "INSERT INTO orders (customerName, contactNumber, foodItem, quantity, specialRequests, paymentMethod) VALUES (?, ?, ?, ?, ?, ?)";

        try (Connection connection = DBConnector.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setString(1, order.getCustomerName());
            statement.setString(2, order.getContactNumber());
            statement.setString(3, order.getFoodItem());
            statement.setInt(4, order.getQuantity());
            statement.setString(5, order.getSpecialRequests());
            statement.setString(6, order.getPaymentMethod());

            statement.executeUpdate();
        }
    }
}
