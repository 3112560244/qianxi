<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">

    <div class="alert alert-danger" role="alert">${msg}</div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>用户列表 —— 显示所有用户</small>
                </h1>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/employee/toAddEmployee">新增</a>

        </div>
    </div>


    <form action="${pageContext.request.contextPath}/employee/findByIdEmployee">
        <div class="input-group">
            <input type="text" name="id"  class="form-control" required aria-label="...">
            <div class="input-group-btn">
                <input class="btn btn-primary" type="submit" value="查询">
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/employee/allEmployee">重置</a>
            </div>
        </div>

<%--        <input type="text" name="finId" class="form-control" aria-label="...">--%>
<%--        <input type="submit" value="查询">--%>
    </form>


    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>用户编号</th>
                    <th>部门编号</th>
                    <th>用户姓名</th>
                    <th>性别</th>
                    <th>入职日期</th>
                    <th>薪酬</th>
                    <th>创建日期</th>
                    <th>修改日期</th>
                    <th>操作</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach var="employee" items="${list}">
                    <tr>
                        <td>${employee.id}</td>
<%--                        <td>${employee.dept_id}</td>--%>
                        <td>${depts.get(employee.dept_id-1).name}</td>
                        <td>${employee.name}</td>
                        <td>${employee.gender==1?"男":"女"}</td>
                        <td>${employee.hire_date}</td>
                        <td>${employee.salary}</td>
                        <td>${employee.create_date}</td>
                        <td>${employee.update_date}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/employee/toUpdateEmployee?id=${employee.id}">更改</a> |
                            <a href="${pageContext.request.contextPath}/employee/delete/${employee.id}" >删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>