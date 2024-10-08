<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css-non-secured/loginstyle.css">
</head>
<body>
    <div class="container">
        <h1>Login</h1>
        <form action="<%= request.getContextPath() %>/login" method="post" class="login-form">
            <div class="form-group">
                <label for="userOrEmail">Username or Email:</label>
                <input type="text" id="userOrEmail" name="userOrEmail" placeholder="Enter username or email" required>
            </div>

            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" placeholder="Enter your password" required>
            </div>

            <div class="form-group">
                <button type="submit" class="btn">Login</button>
            </div>
        </form>
    </div>
</body>
</html>
