<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false"%>
<c:set var="loginId" value="${pageContext.request.getSession(false)==null ? '' : pageContext.request.session.getAttribute('id')}"/>
<c:set var="loginOutLink" value="${loginId=='' ? '/login/login' : '/login/logout'}"/>
<c:set var="loginOut" value="${loginId=='' ? 'Login' : 'Logout'}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Taehyuk Chung | Board</title>
    <link rel="stylesheet" href="<c:url value='/css/menu.css'/>">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
</head>
<body>
<div id="menu">
    <ul>
        <li id="logo">Taehyuk</li>
        <li><a href="<c:url value='/'/>">Home</a></li>
        <li><a href="<c:url value='/board/list'/>">Board</a></li>
        <li><a href="<c:url value='${loginOutLink}'/>">${loginOut}</a></li>
        <li><a href="<c:url value='/register/add'/>">Sign in</a></li>
        <li><a href=""><i class="fa fa-search"></i></a></li>
    </ul>
</div>
<br><br>
<div style="text-align:center">
    <h1>Welcome to Our Community Board!</h1>
    <p>Experience the power of connection and communication.</p><br><br>

    <h2>Join Us Today!</h2>
    <p><strong>Register:</strong> Become a part of our growing community. Sign up now and start engaging!</p>
    <p><strong>Login:</strong> Already a member? Log in to join the discussion.</p><br><br>

    <h2>Explore and Engage</h2>
    <p><strong>Bulletin Board:</strong> Discover a wide range of topics, share your thoughts, and learn from others.</p>
    <p><strong>Create and Share:</strong> Got something to say? Post it here! Share your ideas, stories, and experiences.</p>
    <p><strong>Edit and Update:</strong> Your voice matters. Feel free to update your posts and keep the conversation going.</p><br><br>

    <h2>Stay Connected</h2>
    <p>Keep up with the latest discussions and trends.</p>
    <p>Engage with a community that values your voice.</p><br><br>

    <h2>Your Thoughts, Your Community</h2>
    <p>This is your space to express, discuss, and connect.</p>
    <p>We value your contributions and encourage respectful, meaningful conversations.</p>
</div>
</body>
</html>