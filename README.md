1st Commit - "ABC Restaurant" Web-based System

Title: Initial Commit - Core System Setup

Description:

- Set up the core functionalities for the "ABC Restaurant" interactive web application.
- Implemented online reservations, search for services and facilities, and query submission features.
- Established role-based access for Admin, restaurant staff, and customers.
- Developed user-friendly interfaces and business flow representation.
- Integrated MySQL database with validation mechanisms.
- Added basic reports for business insights.

 2nd Commit - Payment Integration and UI Enhancements

Title: Added Payment Integration and UI Enhancements

Description:

- Integrated payment processing for dine-in and delivery reservations.
- Improved the user interface with responsive design updates for better device compatibility.
- Enhanced validation mechanisms to ensure secure payment transactions and accurate data entry.
- Added reports for payment summaries and reservation statistics.
- Refined access control so staff can manage and view payments effectively.

 3rd Commit - Admin Panel Enhancements

Title: feat(admin-panel): Recreate Admin Panel JSP Files

Description:

- Recreated JSP files for managing users, generating reports, and updating restaurant information.
- Updated corresponding package functions to integrate with new JSP files.

4th Commit - Customer Functionalities Implementation

Title: feat: Created Packages for Customer Functionalities

Description:

- Added `com.abc.controller.CustomerReservationServlet` for handling customer table bookings.
- Created `com.abc.dao.CustomerDAO` for database interactions related to customer reservations.
- Added `com.abc.service.CustomerService` to manage business logic for customer actions.
- Created `com.abc.controller.CustomerQueryServlet` for handling customer queries submission.
- Added `com.abc.controller.MenuSearchServlet` for customer menu search functionality.
- Updated the necessary JSP files to integrate these features.

 5th Commit - Improved Error Handling and Validation

Title: fix: Enhanced Error Handling and Validation

Description:

- Improved error handling in login and reservation forms to provide more informative feedback.
- Updated validation mechanisms to ensure accurate data entry and prevent invalid submissions.
- Refined user input error messages to enhance user experience.

6th Commit - Session Management for Login Success

Title: feat: Implement Session Management for Login Success and created unit tests

Description:

- Added session handling to display a success message after a successful login.
- Implemented redirection to respective dashboards based on user role (Admin or Staff).
- Enhanced login process to provide clear feedback for successful and unsuccessful login attempts.
- created unit tests

 7th Commit - README File Update

Title: docs: Update README with Installation Instructions

Description:

- Added detailed installation and usage instructions to the README file.
- Included setup guidelines, environment configuration, and dependencies information.
- Provided examples and explanations to assist new developers and users in setting up the project.

