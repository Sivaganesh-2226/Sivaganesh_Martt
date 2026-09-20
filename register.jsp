<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create Account - Sivaganesh Martt</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">
</head>

<body>

<div class="welcome-page">

    <div class="form-card">

        <h2>Create Account</h2>

        <%
            String error = request.getParameter("error");

            if ("exists".equals(error)) {
        %>
            <div class="error-message">
                Username or email already exists.
            </div>
        <%
            } else if ("failed".equals(error)) {
        %>
            <div class="error-message">
                Registration failed. Please try again.
            </div>
        <%
            }
        %>

        <form action="${pageContext.request.contextPath}/register"
              method="post">

            <div class="form-group">
                <label>Full Name</label>

                <input type="text"
                       name="name"
                       placeholder="Enter your full name"
                       required>
            </div>

            <div class="form-group">
                <label>Username</label>

                <input type="text"
                       name="username"
                       placeholder="Create a username"
                       required>
            </div>

            <div class="form-group">
                <label>Email</label>

                <input type="email"
                       name="email"
                       placeholder="Enter your email"
                       required>
            </div>

            <div class="form-group">
                <label>Phone</label>

                <input type="tel"
                       name="phone"
                       placeholder="Enter your phone number"
                       maxlength="15">
            </div>

            <div class="form-group">
                <label>Address</label>

                <textarea name="address"
                          placeholder="Enter your address"></textarea>
            </div>

            <div class="form-group">
                <label>Password</label>

                <input type="password"
                       name="password"
                       placeholder="Create a password"
                       required>
            </div>

            <div class="form-group">
                <label>Confirm Password</label>

                <input type="password"
                       name="confirmPassword"
                       placeholder="Confirm your password"
                       required>
            </div>

            <button type="submit" class="btn primary-btn">
                Create Account
            </button>

        </form>

        <div class="form-footer">
            Already have an account?
            <a href="${pageContext.request.contextPath}/user/login.jsp">
                Login
            </a>
        </div>

        <div class="form-footer">
            <a href="${pageContext.request.contextPath}/">
                ← Back to Home
            </a>
        </div>

    </div>

</div>

</body>
</html>