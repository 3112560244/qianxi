<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>新增书籍</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>新增用户</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/employee/add" method="post">
        用户姓名：<input type="text" name="name"><br><br><br>
        用户性别：<input type="text" name="gender"><br><br><br>
        入职日期：<input type="date" name="hire_date"><br><br><br>
        薪酬：<input type="text" name="salary"><br><br><br>
        部门编号：<input type="text" name="dept_id"><br><br><br>
        <input type="submit" value="添加">
    </form>


    <form:form modelAttribute = "emp" action="${pageContext.request.contextPath}/employee/add" method="post">
        <table border="1" width="65%">
            <tr><td>员工姓名</td><td><form:input path="name"/> </td></tr>
            <tr>
                <td>员工性别</td>
                <td><form:radiobuttons path="gender" items="${genderMap}"/></td>
            </tr>
            <tr>
                <td>入职日期</td>
                <td><input type="date" name="hire_date" ></td>
            </tr>
            <tr>
                <td>薪酬</td>
                <td><form:input path="salary" /></td>
            </tr>
            <tr>
                <td>所在部门</td>
                <td><form:select  path="dept_id">
                    <form:options items="${depts}" itemLabel="name" itemValue="id"/>
                </form:select ></td>
            </tr>

            <tr>
                <td colspan="2" align="center"><input type="submit" value="添加新员工"></td>
            </tr>

        </table>
    </form:form>



</div>