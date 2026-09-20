package com.ecommerce.service;

import com.ecommerce.dao.UserDAO;
import com.ecommerce.model.User;

public class UserService {

    private final UserDAO userDAO = new UserDAO();

    public boolean registerUser(User user) {
        return userDAO.registerUser(user);
    }

    public User loginUser(String email, String password) {
        return userDAO.loginUser(email, password);
    }

    public User loginAdmin(String username, String password) {
        return userDAO.loginUserByUsername(username, password);
    }
}