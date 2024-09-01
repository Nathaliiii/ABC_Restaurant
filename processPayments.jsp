<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Process Payments</title>
    <link rel="stylesheet" type="text/css" href="styles.css"> <!-- Link to your CSS file -->
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('images/paymentb.jpg'); /* Path to your background image */
            background-size: cover; /* Cover the entire page */
            background-position: center; /* Center the background image */
            background-attachment: fixed; /* Fix background image during scrolling */
            color: #333; /* Set text color to ensure readability */
            margin: 0;
            padding: 0;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
            height: 100vh; /* Full viewport height */
        }

        .image-container, .payment-form-container {
            flex: 1; /* Each takes up half of the container */
            padding: 20px;
        }

        .image-container img {
            width: 100%;
            height: auto;
            border-radius: 5px;
        }

        .payment-form {
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent background for readability */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.1);
        }

        .payment-form label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        .payment-form input, .payment-form select, .payment-form button {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .payment-form button {
            background-color: #006400; /* Dark Green */
            color: white;
            border: none;
            cursor: pointer;
        }

        .payment-form button:hover {
            background-color: #004d00; /* Darker Green */
        }
    </style>
</head>
<body>

<div class="container">
    <!-- Image Container -->
    <div class="image-container">
        <img src="images/payment.jpg" alt="Process Payments">
    </div>

    <!-- Payment Form Container -->
    <div class="payment-form-container">
        <h1>Process Payments</h1>
        <div class="payment-form">
            <form action="processPaymentAction.jsp" method="post">
                <label for="reservationId">Reservation ID:</label>
                <input type="text" id="reservationId" name="reservationId" required>

                <label for="amount">Amount:</label>
                <input type="text" id="amount" name="amount" required>

                <label for="paymentMethod">Payment Method:</label>
                <select id="paymentMethod" name="paymentMethod" required>
                    <option value="">Select Payment Method</option>
                    <option value="creditCard">Credit Card</option>
                    <option value="debitCard">Debit Card</option>
                    <option value="paypal">PayPal</option>
                    <option value="bankTransfer">Bank Transfer</option>
                </select>

                <button type="submit">Process Payment</button>
            </form>
        </div>
    </div>
</div>

</body>
</html>
