<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.ecommerce.model.Order" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manage Orders - Sivaganesh Martt</title>

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

    <h1 class="page-title">Manage Orders 📦</h1>

    <%
        List<Order> orders =
                (List<Order>) request.getAttribute("orders");

        if (orders == null || orders.isEmpty()) {
    %>

        <div class="dashboard-card">
            <h3>No Orders Found</h3>
            <p>Customer orders will appear here.</p>
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
                        <strong>User ID:</strong>
                        <%= order.getUserId() %>
                    </p>

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
                        <strong>Address:</strong>
                        <%= order.getAddress() %>
                    </p>

                    <p>
                        <strong>Date:</strong>
                        <%= order.getCreatedAt() %>
                    </p>

                    <br>

                    <form action="${pageContext.request.contextPath}/admin/orders"
                          method="post">

                        <input type="hidden"
                               name="orderId"
                               value="<%= order.getId() %>">

                        <div class="form-group">

                            <label>Order Status</label>

                            <select name="status" required>

                                <option value="PLACED"
                                    <%= "PLACED".equals(order.getStatus())
                                        ? "selected" : "" %>>
                                    Placed
                                </option>

                                <option value="PROCESSING"
                                    <%= "PROCESSING".equals(order.getStatus())
                                        ? "selected" : "" %>>
                                    Processing
                                </option>

                                <option value="SHIPPED"
                                    <%= "SHIPPED".equals(order.getStatus())
                                        ? "selected" : "" %>>
                                    Shipped
                                </option>

                                <option value="DELIVERED"
                                    <%= "DELIVERED".equals(order.getStatus())
                                        ? "selected" : "" %>>
                                    Delivered
                                </option>

                                <option value="CANCELLED"
                                    <%= "CANCELLED".equals(order.getStatus())
                                        ? "selected" : "" %>>
                                    Cancelled
                                </option>

                            </select>

                        </div>

                        <button type="submit"
                                class="btn primary-btn">
                            Update Status
                        </button>

                    </form>

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