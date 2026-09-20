package com.ecommerce.service;

import com.ecommerce.dao.WishlistDAO;
import com.ecommerce.model.Wishlist;

import java.util.List;

public class WishlistService {

    private final WishlistDAO wishlistDAO = new WishlistDAO();

    public boolean addToWishlist(int userId, int productId) {
        return wishlistDAO.addToWishlist(userId, productId);
    }

    public List<Wishlist> getWishlistByUser(int userId) {
        return wishlistDAO.getWishlistByUser(userId);
    }

    public boolean removeFromWishlist(int userId, int productId) {
        return wishlistDAO.removeFromWishlist(userId, productId);
    }
}