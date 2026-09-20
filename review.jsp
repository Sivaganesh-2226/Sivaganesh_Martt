<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Write Review - Sivaganesh Martt</title>

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

        <h2>Write a Review ⭐</h2>

        <form action="${pageContext.request.contextPath}/review"
              method="post">

            <input type="hidden"
                   name="productId"
                   value="<%= request.getParameter("productId") %>">

            <div class="form-group">
                <label>Rating</label>

                <select name="rating" required>

                    <option value="">
                        Select Rating
                    </option>

                    <option value="5">★★★★★ - Excellent</option>
                    <option value="4">★★★★ - Very Good</option>
                    <option value="3">★★★ - Good</option>
                    <option value="2">★★ - Average</option>
                    <option value="1">★ - Poor</option>

                </select>
            </div>

            <div class="form-group">
                <label>Your Review</label>

                <textarea name="comment"
                          placeholder="Write your review here..."
                          required></textarea>
            </div>

            <button type="submit"
                    class="btn primary-btn">
                Submit Review
            </button>

        </form>

        <br>

        <div class="form-footer">

            <a href="${pageContext.request.contextPath}/products">
                ← Back to Products
            </a>

        </div>

    </div>

</main>

</body>
</html>