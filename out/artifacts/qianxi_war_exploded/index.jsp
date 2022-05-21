<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
  <title>首页</title>
  <style type="text/css">
    a {
      text-decoration: none;
      color: black;
      font-size: 18px;
    }
    h3 {
      width: 180px;
      height: 38px;
      margin: 100px auto;
      text-align: center;
      line-height: 38px;
      background: deepskyblue;
      border-radius: 4px;
    }
  </style>
</head>
<body>
<div class="container">
  <div class="alert alert-danger" role="alert">${msg}</div>
</div>

<h3>
<%--  <form:form modelAttribute="account" action="${pageContext.request.contextPath}/login" method="post">--%>
<%--      用户名<input name="name"/>--%>
<%--    密码<input name="pwd"/>--%>
<%--    <input type="submit" value="登录">--%>
<%--  </form:form>--%>
  <a href="${pageContext.request.contextPath}/book/allBook">点击进入列表页</a>
</h3>
</body>
</html>