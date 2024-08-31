Title: 1st Commit - "ABC Restaurant" Web-based System

Description:
- Set up the core functionalities for the "ABC Restaurant" interactive web application.
- Implemented online reservations, search for services and facilities, and query submission features.
- Established role-based access for Admin, restaurant staff, and customers.
- Developed user-friendly interfaces and business flow representation.
- Integrated MySQL database with validation mechanisms.
- Added basic reports for business insights.
  


Title: Added Payment Integration and UI Enhancements

Description:

-Integrated payment processing for dine-in and delivery reservations.

-Improved the user interface with responsive design updates for better device compatibility.

-Enhanced validation mechanisms to ensure secure payment transactions and accurate data entry.

-Added reports for payment summaries and reservation statistics.

-Refined access control so staff can manage and view payments effectively.


feat(admin-panel): recreate manage users, generate reports, and update restaurant information JSP files

- Recreated JSP files for managing users, generating reports, and updating restaurant information.
- Updated corresponding package functions to integrate with new JSP files.



feat: Created packages for customer functionalities - table booking,
queries, and menu search

- Added `com.abc.controller.CustomerReservationServlet` for handling
customer table bookings.
- Created `com.abc.dao.CustomerDAO` for database interactions related to
customer reservations.
- Added `com.abc.service.CustomerService` to manage business logic for
customer actions.
- Created `com.abc.controller.CustomerQueryServlet` for handling
customer queries submission.
- Added `com.abc.controller.MenuSearchServlet` for customer menu search
functionality.
- Updated the necessary JSP files to integrate these features.
 master

