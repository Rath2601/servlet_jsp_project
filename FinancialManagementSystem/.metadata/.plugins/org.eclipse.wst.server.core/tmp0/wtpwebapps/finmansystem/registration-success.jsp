<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Success</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css-non-secured/successstyle.css">
</head>
<body>
    <div class="container">
        <h1>Registration Successful!</h1>
        <p>Thank you for registering. Your account has been created successfully.</p>
        <a href="<%= request.getContextPath() %>/login.jsp" class="btn">Go to Login</a>
    </div>
</body>
</html>
