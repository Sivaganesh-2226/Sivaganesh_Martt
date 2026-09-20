<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Order Placed - Sivaganesh Martt</title>

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

    <div class="form-card">

        <div class="success-message">
            Order placed successfully!
        </div>

        <h1>Thank You for Shopping! 🎉</h1>

        <p>
            Your order has been placed successfully.
        </p>

        <p>
            You can view your order details from My Orders.
        </p>

        <br>

        <a href="${pageContext.request.contextPath}/orders"
           class="btn primary-btn">
            View My Orders
        </a>

        <br><br>

        <a href="${pageContext.request.contextPath}/products"
           class="btn secondary-btn">
            Continue Shopping
        </a>

    </div>

</main>

</body>
</html>