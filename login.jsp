<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Login - Sivaganesh Martt</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">
</head>

<body>

<div class="welcome-page">

    <div class="form-card">

        <h2>Admin Login</h2>

        <%
            String error = request.getParameter("error");

            if (error != null) {
        %>
            <div class="error-message">
                Invalid admin username or password.
            </div>
        <%
            }
        %>

        <form action="${pageContext.request.contextPath}/admin-login"
              method="post">

            <div class="form-group">
                <label>Username</label>

                <input type="text"
                       name="username"
                       placeholder="Enter admin username"
                       required>
            </div>

            <div class="form-group">
                <label>Password</label>

                <input type="password"
                       name="password"
                       placeholder="Enter admin password"
                       required>
            </div>

            <button type="submit" class="btn primary-btn">
                Admin Login
            </button>

        </form>

        <div class="form-footer">
            <a href="${pageContext.request.contextPath}/">
                ← Back to Home
            </a>
        </div>

    </div>

</div>

</body>
</html>