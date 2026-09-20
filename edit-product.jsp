<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="com.ecommerce.model.Product" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Product - Sivaganesh Martt</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">
</head>

<body>

<header class="header">

    <a href="${pageContext.request.contextPath}/admin/home.jsp"
       class="logo">
        Sivaganesh Martt - Admin
    </a>

    <nav class="nav-links">
        <a href="${pageContext.request.contextPath}/admin/products">
            Products
        </a>

        <a href="${pageContext.request.contextPath}/admin/orders">
            Orders
        </a>

        <a href="${pageContext.request.contextPath}/logout">
            Logout
        </a>
    </nav>

</header>

<main class="container">

    <div class="form-card">

        <h2>Edit Product</h2>

        <%
            Product product =
                    (Product) request.getAttribute("product");

            if (product == null) {
        %>

            <div class="error-message">
                Product not found.
            </div>

            <br>

            <a href="${pageContext.request.contextPath}/admin/products"
               class="btn primary-btn">
                Back to Products
            </a>

        <%
            } else {
        %>

            <form action="${pageContext.request.contextPath}/admin/edit-product"
                  method="post">

                <input type="hidden"
                       name="id"
                       value="<%= product.getId() %>">

                <div class="form-group">
                    <label>Product Name</label>

                    <input type="text"
                           name="name"
                           value="<%= product.getName() %>"
                           required>
                </div>

                <div class="form-group">
                    <label>Description</label>

                    <textarea name="description"
                              required><%= product.getDescription() %></textarea>
                </div>

                <div class="form-group">
                    <label>Price</label>

                    <input type="number"
                           name="price"
                           step="0.01"
                           min="0"
                           value="<%= product.getPrice() %>"
                           required>
                </div>

                <div class="form-group">
                    <label>Quantity</label>

                    <input type="number"
                           name="quantity"
                           min="0"
                           value="<%= product.getQuantity() %>"
                           required>
                </div>

                <div class="form-group">
                    <label>Category ID</label>

                    <input type="number"
                           name="categoryId"
                           min="1"
                           value="<%= product.getCategoryId() %>"
                           required>
                </div>

                <div class="form-group">
                    <label>Image File Name</label>

                    <input type="text"
                           name="image"
                           value="<%= product.getImage() %>"
                           required>
                </div>

                <button type="submit"
                        class="btn primary-btn">
                    Update Product
                </button>

            </form>

            <br>

            <div class="form-footer">

                <a href="${pageContext.request.contextPath}/admin/products">
                    ← Back to Products
                </a>

            </div>

        <%
            }
        %>

    </div>

</main>

</body>
</html>