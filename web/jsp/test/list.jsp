<%@ page import="product.test.model.Test" %>
<%@ page import="java.util.List" %>
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

<button class="layui-btn" style="margin-left: 10px;" onclick="javascript:changeCurContent('/jsp/test/form.jsp')">添加
</button>

<table class="layui-table" lay-even="" lay-skin="row" style="width: 98%;margin-left: 10px;">
    <colgroup>
        <%--<col width="1">--%>
        <col width="2">
        <col width="2">
        <col>
    </colgroup>
    <thead>
    <tr>
        <th>ID</th>
        <th>姓名</th>
        <th>密码</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>

    <%
        List<Test> beans = (List<Test>) request.getAttribute("beans");
        for (int i = 0; i < beans.size(); i++) {
            Test bean = beans.get(i);
    %>
    <tr>
        <td style="text-overflow:ellipsis; white-space:nowrap;overflow: hidden;">
            <%=bean.getInt("id")%>
        </td>
        <td style="text-overflow:ellipsis; white-space:nowrap;overflow: hidden;">
            <%=bean.getStr("name")%>
        </td>
        <td style="text-overflow:ellipsis; white-space:nowrap;overflow: hidden;">
            <%=bean.getStr("password")%>
        </td>
        <td style="text-overflow:ellipsis; white-space:nowrap;overflow: hidden;">
            <button class="layui-btn layui-btn-small layui-btn-primary"
                    onclick="javascript:changeCurContent('/test/getBeanById/<%=bean.getInt("id")%>')">
                <i class="layui-icon">&#xe642;</i>
            </button>
            <button class="layui-btn layui-btn-small layui-btn-primary"
                    onclick="javascript:changeCurContent('/test/del/<%=bean.getInt("id")%>')">
                <i class="layui-icon">&#xe640;</i>
            </button>
        </td>
    </tr>
    <%
        }
    %>

    </tbody>
</table>

</body>
</html>
