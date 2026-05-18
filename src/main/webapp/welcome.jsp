<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>
    <link rel="stylesheet" href="css/neobrutalism.css">
</head>
<body>

    <div class="container welcome-card">
        <h2>🎉 Welcome!</h2>

        <div class="badge">
            <%= request.getAttribute("user") %>
        </div>

        <p style="margin: 20px 0; font-weight: 700; font-size: 1.1rem;">
            You are successfully logged in! 🚀
        </p>

        <a href="login.jsp" class="btn btn-secondary"
           style="display: inline-block; text-decoration: none; text-align: center;">
            Logout
        </a>
    </div>

</body>
</html>