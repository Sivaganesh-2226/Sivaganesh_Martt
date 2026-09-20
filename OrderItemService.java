package com.ecommerce.service;

import com.ecommerce.dao.OrderItemDAO;
import com.ecommerce.model.OrderItem;

import java.util.List;

public class OrderItemService {

    private final OrderItemDAO orderItemDAO = new OrderItemDAO();

    public List<OrderItem> getItemsByOrderId(int orderId) {
        return orderItemDAO.getItemsByOrderId(orderId);
    }
}