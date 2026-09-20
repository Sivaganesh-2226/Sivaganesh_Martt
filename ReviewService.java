package com.ecommerce.service;

import com.ecommerce.dao.ReviewDAO;
import com.ecommerce.model.Review;

import java.util.List;

public class ReviewService {

    private final ReviewDAO reviewDAO = new ReviewDAO();

    public boolean addReview(Review review) {
        return reviewDAO.addReview(review);
    }

    public List<Review> getReviewsByProduct(int productId) {
        return reviewDAO.getReviewsByProduct(productId);
    }
}