<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.ecommerce.model.Product" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manage Products - Sivaganesh Martt</title>

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

    <h1 class="page-title">Manage Products 📦</h1>

    <a href="${pageContext.request.contextPath}/admin/add-product.jsp"
       class="btn primary-btn">
        + Add New Product
    </a>

    <br><br>

    <%
        List<Product> products =
                (List<Product>) request.getAttribute("products");

        if (products == null || products.isEmpty()) {
    %>

        <div class="dashboard-card">
            <h3>No Products Available</h3>
            <p>Add a product to display it here.</p>
        </div>

    <%
        } else {
    %>

        <div class="product-grid">

            <%
                for (Product product : products) {
            %>

                <div class="product-card">

                    <img
                        src="${pageContext.request.contextPath}/image/<%= product.getImage() %>"
                        alt="<%= product.getName() %>"
                        class="product-image">

                    <div class="product-info">

                        <div class="product-name">
                            <%= product.getName() %>
                        </div>

                        <div class="product-description">
                            <%= product.getDescription() %>
                        </div>

                        <div class="product-price">
                            ₹<%= String.format("%.2f",
                                    product.getPrice()) %>
                        </div>

                        <p>
                            Stock:
                            <strong>
                                <%= product.getQuantity() %>
                            </strong>
                        </p>

                        <br>

                        <a href="${pageContext.request.contextPath}/admin/edit-product?id=<%= product.getId() %>"
                           class="btn primary-btn">
                            Edit
                        </a>

                        <br><br>

                        <form action="${pageContext.request.contextPath}/admin/delete-product"
                              method="post">

                            <input type="hidden"
                                   name="id"
                                   value="<%= product.getId() %>">

                            <button type="submit"
                                    class="btn secondary-btn">
                                Delete
                            </button>

                        </form>

                    </div>

                </div>

            <%
                }
            %>

        </div>

    <%
        }
    %>

</main>

</body>
</html>