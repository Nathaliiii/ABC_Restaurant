package com.abc.dao;

import com.restaurant.model.Reservation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ReservationDAO {
    private static final String INSERT_SQL = "INSERT INTO reservations (name, number_of_people, date, time) VALUES (?, ?, ?, ?)";

    public boolean addReservation(Reservation reservation) {
        try (Connection connection = DBConnector.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_SQL)) {

            // Print SQL and parameters for debugging
            System.out.println("Executing SQL: " + INSERT_SQL);
            System.out.println("Name: " + reservation.getName());
            System.out.println("Number of People: " + reservation.getNumberOfPeople());
            System.out.println("Date: " + reservation.getDate());
            System.out.println("Time: " + reservation.getTime());

            preparedStatement.setString(1, reservation.getName());
            preparedStatement.setInt(2, reservation.getNumberOfPeople());
            preparedStatement.setDate(3, java.sql.Date.valueOf(reservation.getDate())); // Convert String to SQL Date
            preparedStatement.setTime(4, java.sql.Time.valueOf(reservation.getTime())); // Convert String to SQL Time

            int rowsAffected = preparedStatement.executeUpdate();
            return rowsAffected > 0;

        } catch (SQLException e) {
            e.printStackTrace(); // Check the server logs or console for error details
            return false;
        }

    }
}
