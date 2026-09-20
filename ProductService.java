package com.ecommerce.service;

import com.ecommerce.dao.ProductDAO;
import com.ecommerce.model.Product;

import java.util.List;

public class ProductService {

    private final ProductDAO productDAO = new ProductDAO();

    public List<Product> getAllProducts() {
        return productDAO.getAllProducts();
    }

    public List<Product> getProductsByCategory(int categoryId) {
        return productDAO.getProductsByCategory(categoryId);
    }

    public List<Product> searchProducts(String keyword) {
        return productDAO.searchProducts(keyword);
    }

    public Product getProductById(int id) {
        return productDAO.getProductById(id);
    }

    public boolean addProduct(Product product) {
        return productDAO.addProduct(product);
    }

    public boolean updateProduct(Product product) {
        return productDAO.updateProduct(product);
    }

    public boolean deleteProduct(int id) {
        return productDAO.deleteProduct(id);
    }
}