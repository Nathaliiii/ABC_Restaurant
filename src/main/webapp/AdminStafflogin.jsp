<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('images/adminloginbackground.jpg'); /* Correct path to your background image */
            background-size: cover;
            background-position: center;
            height: 100vh; /* Ensure the body covers the full viewport height */
        }
        .container {
            display: flex;
            height: 100vh; /* Full viewport height */
        }
        .image-section {
            flex: 1;
            background-image: url('images/AdminStafflogin.jpg'); /* Correct path to your left-side image */
            background-size: cover;
            background-position: center;
        }
        .form-section {
            flex: 1;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }
        .form-container {
            width: 100%;
            max-width: 400px;
            padding: 20px;
            border: 1px solid #ddd;
            background-color: #fff;
        }
        label {
            display: block;
            margin-bottom: 5px;
        }
        input[type="text"], input[type="password"], select {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: lightgreen;
            border: none;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: darkgreen;
            color: white;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="image-section"></div>
        <div class="form-section">
            <div class="form-container">
                <h2>Login</h2>
                <form action="loginServlet" method="post">
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="username" required>

                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required>

                    <label for="role">Role:</label>
                    <select id="role" name="role" required>
                        <option value="admin">Admin</option>
                        <option value="staff">Staff</option>
                    </select>

                    <input type="submit" value="Login">
                </form>
            </div>
        </div>
    </div>

    <script>
        document.querySelector('form').addEventListener('submit', function(event) {
            const role = document.getElementById('role').value;
            if (role === 'admin') {
                this.action = 'AdminDashboard.jsp';
            } else if (role === 'staff') {
                this.action = 'StaffDashboard.jsp';
            }
        });
    </script>
</body>
</html>
