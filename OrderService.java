package com.ecommerce.service;

import com.ecommerce.dao.OrderDAO;
import com.ecommerce.model.Order;
import com.ecommerce.model.OrderItem;

import java.util.List;

public class OrderService {

    private final OrderDAO orderDAO = new OrderDAO();

    public int createOrder(Order order, List<OrderItem> items) {
        return orderDAO.createOrder(order, items);
    }

    public List<Order> getOrdersByUser(int userId) {
        return orderDAO.getOrdersByUser(userId);
    }

    public List<Order> getAllOrders() {
        return orderDAO.getAllOrders();
    }

    public boolean updateOrderStatus(int orderId, String status) {
        return orderDAO.updateOrderStatus(orderId, status);
    }
}