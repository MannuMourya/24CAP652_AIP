<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${action == 'insert' ? 'Add New User' : 'Edit User'} - User Management</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
    <header>
        <div class="container">
            <h1>${action == 'insert' ? 'Add New User' : 'Edit User'}</h1>
            <div class="user-actions">
                <span>Welcome, ${sessionScope.user.username}</span>
                <a href="${pageContext.request.contextPath}/auth/logout" class="btn btn-secondary">Logout</a>
            </div>
        </div>
    </header>
    
    <main class="container">
        <div class="form-container">
            <form method="post" action="${pageContext.request.contextPath}/users/${action == 'insert' ? 'insert' : 'update'}">
                <c:if test="${action == 'update'}">
                    <input type="hidden" name="id" value="${user.id}">
                </c:if>
                
                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" id="username" name="username" value="${user.username}" required>
                </div>
                
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" value="${user.password}" required>
                </div>
                
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" value="${user.email}" required>
                </div>
                
                <div class="form-group">
                    <label for="fullName">Full Name</label>
                    <input type="text" id="fullName" name="fullName" value="${user.fullName}" required>
                </div>
                
                <div class="form-group">
                    <label for="role">Role</label>
                    <select id="role" name="role">
                        <option value="USER" ${user.role == 'USER' ? 'selected' : ''}>User</option>
                        <option value="ADMIN" ${user.role == 'ADMIN' ? 'selected' : ''}>Admin</option>
                    </select>
                </div>
                
                <div class="form-actions">
                    <a href="${pageContext.request.contextPath}/users" class="btn btn-secondary">Cancel</a>
                    <button type="submit" class="btn btn-primary">Save</button>
                </div>
            </form>
        </div>
    </main>
    
    <footer>
        <div class="container">
            <p>&copy; 2025 User Management System</p>
        </div>
    </footer>
    
    <script src="${pageContext.request.contextPath}/js/script.js"></script>
</body>
</html>