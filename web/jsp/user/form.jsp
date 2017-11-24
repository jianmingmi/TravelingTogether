<%@ page import="product.test.model.Test" %>
<%@ page import="product.user.model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String contextPath = request.getContextPath();
%>
<html>
<head>
    <title></title>

    <link rel="stylesheet" href="<%=contextPath%>/layui/css/layui.css">
    <script src="<%=contextPath%>/layui/layui.js"></script>
    <script src="<%=contextPath%>/layui/jmm.js"></script>

</head>
<body>

<blockquote class="layui-elem-quote" style="margin-left: 10px;margin-top: 10px;">测试模块</blockquote>

<%
    User bean = (User) request.getAttribute("bean");
%>

<form action="/user/addOrUpdate" method="post">
    <input type="hidden" name="id" value="<%=bean==null?"":bean.getInt("id")%>">

    <div class="layui-input-block" style="margin-left: 10px;">
        <input type="text" lay-verify="required" autocomplete="off" class="layui-input" style="width:30%;margin: 5px;"
               placeholder="请输入姓名" name="name" value="<%=bean==null?"":bean.getStr("name")%>">
    </div>
    <div class="layui-input-block" style="margin-left: 10px;">
        <input type="text" lay-verify="required" autocomplete="off" class="layui-input" style="width:30%;margin: 5px;"
               placeholder="请输入密码" name="password" value="<%=bean==null?"":bean.getStr("password")%>">
    </div>
    <button class="layui-btn" lay-submit="" lay-filter="demo1" style="margin-left: 15px;">提交</button>
</form>

</body>
</html>
