<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home - Sivaganesh Martt</title>

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

    <h1 class="page-title">
        Welcome to Sivaganesh Martt 🛍️
    </h1>

    <p>
        Explore our products and start shopping.
    </p>

    <br>

    <div class="dashboard-grid">

        <div class="dashboard-card">
            <h3>🛍️ Products</h3>
            <p>Browse all available products.</p>

            <br>

            <a href="${pageContext.request.contextPath}/products">
                View Products →
            </a>
        </div>

        <div class="dashboard-card">
            <h3>❤️ Wishlist</h3>
            <p>View your saved products.</p>

            <br>

            <a href="${pageContext.request.contextPath}/wishlist">
                View Wishlist →
            </a>
        </div>

        <div class="dashboard-card">
            <h3>🛒 Cart</h3>
            <p>Check your selected products.</p>

            <br>

            <a href="${pageContext.request.contextPath}/cart">
                View Cart →
            </a>
        </div>

        <div class="dashboard-card">
            <h3>📦 My Orders</h3>
            <p>Track your placed orders.</p>

            <br>

            <a href="${pageContext.request.contextPath}/orders">
                View Orders →
            </a>
        </div>

    </div>

</main>

</body>
</html>