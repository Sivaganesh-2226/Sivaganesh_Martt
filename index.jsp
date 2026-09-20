<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sivaganesh Martt</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">
</head>

<body>

<div class="welcome-page">

    <div class="welcome-card">

        <div class="brand-icon">🛍️</div>

        <h1>Sivaganesh Martt</h1>

        <p class="tagline">
            Everything you need, all in one place.
        </p>

        <div class="welcome-buttons">

            <a href="${pageContext.request.contextPath}/user/login.jsp"
               class="btn primary-btn">
                User Login
            </a>

            <a href="${pageContext.request.contextPath}/admin/login.jsp"
               class="btn secondary-btn">
                Admin Login
            </a>

        </div>

    </div>

</div>

</body>
</html>