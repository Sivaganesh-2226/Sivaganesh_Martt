<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Categories - Sivaganesh Martt</title>

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

        <h2>Category Management 🏷️</h2>

        <p>
            Product categories are currently managed through
            the database.
        </p>

        <br>

        <div class="dashboard-card">

            <h3>Available Categories</h3>

            <br>

            <p>1. Mobiles</p>
            <p>2. Laptops</p>
            <p>3. Electronics</p>
            <p>4. Fashion</p>
            <p>5. Accessories</p>

        </div>

        <br>

        <a href="${pageContext.request.contextPath}/admin/products"
           class="btn primary-btn">
            ← Back to Products
        </a>

    </div>

</main>

</body>
</html>