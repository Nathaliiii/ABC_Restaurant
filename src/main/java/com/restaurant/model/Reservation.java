package com.restaurant.model;

public class Reservation {
    private String name;
    private int numberOfPeople;
    private String date; // Should be in the format "YYYY-MM-DD"
    private String time; // Should be in the format "HH:MM:SS"

    public Reservation(String name, int numberOfPeople, String date, String time) {
        this.name = name;
        this.numberOfPeople = numberOfPeople;
        this.date = date;
        this.time = time;
    }

    // Getters and Setters
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getNumberOfPeople() {
        return numberOfPeople;
    }

    public void setNumberOfPeople(int numberOfPeople) {
        this.numberOfPeople = numberOfPeople;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
}
