<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Generate Reports</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #a0c4ff, #c1e1ff); /* Light Blue Gradient */
            margin: 0;
            padding: 0;
        }

        .container {
            width: 70%;
            margin: 2% auto;
            padding: 20px;
            background-color: #ffffff;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
            border: 1px solid #d1e0e0;
            background: #ffffff;
        }

        h1 {
            color: #004d99; /* Dark Blue */
            text-align: center;
            margin-bottom: 20px;
        }

        .message {
            text-align: center;
            margin-top: 20px;
        }

        .back-link {
            margin-top: 20px;
            display: flex;
            justify-content: center;
        }

        .back-link a {
            text-decoration: none;
            color: #ffffff;
            background-color: #004d99; /* Dark Blue */
            padding: 12px 25px;
            border-radius: 8px;
            font-size: 18px;
            transition: background-color 0.3s;
        }

        .back-link a:hover {
            background-color: #003366; /* Darker Blue */
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Report Generation Status</h1>
    <div class="message">
        <% String status = (String) request.getAttribute("status"); %>
        <% if ("success".equals(status)) { %>
            <p>Report has been generated successfully!</p>
        <% } else if ("error".equals(status)) { %>
            <p>There was an error generating the report. Please try again.</p>
        <% } %>
    </div>
    
    <div class="back-link">
        <a href="AdminDashboard.jsp">Back to Dashboard</a>
    </div>
</div>

</body>
</html>
