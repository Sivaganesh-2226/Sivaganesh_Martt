<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.ecommerce.model.Order" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Orders - Sivaganesh Martt</title>

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
        <a href="${pageContext.request.contextPath}/products">Products</a>
        <a href="${pageContext.request.contextPath}/wishlist">Wishlist</a>
        <a href="${pageContext.request.contextPath}/cart">Cart</a>
        <a href="${pageContext.request.contextPath}/orders">My Orders</a>
        <a href="${pageContext.request.contextPath}/logout">Logout</a>
    </nav>

</header>

<main class="container">

    <h1 class="page-title">My Orders 📦</h1>

    <%
        List<Order> orders =
                (List<Order>) request.getAttribute("orders");

        if (orders == null || orders.isEmpty()) {
    %>

        <div class="dashboard-card">
            <h3>No Orders Yet</h3>
            <p>You haven't placed any orders yet.</p>

            <br>

            <a href="${pageContext.request.contextPath}/products"
               class="btn primary-btn">
                Start Shopping
            </a>
        </div>

    <%
        } else {
    %>

        <div class="product-grid">

            <%
                for (Order order : orders) {
            %>

                <div class="dashboard-card">

                    <h3>
                        Order #<%= order.getId() %>
                    </h3>

                    <p>
                        <strong>Total:</strong>
                        ₹<%= String.format("%.2f",
                                order.getTotalAmount()) %>
                    </p>

                    <p>
                        <strong>Payment:</strong>
                        <%= order.getPaymentMethod() %>
                    </p>

                    <p>
                        <strong>Status:</strong>
                        <%= order.getStatus() %>
                    </p>

                    <p>
                        <strong>Address:</strong>
                        <%= order.getAddress() %>
                    </p>

                    <p>
                        <strong>Date:</strong>
                        <%= order.getCreatedAt() %>
                    </p>

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