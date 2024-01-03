<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ page session="true"%>
<%@ page import="java.net.URLDecoder"%>
<c:set var="loginId" value="${sessionScope.id}"/>
<c:set var="loginOutLink" value="${loginId=='' ? '/login/login' : '/login/logout'}"/>
<c:set var="loginOut" value="${loginId=='' ? 'Login' : 'Login'}"/>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Taehyuk Chung | Board</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
  <link rel="stylesheet" href="<c:url value='/css/menu.css'/>">
  <script src="https://code.jquery.com/jquery-1.11.3.js"></script>
  <style>
    * { box-sizing:border-box; }

    form {
      width:400px;
      height:600px;
      display : flex;
      flex-direction: column;
      align-items:center;
      position : absolute;
      top:50%;
      left:50%;
      transform: translate(-50%, -50%) ;
      border: 1px solid rgb(89,117,196);
      border-radius: 10px;
    }

    .input-field {
      width: 300px;
      height: 40px;
      border : 1px solid rgb(89,117,196);
      border-radius:5px;
      padding: 0 10px;
      margin-bottom: 10px;
    }

    label {
      width:300px;
      height:30px;
      margin-top :4px;
    }

    button {
      background-color: rgb(89,117,196);
      color : white;
      width:300px;
      height:50px;
      font-size: 17px;
      border : none;
      border-radius: 5px;
      margin : 20px 0 30px 0;
    }

    .title {
      font-size : 50px;
      margin: 40px 0 30px 0;
    }

    .msg {
      height: 30px;
      text-align:center;
      font-size:16px;
      color:red;
      margin-bottom: 20px;
    }

    .sns-chk {
      margin-top : 5px;
    }
  </style>
  <title>Register</title>
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

<!-- form action="<c:url value="/register/save"/>" method="POST" onsubmit="return formCheck(this)"-->
<form:form modelAttribute="user">
  <div class="title">Register</div>
  <div id="msg" class="msg"><form:errors path="id"/></div>
  <label for="">ID</label>
  <input class="input-field" type="text" name="id" placeholder="4-12 characters, letters and numbers">
  <label for="">Password</label>
  <input class="input-field" type="text" name="pwd" placeholder="4-12 characters, letters and numbers">
  <label for="">Name</label>
  <input class="input-field" type="text" name="name" placeholder="Johnny">
  <label for="">Email</label>
  <input class="input-field" type="text" name="email" placeholder="example@gmail.com">
  <label for="">Birthday</label>
  <input class="input-field" type="text" name="birth" placeholder="2024-01-01">
  <div class="sns-chk">
    <label><input type="checkbox" name="sns" value="facebook"/>Facebook</label>
    <label><input type="checkbox" name="sns" value="kakaotalk"/>KaKaoTalk</label>
    <label><input type="checkbox" name="sns" value="instagram"/>Instagram</label>
  </div>
  <button>Sign Up</button>
</form:form>
<script>
  function formCheck(frm) {
    let msg ='';

    if(frm.id.value.length<3) {
      setMessage('The length of the id must be at least 3 characters.', frm.id);
      return false;
    }

    return true;
  }

  function setMessage(msg, element){
    document.getElementById("msg").innerHTML = `<i class="fa fa-exclamation-circle"> ${'${msg}'}</i>`;

    if(element) {
      element.select();
    }
  }
</script>
</body>
</html>