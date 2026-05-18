<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="css/neobrutalism.css">
</head>
<body>

    <div class="container">
        <h2>🔐 Login</h2>

        <%-- Error Message --%>
        <% String error = (String) request.getAttribute("errorMessage"); %>
        <% if(error != null) { %>
            <div class="error-message">⚠️ <%= error %></div>
        <% } %>

        <%-- Success Message --%>
        <% String message = (String) request.getAttribute("message"); %>
        <% if(message != null) { %>
            <div class="success-message">✅ <%= message %></div>
        <% } %>

        <form action="login" method="POST">
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" required>
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
            </div>

            <input type="submit" value="Login →">
        </form>

        <p class="link-text">
            New here? <a href="index.jsp">Register</a>
        </p>
    </div>

</body>
</html>