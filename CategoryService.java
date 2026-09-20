package com.ecommerce.service;

import com.ecommerce.dao.CategoryDAO;
import com.ecommerce.model.Category;

import java.util.List;

public class CategoryService {

    private final CategoryDAO categoryDAO = new CategoryDAO();

    public List<Category> getAllCategories() {
        return categoryDAO.getAllCategories();
    }
}