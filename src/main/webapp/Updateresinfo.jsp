<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Restaurant Information</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        h1 {
            color: #0066cc; /* Dark Blue */
            text-align: center;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin-top: 10px;
            font-weight: bold;
        }

        input[type="text"], input[type="email"], textarea {
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ddd;
            border-radius: 4px;
            width: 100%;
        }

        textarea {
            resize: vertical;
            height: 150px;
        }

        button {
            margin-top: 20px;
            padding: 10px;
            border: none;
            border-radius: 4px;
            background-color: #0066cc; /* Dark Blue */
            color: white;
            font-size: 16px;
            cursor: pointer;
        }

        button:hover {
            background-color: #005bb5; /* Darker Blue */
        }

        .back-link {
            margin-top: 20px;
            display: flex;
            justify-content: center;
        }

        .back-link a {
            text-decoration: none;
            color: #ffffff;
            background-color: #0066cc;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 16px;
        }

        .back-link a:hover {
            background-color: #005bb5;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Update Restaurant Information</h1>
    <form action="UpdateRestaurantServlet" method="post">
        <label for="restaurantName">Restaurant Name:</label>
        <input type="text" id="restaurantName" name="restaurantName" required>

        <label for="address">Address:</label>
        <input type="text" id="address" name="address" required>

        <label for="contactEmail">Contact Email:</label>
        <input type="email" id="contactEmail" name="contactEmail" required>

        <label for="phoneNumber">Phone Number:</label>
        <input type="text" id="phoneNumber" name="phoneNumber" required>

        <label for="description">Description:</label>
        <textarea id="description" name="description" required></textarea>

        <button type="submit">Update Information</button>
    </form>

    <div class="back-link">
        <a href="AdminDashboard.jsp">Back to Dashboard</a>
    </div>
</div>

</body>
</html>
