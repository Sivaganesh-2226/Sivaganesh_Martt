package com.ecommerce.service;

import com.ecommerce.dao.CartDAO;
import com.ecommerce.model.Cart;

import java.util.List;

public class CartService {

    private final CartDAO cartDAO = new CartDAO();

    public boolean addToCart(int userId, int productId, int quantity) {
        return cartDAO.addToCart(userId, productId, quantity);
    }

    public List<Cart> getCartByUser(int userId) {
        return cartDAO.getCartByUser(userId);
    }

    public boolean updateQuantity(int userId, int productId, int quantity) {
        return cartDAO.updateQuantity(userId, productId, quantity);
    }

    public boolean removeFromCart(int userId, int productId) {
        return cartDAO.removeFromCart(userId, productId);
    }

    public boolean clearCart(int userId) {
        return cartDAO.clearCart(userId);
    }
}