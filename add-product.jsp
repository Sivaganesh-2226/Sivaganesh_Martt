<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Product - Sivaganesh Martt</title>

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

        <h2>Add New Product</h2>

        <form action="${pageContext.request.contextPath}/admin/add-product"
              method="post">

            <div class="form-group">
                <label>Product Name</label>

                <input type="text"
                       name="name"
                       placeholder="Enter product name"
                       required>
            </div>

            <div class="form-group">
                <label>Description</label>

                <textarea name="description"
                          placeholder="Enter product description"
                          required></textarea>
            </div>

            <div class="form-group">
                <label>Price</label>

                <input type="number"
                       name="price"
                       step="0.01"
                       min="0"
                       placeholder="Enter product price"
                       required>
            </div>

            <div class="form-group">
                <label>Quantity</label>

                <input type="number"
                       name="quantity"
                       min="0"
                       placeholder="Enter stock quantity"
                       required>
            </div>

            <div class="form-group">
                <label>Category ID</label>

                <input type="number"
                       name="categoryId"
                       min="1"
                       placeholder="Enter category ID"
                       required>
            </div>

            <div class="form-group">
                <label>Image File Name</label>

                <input type="text"
                       name="image"
                       placeholder="Example: mobile.jpg"
                       required>
            </div>

            <button type="submit"
                    class="btn primary-btn">
                Add Product
            </button>

        </form>

        <br>

        <div class="form-footer">

            <a href="${pageContext.request.contextPath}/admin/products">
                ← Back to Products
            </a>

        </div>

    </div>

</main>

</body>
</html>