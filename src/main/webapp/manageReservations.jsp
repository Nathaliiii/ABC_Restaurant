<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manage Reservations</title>
    <link rel="stylesheet" type="text/css" href="styles.css"> <!-- Link to your CSS file -->
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            padding: 20px;
        }

        h1 {
            color: #006400; /* Dark Green */
        }

        .reservation-table {
            width: 80%;
            border-collapse: collapse;
            margin: 20px 0;
        }

        .reservation-table th, .reservation-table td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }

        .reservation-table th {
            background-color: #d0f0c0; /* Light Green */
            color: #006400; /* Dark Green */
        }

        .reservation-table tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .reservation-table tr:hover {
            background-color: #ddd;
        }

        .button {
            display: inline-block;
            padding: 10px 20px;
            margin: 10px;
            text-decoration: none;
            color: #fff;
            background-color: #006400; /* Dark Green */
            border-radius: 5px;
            text-align: center;
        }

        .button:hover {
            background-color: #004d00; /* Darker Green */
        }

        .button-group {
            margin: 20px 0;
            text-align: center;
        }

        .image-container {
            margin-top: 20px;
            text-align: center;
        }

        .image-container img {
            max-width: 600px; /* Set the maximum width */
            height: auto; /* Maintain aspect ratio */
            border-radius: 5px;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Manage Reservations</h1>
    
    <!-- Sample Table for Reservations -->
    <table class="reservation-table">
        <thead>
            <tr>
                <th>Reservation ID</th>
                <th>Customer Name</th>
                <th>Table Number</th>
                <th>Date</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>001</td>
                <td>John Doe</td>
                <td>5</td>
                <td>2024-08-25</td>
                <td>Confirmed</td>
            </tr>
            <tr>
                <td>002</td>
                <td>Jane Smith</td>
                <td>7</td>
                <td>2024-08-26</td>
                <td>Pending</td>
            </tr>
            <!-- Add more rows as needed -->
        </tbody>
    </table>

    <!-- Buttons for Edit, Delete, Update, and Staff Dashboard -->
    <div class="button-group">
    <a href="editReservation.jsp" class="button">Edit</a>
    <a href="deleteReservation.jsp" class="button">Delete</a>
    <a href="updateReservation.jsp" class="button">Update</a>
    <a href="StaffDashboard.jsp" class="button">Staff Dashboard</a> 
</div>

</div>

<!-- Optional Image -->
<div class="image-container">
    <img src="images/reserve.jpg" alt="Manage Reservations">
</div>

</body>
</html>
