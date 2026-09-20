<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.ecommerce.model.Wishlist" %>
<%@ page import="com.ecommerce.model.Product" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Wishlist - Sivaganesh Martt</title>

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
        <a href="${pageContext.request.contextPath}/user/home.jsp">
            Home
        </a>

        <a href="${pageContext.request.contextPath}/products">
            Products
        </a>

        <a href="${pageContext.request.contextPath}/cart">
            Cart
        </a>

        <a href="${pageContext.request.contextPath}/wishlist">
            Wishlist
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

    <h1 class="page-title">My Wishlist ❤️</h1>

    <%
        List<Wishlist> wishlist =
                (List<Wishlist>) request.getAttribute("wishlist");

        if (wishlist == null || wishlist.isEmpty()) {
    %>

        <div class="dashboard-card">

            <h3>Your Wishlist is Empty</h3>

            <p>
                Add your favourite products to your wishlist.
            </p>

            <br>

            <a href="${pageContext.request.contextPath}/products"
               class="btn primary-btn">
                View Products
            </a>

        </div>

    <%
        } else {
    %>

        <div class="product-grid">

        <%
            for (Wishlist item : wishlist) {

                Product product = item.getProduct();

                if (product != null) {
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
                        ₹<%= String.format("%.2f", product.getPrice()) %>
                    </div>

                    <br>

                    <a href="${pageContext.request.contextPath}/product-details?id=<%= product.getId() %>"
                       class="btn primary-btn">
                        View Product
                    </a>

                    <br><br>

                    <form action="${pageContext.request.contextPath}/wishlist"
                          method="post">

                        <input type="hidden"
                               name="productId"
                               value="<%= product.getId() %>">

                        <input type="hidden"
                               name="action"
                               value="remove">

                        <button type="submit"
                                class="btn secondary-btn">
                            Remove from Wishlist
                        </button>

                    </form>

                </div>

            </div>

        <%
                }
            }
        %>

        </div>

    <%
        }
    %>

</main>

</body>
</html>