<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改信息</title>
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
                    <small>修改信息</small>
                </h1>
            </div>
        </div>
    </div>

<%--    <form action="${pageContext.request.contextPath}/employee/update"  method="post">--%>
<%--&lt;%&ndash;        <input type="hidden" name="id" value="${emp.id}"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;        员工姓名：<input type="text" name="name" value="${emp.name}"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;        员工性别：<input type="text" name="gender" value="${emp.gender}"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;        入职日期：<input type="text" name="hire_date" value="${emp.hire_date }"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;           薪酬：<input type="text" name="salary" value="${emp.salary }"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;        所在部门：<form:select  path="dept_id">&ndash;%&gt;--%>
<%--&lt;%&ndash;                <form:options items="${depts}" itemLabel="name" itemValue="id"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;                 </form:select >&ndash;%&gt;--%>


<%--        <table border="1" width="65%">--%>
<%--            <tr><td>员工id</td>--%>
<%--                <td><input type="hidden" name="id" value="${emp.id}"/></td></tr>--%>
<%--            <tr>--%>
<%--                <td>员工姓名</td>--%>
<%--                <td><form:input path="name" /> </td>--%>
<%--            <tr>--%>
<%--                <td>员工性别</td>--%>
<%--                <td><form:radiobuttons path="gender"  items="${genderMap}"/></td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td>入职日期</td>--%>
<%--                <td><input type="date" name="hire_date" ></td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td>薪酬</td>--%>
<%--                <td><form:input path="salary" /></td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td>所在部门</td>--%>
<%--                <td><form:select  path="dept_id">--%>
<%--                    <form:options items="${depts}" itemLabel="name" itemValue="id"/>--%>
<%--                </form:select ></td>--%>
<%--            </tr>--%>

<%--            <tr>--%>
<%--                <td colspan="2" align="center"><input type="submit" value="修改员工"></td>--%>
<%--            </tr>--%>

<%--        </table>--%>


<%--        <input type="submit" value="提交"/>--%>
<%--    </form>--%>

    <form:form modelAttribute = "emp" action="${pageContext.request.contextPath}/employee/update" method="post">
        <table border="1" width="65%">
            <tr>
                <td colspan="2"><form:input  path="id" type="hidden"  /></td>
            </tr>
            <tr>
                <td>员工id</td>
                <td><form:input path="id" disabled="true"/></td>
            </tr>
            <tr><td>员工姓名</td><td><form:input path="name" required="true" /> </td></tr>
            <tr>
                <td>员工性别</td>
                <td><form:radiobuttons path="gender" items="${genderMap}" required="true"/></td>
            </tr>
            <tr>
                <td>入职日期</td>
                <td><input type="date" name="hire_date" required></td>
            </tr>
            <tr>
                <td>薪酬</td>
                <td><form:input path="salary"  required="true"/></td>
            </tr>
            <tr>
                <td>所在部门</td>
                <td><form:select  path="dept_id" required="true">
                    <form:options items="${depts}" itemLabel="name" itemValue="id"/>
                </form:select ></td>
            </tr>

            <tr>
                <td colspan="2" align="center"><input type="submit" value="提交修改"></td>
            </tr>

        </table>
    </form:form>


</div>