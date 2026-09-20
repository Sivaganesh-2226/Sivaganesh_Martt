 <%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.ecommerce.model.Product" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Products - Sivaganesh Martt</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">
</head>

<body>

<header class="header">

    <a href="${pageContext.request.contextPath}/user/home.jsp"
       class="logo">
        Sivaganesh Martt
    </a>

    <nav class="nav-links">
        <a href="${pageContext.request.contextPath}/products">
            Products
        </a>

        <a href="${pageContext.request.contextPath}/wishlist">
            Wishlist
        </a>

        <a href="${pageContext.request.contextPath}/cart">
            Cart
        </a>

        <a href="${pageContext.request.contextPath}/orders">
            My Orders
        </a>

        <a href="${pageContext.request.contextPath}/logout">
            Logout
        </a>
    </nav>

</header>

<main class="container">

    <h1 class="page-title">Products</h1>

<form action="${pageContext.request.contextPath}/products"
      method="get"
      class="search-form">

    <input
        type="text"
        name="search"
        value="<%= request.getAttribute("search") != null
                ? request.getAttribute("search")
                : "" %>"
        placeholder="Search products..."
        class="search-input">

    <button type="submit" class="search-btn">
        🔍 Search
    </button>

</form>

    <!-- Category Filter -->
    <div class="dashboard-card">

        <h3>Shop by Category</h3>

        <div class="category-filter">

            <a href="${pageContext.request.contextPath}/products"
               class="btn primary-btn">
                All Products
            </a>

            <a href="${pageContext.request.contextPath}/products?category=1"
               class="btn primary-btn">
                Mobiles
            </a>

            <a href="${pageContext.request.contextPath}/products?category=2"
               class="btn primary-btn">
                Laptops
            </a>

            <a href="${pageContext.request.contextPath}/products?category=3"
               class="btn primary-btn">
                Electronics
            </a>

            <a href="${pageContext.request.contextPath}/products?category=4"
               class="btn primary-btn">
                Fashion
            </a>

            <a href="${pageContext.request.contextPath}/products?category=5"
               class="btn primary-btn">
                Accessories
            </a>

        </div>

    </div>

    <%
        String category = request.getParameter("category");

        String heading = "All Products";

        if ("1".equals(category)) {
            heading = "Mobiles";
        } else if ("2".equals(category)) {
            heading = "Laptops";
        } else if ("3".equals(category)) {
            heading = "Electronics";
        } else if ("4".equals(category)) {
            heading = "Fashion";
        } else if ("5".equals(category)) {
            heading = "Accessories";
        }
    %>

    <h2 style="margin:25px 0 15px;">
        <%= heading %>
    </h2>

    <%
        List<Product> products =
                (List<Product>) request.getAttribute("products");

        if (products == null || products.isEmpty()) {
    %>

        <div class="dashboard-card">
            <h3>No Products Available</h3>
            <p>
                There are no products available in this category.
            </p>
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
                        class="product-image"
                    >

                    <div class="product-info">

                        <div class="product-name">
                            <%= product.getName() %>
                        </div>

                        <div class="product-description">
                            <%= product.getDescription() %>
                        </div>

                        <div class="product-price">
                            ₹<%= String.format("%.2f", product.getPrice()) %>
                        </div>

                        <a
                            href="${pageContext.request.contextPath}/product-details?id=<%= product.getId() %>"
                            class="btn primary-btn">
                            View Product
                        </a>

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