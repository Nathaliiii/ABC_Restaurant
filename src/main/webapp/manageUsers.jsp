<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manage Users</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('images/adminmanageuserbg.jpeg'); 
            background-size: cover;
            background-position: center;
            height: 100vh;
        }
        .container {
            width: 70%; /* Reduced container width */
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            font-size: 14px; /* Reduced font size */
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 8px; /* Reduced padding */
            text-align: left;
        }
        th {
            background-color: #f4f4f4;
        }
        .form-container {
            margin-top: 20px;
            padding: 15px; /* Reduced padding */
            border: 1px solid #ddd;
            border-radius: 8px;
            background-color: #f9f9f9;
            max-width: 350px; /* Reduced form width */
            margin: 0 auto; /* Center form */
        }
        .form-container input[type="text"], .form-container input[type="password"], .form-container select {
            width: calc(100% - 16px); /* Adjust width */
            padding: 6px; /* Reduced padding */
            margin-bottom: 8px; /* Reduced margin */
            font-size: 14px; /* Reduced font size */
        }
        .form-container input[type="submit"] {
            padding: 8px; /* Reduced padding */
            background-color: lightgreen;
            border: none;
            cursor: pointer;
            font-size: 14px; /* Reduced font size */
        }
        .form-container input[type="submit"]:hover {
            background-color: darkgreen;
            color: white;
        }
        .action-buttons {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }
        .action-buttons a {
            margin: 0 8px; /* Reduced margin */
            padding: 8px 16px; /* Reduced padding */
            background-color: lightblue;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            font-size: 14px; /* Reduced font size */
            display: inline-block; /* Ensure padding works correctly */
            text-align: center; /* Center text */
        }
        .action-buttons a:hover {
            background-color: deepskyblue;
        }
        .btn {
            padding: 8px 16px;
            background-color: lightblue;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 14px; /* Font size */
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
            text-align: center;
        }
        .btn:hover {
            background-color: deepskyblue;
        }
        .btn.delete {
            background-color: lightcoral; /* Different color for delete button */
        }
        .btn.delete:hover {
            background-color: darkred;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Manage Users</h2>
        
        <!-- Display Users Table -->
        <table>
            <thead>
                <tr>
                    <th>Username</th>
                    <th>Role</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <%-- Example data --%>
                <tr>
                    <td>John Fernando</td>
                    <td>Admin</td>
                    <td>
                        <a href="editUser.jsp?username=John%20Fernando" class="btn">Edit</a>
                        <form action="deleteUserServlet" method="post" style="display:inline;">
                            <input type="hidden" name="username" value="John Fernando">
                            <input type="submit" value="Delete" class="btn delete">
                        </form>
                    </td>
                </tr>
                <tr>
                    <td>Anne Perera</td>
                    <td>Staff</td>
                    <td>
                        <a href="editUser.jsp?username=Anne%20Perera" class="btn">Edit</a>
                        <form action="deleteUserServlet" method="post" style="display:inline;">
                            <input type="hidden" name="username" value="Anne Perera">
                            <input type="submit" value="Delete" class="btn delete">
                        </form>
                    </td>
                </tr>
                <%-- End of example data --%>
            </tbody>
        </table>

        <!-- Add User Form -->
        <div class="form-container">
            <h3>Add New User</h3>
            <form action="addUserServlet" method="post">
                <label for="newUsername">Username:</label>
                <input type="text" id="newUsername" name="username" required>

                <label for="newPassword">Password:</label>
                <input type="password" id="newPassword" name="password" required>

                <label for="newRole">Role:</label>
                <select id="newRole" name="role" required>
                    <option value="admin">Admin</option>
                    <option value="staff">Staff</option>
                </select>

                <input type="submit" value="Add User">
            </form>
        </div>

        <!-- Action Buttons -->
        <div class="action-buttons">
            <a href="AdminDashboard.jsp">Back to Dashboard</a>
        </div>
    </div>
</body>
</html>
