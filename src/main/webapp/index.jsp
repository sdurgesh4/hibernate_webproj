<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
    <link rel="stylesheet" href="css/neobrutalism.css">
</head>
<body>

    <div class="container">
        <h2>✨ Register</h2>

        <%-- Message --%>
        <% String message = (String) request.getAttribute("message"); %>
        <% if(message != null) { %>
            <div class="error-message">⚠️ <%= message %></div>
        <% } %>

        <form action="register" method="POST">
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" required>
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
            </div>

            <input type="submit" value="Create Account →">
        </form>

        <p class="link-text">
            Already have an account? <a href="login.jsp">Login</a>
        </p>
    </div>

</body>
</html>