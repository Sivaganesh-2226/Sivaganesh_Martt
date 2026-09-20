<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard - Sivaganesh Martt</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">

    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #f5f7fb;
        }

        .admin-header {
            background: #1565c0;
            color: white;
            padding: 20px 40px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .admin-header h1 {
            margin: 0;
        }

        .logout-btn {
            background: #e53935;
            color: white;
            text-decoration: none;
            padding: 10px 18px;
            border-radius: 8px;
        }

        .dashboard-container {
            padding: 40px;
            max-width: 1200px;
            margin: auto;
        }

        .welcome-box {
            background: white;
            padding: 30px;
            border-radius: 15px;
            margin-bottom: 30px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.08);
        }

        .welcome-box h2 {
            color: #1565c0;
            margin-top: 0;
        }

        .dashboard-grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 20px;
        }

        .dashboard-card {
            background: white;
            padding: 30px;
            border-radius: 15px;
            text-align: center;
            box-shadow: 0 5px 20px rgba(0,0,0,0.08);
        }

        .dashboard-card h3 {
            color: #333;
            margin-bottom: 10px;
        }

        .dashboard-card p {
            color: #777;
            margin-bottom: 20px;
        }

        .dashboard-btn {
            display: inline-block;
            background: #1565c0;
            color: white;
            text-decoration: none;
            padding: 11px 22px;
            border-radius: 8px;
        }

        .dashboard-btn:hover {
            background: #0d47a1;
        }

        @media (max-width: 700px) {
            .dashboard-grid {
                grid-template-columns: 1fr;
            }

            .dashboard-container {
                padding: 20px;
            }

            .admin-header {
                padding: 18px 20px;
            }
        }
    </style>
</head>

<body>

<div class="admin-header">

    <h1>Sivaganesh Martt - Admin</h1>

    <a href="${pageContext.request.contextPath}/logout"
       class="logout-btn">
        Logout
    </a>

</div>

<div class="dashboard-container">

    <div class="welcome-box">

        <h2>Welcome to Admin Dashboard 👋</h2>

        <p>
            Manage products, categories and customer orders
            from this dashboard.
        </p>

    </div>

    <div class="dashboard-grid">

        <div class="dashboard-card">

            <h3>📦 Products</h3>

            <p>
                Add, edit and delete products.
            </p>

            <a href="${pageContext.request.contextPath}/admin/products.jsp"
               class="dashboard-btn">
                Manage Products
            </a>

        </div>

        <div class="dashboard-card">

            <h3>➕ Add Product</h3>

            <p>
                Add a new product to the store.
            </p>

            <a href="${pageContext.request.contextPath}/admin/add-product.jsp"
               class="dashboard-btn">
                Add Product
            </a>

        </div>

        <div class="dashboard-card">

            <h3>🗂️ Categories</h3>

            <p>
                Manage product categories.
            </p>

            <a href="${pageContext.request.contextPath}/admin/category.jsp"
               class="dashboard-btn">
                Manage Categories
            </a>

        </div>

        <div class="dashboard-card">

            <h3>🛒 Orders</h3>

            <p>
                View and update customer orders.
            </p>

            <a href="${pageContext.request.contextPath}/admin/orders.jsp"
               class="dashboard-btn">
                Manage Orders
            </a>

        </div>

    </div>

</div>

</body>
</html>