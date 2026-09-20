<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Login - Sivaganesh Martt</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">
</head>

<body>

<div class="welcome-page">

    <div class="form-card">

        <h2>Welcome Back</h2>

        <%
            String error = request.getParameter("error");

            if (error != null) {
        %>
            <div class="error-message">
                Invalid email or password.
            </div>
        <%
            }
        %>

        <form action="${pageContext.request.contextPath}/login"
              method="post">

            <div class="form-group">
                <label>Email</label>

                <input type="email"
                       name="email"
                       placeholder="Enter your email"
                       required>
            </div>

            <div class="form-group">
                <label>Password</label>

                <input type="password"
                       name="password"
                       placeholder="Enter your password"
                       required>
            </div>

            <button type="submit" class="btn primary-btn">
                Login
            </button>

        </form>

        <div class="form-footer">
            Don't have an account?
            <a href="${pageContext.request.contextPath}/user/register.jsp">
                Create Account
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