<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Management Dashboard</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
    <header>
        <div class="container">
            <h1>User Management Dashboard</h1>
            <div class="user-actions">
                <span>Welcome, ${sessionScope.user.username}</span>
                <a href="${pageContext.request.contextPath}/auth/logout" class="btn btn-secondary">Logout</a>
            </div>
        </div>
    </header>
    
    <main class="container">
        <div class="top-actions">
            <h2>User List</h2>
            <a href="${pageContext.request.contextPath}/users/new" class="btn btn-primary">Add New User</a>
        </div>
        
        <div class="table-responsive">
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Username</th>
                        <th>Email</th>
                        <th>Full Name</th>
                        <th>Role</th>
                        <th>Created</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="user" items="${userList}">
                        <tr>
                            <td>${user.id}</td>
                            <td>${user.username}</td>
                            <td>${user.email}</td>
                            <td>${user.fullName}</td>
                            <td>${user.role}</td>
                            <td>${user.createdAt}</td>
                            <td class="actions">
                                <a href="${pageContext.request.contextPath}/users/edit?id=${user.id}" class="btn btn-small btn-edit">Edit</a>
                                <a href="${pageContext.request.contextPath}/users/delete?id=${user.id}" class="btn btn-small btn-delete" 
                                   onclick="return confirm('Are you sure you want to delete this user?')">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
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