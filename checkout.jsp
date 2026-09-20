<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <title>Checkout - Sivaganesh Martt</title>

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
        Checkout
    </h1>



    <div class="form-card">


        <h2>
            Delivery Details
        </h2>


        <br>


        <%

            String error =
                    (String) request.getAttribute("error");

            if (error != null) {

        %>

            <div class="error-message">

                <%= error %>

            </div>

            <br>

        <%

            }

        %>



        <form
            action="${pageContext.request.contextPath}/orders"
            method="post">


            <div class="form-group">

                <label>
                    Delivery Address
                </label>


                <textarea
                    name="address"
                    placeholder="Enter your delivery address"
                    required></textarea>

            </div>



            <div class="form-group">

                <label>
                    Payment Method
                </label>


                <select
                    name="paymentMethod"
                    required>


                    <option value="">
                        Select Payment Method
                    </option>


                    <option value="Cash on Delivery">
                        Cash on Delivery
                    </option>


                    <option value="UPI">
                        UPI
                    </option>


                    <option value="Card">
                        Card
                    </option>


                </select>

            </div>



            <button
                type="submit"
                class="btn primary-btn">

                Place Order

            </button>


        </form>


        <br>


        <div class="form-footer">

            <a href="${pageContext.request.contextPath}/cart">

                ← Back to Cart

            </a>

        </div>


    </div>


</main>


</body>

</html>