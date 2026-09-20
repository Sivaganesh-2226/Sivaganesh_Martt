<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="com.ecommerce.model.Product" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product Details - Sivaganesh Martt</title>

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

    <%
        Product product =
                (Product) request.getAttribute("product");

        if (product == null) {
    %>

        <div class="dashboard-card">

            <h2>Product Not Found</h2>

            <br>

            <a href="${pageContext.request.contextPath}/products"
               class="btn primary-btn">
                Back to Products
            </a>

        </div>

    <%
        } else {
    %>


    <div class="product-details">


        <!-- PRODUCT IMAGE -->

        <div>

            <img
                src="${pageContext.request.contextPath}/image/<%= product.getImage() %>"
                alt="<%= product.getName() %>"
                class="product-details-image">

        </div>


        <!-- PRODUCT INFORMATION -->

        <div class="product-details-info">

            <h1>
                <%= product.getName() %>
            </h1>


            <p>
                <%= product.getDescription() %>
            </p>


            <div class="price">

                ₹<%= String.format("%.2f", product.getPrice()) %>

            </div>


            <p>

                Available Quantity:

                <strong>
                    <%= product.getQuantity() %>
                </strong>

            </p>


            <br>


            <!-- QUANTITY -->

            <form action="${pageContext.request.contextPath}/cart"
                  method="post">

                <input type="hidden"
                       name="action"
                       value="add">

                <input type="hidden"
                       name="productId"
                       value="<%= product.getId() %>">


                <div class="form-group">

                    <label>Quantity</label>

                    <input type="number"
                           name="quantity"
                           value="1"
                           min="1"
                           max="<%= product.getQuantity() %>"
                           required>

                </div>


                <!-- ADD TO CART -->

                <button type="submit"
                        class="btn primary-btn">

                    Add to Cart

                </button>

            </form>


            <br>


            <!-- BUY NOW -->

            <form action="${pageContext.request.contextPath}/cart"
                  method="post">

                <input type="hidden"
                       name="action"
                       value="add">

                <input type="hidden"
                       name="productId"
                       value="<%= product.getId() %>">

                <input type="hidden"
                       name="quantity"
                       value="1">


                <button type="submit"
                        class="btn buy-now-btn">

                    ⚡ Buy Now

                </button>

            </form>


            <br>


            <!-- WISHLIST -->

            <form action="${pageContext.request.contextPath}/wishlist"
                  method="post">

                <input type="hidden"
                       name="action"
                       value="add">

                <input type="hidden"
                       name="productId"
                       value="<%= product.getId() %>">


                <button type="submit"
                        class="btn secondary-btn">

                    ♡ Add to Wishlist

                </button>

            </form>


            <br>


            <!-- BACK -->

            <a href="${pageContext.request.contextPath}/products"
               class="btn secondary-btn">

                ← Back to Products

            </a>


        </div>

    </div>


    <%
        }
    %>

</main>

</body>
</html>