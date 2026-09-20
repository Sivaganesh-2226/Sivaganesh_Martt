<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="com.ecommerce.model.Order" %>
<%@ page import="com.ecommerce.model.OrderItem" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Order Details - Sivaganesh Martt</title>

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

    <h1 class="page-title">Order Details 📋</h1>

    <%
        Order order = (Order) request.getAttribute("order");
        List<OrderItem> items =
                (List<OrderItem>) request.getAttribute("items");

        if (order == null) {
    %>

        <div class="dashboard-card">
            <h3>Order Not Found</h3>
            <br>

            <a href="${pageContext.request.contextPath}/admin/orders"
               class="btn primary-btn">
                Back to Orders
            </a>
        </div>

    <%
        } else {
    %>

        <div class="dashboard-card">

            <h2>
                Order #<%= order.getId() %>
            </h2>

            <p>
                <strong>User ID:</strong>
                <%= order.getUserId() %>
            </p>

            <p>
                <strong>Total Amount:</strong>
                ₹<%= String.format("%.2f",
                        order.getTotalAmount()) %>
            </p>

            <p>
                <strong>Payment Method:</strong>
                <%= order.getPaymentMethod() %>
            </p>

            <p>
                <strong>Status:</strong>
                <%= order.getStatus() %>
            </p>

            <p>
                <strong>Delivery Address:</strong>
                <%= order.getAddress() %>
            </p>

            <p>
                <strong>Order Date:</strong>
                <%= order.getCreatedAt() %>
            </p>

        </div>

        <br>

        <h2>Ordered Items</h2>

        <br>

        <%
            if (items == null || items.isEmpty()) {
        %>

            <div class="dashboard-card">
                <p>No items found for this order.</p>
            </div>

        <%
            } else {
        %>

            <table class="cart-table">

                <thead>
                    <tr>
                        <th>Product ID</th>
                        <th>Quantity</th>
                        <th>Price</th>
                        <th>Total</th>
                    </tr>
                </thead>

                <tbody>

                <%
                    for (OrderItem item : items) {
                        double total =
                                item.getPrice() * item.getQuantity();
                %>

                    <tr>

                        <td>
                            <%= item.getProductId() %>
                        </td>

                        <td>
                            <%= item.getQuantity() %>
                        </td>

                        <td>
                            ₹<%= String.format("%.2f",
                                    item.getPrice()) %>
                        </td>

                        <td>
                            ₹<%= String.format("%.2f",
                                    total) %>
                        </td>

                    </tr>

                <%
                    }
                %>

                </tbody>

            </table>

        <%
            }
        %>

        <br>

        <a href="${pageContext.request.contextPath}/admin/orders"
           class="btn secondary-btn">
            ← Back to Orders
        </a>

    <%
        }
    %>

</main>

</body>
</html>