package com.abc.controller;

import com.abc.dao.OrderDAO;
import com.restaurant.model.Order;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/submitOrder")
public class OrderServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
        String customerName = request.getParameter("customerName");
        String contactNumber = request.getParameter("contactNumber");
        String foodItem = request.getParameter("foodItem");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        String specialRequests = request.getParameter("specialRequests");
        String paymentMethod = request.getParameter("paymentMethod");

        // Create Order object
        Order order = new Order();
        order.setCustomerName(customerName);
        order.setContactNumber(contactNumber);
        order.setFoodItem(foodItem);
        order.setQuantity(quantity);
        order.setSpecialRequests(specialRequests);
        order.setPaymentMethod(paymentMethod);

        // Insert Order into the database
        OrderDAO orderDAO = new OrderDAO();
        try {
            orderDAO.insertOrder(order);
            response.sendRedirect("orderConfirmation.jsp"); // Redirect to a confirmation page
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("ordererror.jsp"); // Redirect to error page

        }
    }
}
