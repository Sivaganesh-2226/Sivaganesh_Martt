<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard - Sivaganesh Martt</title>

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

    <h1 class="page-title">
        Admin Dashboard 🛠️
    </h1>

    <p>
        Manage products and customer orders from here.
    </p>

    <br>

    <div class="dashboard-grid">

        <div class="dashboard-card">

            <h3>📦 Product Management</h3>

            <p>
                Add, edit and delete products.
            </p>

            <br>

            <a href="${pageContext.request.contextPath}/admin/products">
                Manage Products →
            </a>

        </div>

        <div class="dashboard-card">

            <h3>🛒 Order Management</h3>

            <p>
                View and update customer orders.
            </p>

            <br>

            <a href="${pageContext.request.contextPath}/admin/orders">
                Manage Orders →
            </a>

        </div>

    </div>

</main>

</body>
</html>