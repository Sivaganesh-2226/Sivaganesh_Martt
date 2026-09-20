<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.ecommerce.model.Cart" %>
<%@ page import="com.ecommerce.model.Product" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">

    <title>My Cart - Sivaganesh Martt</title>

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

        <a href="${pageContext.request.contextPath}/user/home.jsp">
            Home
        </a>

        <a href="${pageContext.request.contextPath}/products">
            Products
        </a>

        <a href="${pageContext.request.contextPath}/cart">
            Cart
        </a>

        <a href="${pageContext.request.contextPath}/wishlist">
            Wishlist
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
        Your Shopping Cart 🛒
    </h1>


    <%

        List<Cart> cartItems =
                (List<Cart>) request.getAttribute("cartList");


        if (cartItems == null || cartItems.isEmpty()) {

    %>


        <div class="dashboard-card">

            <h3>
                Your Cart is Empty
            </h3>

            <p>
                Add some products to your cart and continue shopping.
            </p>

            <br>

            <a href="${pageContext.request.contextPath}/products"
               class="btn primary-btn">

                Continue Shopping

            </a>

        </div>


    <%

        } else {

            double grandTotal = 0;

    %>


        <div class="cart-table-container">

            <table class="cart-table">

                <thead>

                    <tr>

                        <th>Product</th>

                        <th>Price</th>

                        <th>Quantity</th>

                        <th>Total</th>

                        <th>Action</th>

                    </tr>

                </thead>


                <tbody>


                <%

                    for (Cart cart : cartItems) {

                        Product product = cart.getProduct();


                        if (product != null) {

                            double price =
                                    product.getPrice();

                            int quantity =
                                    cart.getQuantity();

                            double total =
                                    price * quantity;

                            grandTotal += total;

                %>


                    <tr>

                        <td>

                            <strong>
                                <%= product.getName() %>
                            </strong>

                        </td>


                        <td>

                            ₹<%= String.format("%.2f", price) %>

                        </td>


                        <td>

                            <%= quantity %>

                        </td>


                        <td>

                            ₹<%= String.format("%.2f", total) %>

                        </td>


                        <td>

                            <form
                                action="${pageContext.request.contextPath}/cart"
                                method="post">

                                <input
                                    type="hidden"
                                    name="productId"
                                    value="<%= product.getId() %>">

                                <input
                                    type="hidden"
                                    name="action"
                                    value="remove">

                                <button
                                    type="submit"
                                    class="btn secondary-btn">

                                    Remove

                                </button>

                            </form>

                        </td>

                    </tr>


                <%

                        }

                    }

                %>


                </tbody>

            </table>

        </div>



        <div class="dashboard-card"
             style="margin-top: 25px;">

            <h2>

                Grand Total:

                ₹<%= String.format("%.2f", grandTotal) %>

            </h2>


            <br>


            <a
                href="${pageContext.request.contextPath}/products"
                class="btn secondary-btn">

                Continue Shopping

            </a>


            &nbsp;


            <!-- PROCEED TO CHECKOUT -->

            <a
                href="${pageContext.request.contextPath}/user/checkout.jsp"
                class="btn primary-btn">

                Proceed to Checkout

            </a>

        </div>


    <%

        }

    %>


</main>


</body>

</html>