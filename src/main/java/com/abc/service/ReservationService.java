package com.abc.service;

import com.abc.dao.ReservationDAO;
import com.restaurant.model.Reservation;

public class ReservationService {
    private ReservationDAO reservationDAO;

    public ReservationService() {
        reservationDAO = new ReservationDAO();
    }

    public boolean bookTable(String name, int numberOfPeople, String date, String time) {
        Reservation reservation = new Reservation(name, numberOfPeople, date, time);
        return reservationDAO.addReservation(reservation);
    }
}
