<%--
  Created by IntelliJ IDEA.
  User: lijing
  Date: 2018/2/5
  Time: 下午11:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>发布结伴</title>
    <link rel="stylesheet" href="/css/jieban.css">
    <%--=======--%>
    <link rel="stylesheet" href="../../css/jieban.css">
    <script src="/js/jquery.js"></script>
</head>
<body>
<%
    String loginSessionName = (String) request.getSession().getAttribute("loginSessionName");
%>
<header>
    <div class="nav01">
        <div class="nav-top">
            <div class="nav-top-left">
                <a href="">新疆旅游</a>|
                <a href="">青海旅游</a>|
                <a href="">额济纳旅游</a>|
                <a href="">贵州旅游</a>|
                <a href="">云南旅游</a>|
                <a href="">西藏旅游</a>|
                <a href="">坝上旅游</a>|
                <a href="">四川旅游</a>|
                <a href="">更多</a>

            </div>
            <div class="nav-top-right">
                <ul class="items-minor" id="logout_block">
                    <li>
                        欢迎 &nbsp;<%=loginSessionName%>
                    </li>
                    <li>
                        <a href="###" onclick="javascript:window.location.href='/user/doLogout';">退出</a>
                    </li>
                </ul>
                <ul class="items-minor" id="login_block">
                    <li>
                        <a href="###" onclick="javascript:window.location.href='/user/login';">登录</a>
                    </li>
                </ul>
                <%--做session处理--%>
                <%
                    if (loginSessionName == null || loginSessionName.equals("")) {
                        out.print("<script>\n");
                        out.print("document.getElementById(\"logout_block\").style.display = \"none\";\n");
                        out.print("document.getElementById(\"login_block\").style.display = \"block\";\n");
                        out.print("</script>\n");
                    } else {
                        out.print("<script>\n");
                        out.print("document.getElementById(\"logout_block\").style.display = \"block\";\n");
                        out.print("document.getElementById(\"login_block\").style.display = \"none\";\n");
                        out.print("</script>\n");
                    }
                %>
            </div>
        </div>
    </div>
    <div class="nav02">
        <div class="nav-list">
            <a class="logo" href="/" onclick="javascript:window.location.href='/';"></a>
            <ul>
                <li class="nav-list-top">首页</li>
                <li class="nav-list-top">摄影游</li>
                <li class="nav-list-top">民族行</li>
                <li class="nav-list-top">发布结伴</li>
                <li class="nav-list-top">论坛</li>
            </ul>
            <div class="search-header" style="margin-right: 17px;width:220px;">
                <input id="search" type="text" placeholder="搜索想去的地方"/>
                <a href="javascript:;">搜索</a>
            </div>
        </div>
    </div>
</header>
<div class="container" id="main">
    <div class="main mod">
        <div class="col col9">
            <section class="mod">
                <h1>发布结伴</h1>
            </section>
            <form name="NewForm" onkeydown="if(event.keyCode==13)return false;" class="form-horizontal">
                <input type="hidden" name="FormHash" value="abda5069" />
                <input type="hidden" name="ContentHash" value="" />
                <fieldset>
                    <div class="field-group">
                        <label class="field-label">标题</label>
                        <div class="fields-inline">
                            <input type="text" name="Title" id="Title" class="col7" value="" placeholder="做个标题党可以增加关注度，你懂的..." />
                        </div>
                    </div>
                    <div class="field-group">
                        <label class="field-label">出发日期</label>
                        <div class="fields-inline">
                            <input type="text" readonly="true" class="laydate-icon" onclick="laydate({min: laydate.now(), max: laydate.now(+360)})" name="Departure" id="Departure" class="col2" value="" placeholder="格式：2009-05-19" />
                        </div>
                        <label class="field-label">旅程天数</label>
                        <div class="fields-inline">
                            <input type="text" name="Duration" id="Duration" class="col1" value="" placeholder="格式：3" />
                        </div>
                        <label class="field-label">出发地</label>
                        <div class="fields-inline">
                            <input type="text" name="Location" id="Location" class="col1" value="南京" placeholder="出发地" />
                        </div>
                    </div>
                    <div class="field-group">
                        <label class="field-label"><img src="/upload/avatar/middle/903745.png" alt="晶晶晶晶晶"/></label>
                        <div id="editor" class="fields-inline col7" style="height:250px">Loading……</div>
                        <script>
                            var Content='';
                        </script>
                    </div>
                    <div class="field-group">
                        <label class="field-label">主题玩法</label>
                        <div class="fields">
                            <div style="margin-bottom:5px;background-color:#f6f6f6;padding:5px;min-height:30px;line-height:30px;color:#999">
                                <ul id="UnSelect"><li>还未选择本次旅程的主题玩法，点击下面的标签添加...</li></ul>
                                <ul id="SelectPlayType" class="tags col7 clearfix"></ul>
                            </div>
                            <ul id="PlayTypeList" class="tags col7 clearfix"></ul>
                        </div>
                    </div>
                    <div class="field-group">
                        <label class="field-label">目的地</label>
                        <div class="fields" onclick="JavaScript:document.NewForm.AlternativeTag.focus();">
                            <div style="margin-bottom:5px">
                                <ul class="tags col7" id="SelectTags"></ul>
                            </div>
                            <div class="clearfix" >
                                <input type="text" name="AlternativeTag" id="AlternativeTag" value="" class="col col3" placeholder="写一个目的地，按回车键试试^_^" />
                                <span class="help-inline">或从内容中 <a href="###" onclick="JavaScript:GetTags();">自动获取</a></span>
                            </div>
                            <div>
                                <ul id="TagsList" class="tags col7 clearfix"></ul>
                            </div>
                        </div>
                    </div>
                    <div class="form-actions">
                        <input type="button" value=" 发 布 (Ctrl+Enter)" name="submit" class="btn btn-read btn-large" onclick="JavaScript:CreateNewTopic();" id="PublishButton" />
                    </div>
                </fieldset>
            </form>
        </div>
        <div class="col-right col4">
            <!---<div class="sideblock mod">
                <div class="hd"><h3>上传照片</h3><span>可以大大增加结伴的成功率^_^</span></div>
                <div class="bd">
                <form class="form-horizontal">
                    <div>
                        <ul>
                            <li style="background:#fff;width:auto;height:120px;border:2px dashed #dedede;text-align:center;margin:10px 0;color:#dedede;line-height:120px">还未上传</li>
                            <li style="background:#fff;width:auto;height:120px;border:2px dashed #dedede;text-align:center;margin:10px 0;color:#dedede;line-height:120px">还未上传</li>
                        </ul>
                    </div>
                    <div style="margin:10px 0"><input type="file" id="Avatar" name="Avatar" accept="image/*" /></div>
                    <div style="margin:10px 0"><input type="submit" value="上传照片" name="submit" class="btn btn-green btn-large" /></div>
                </form>
                </div>
            </div>--->
        </div>			<a style="display:none;" rel="nofollow" href="#top" id="go-to-top"><i class="fa fa-angle-double-up" aria-hidden="true"></i></a>
    </div>
</div>
<footer>
    <div class="inner clearfix">
        <p>© 2008-2016 杭州拼途结伴网络技术有限公司 增值电信业务经营许可证: 浙B2-20110321 备案号：浙ICP备09000768号-2
            <span>
					<a href="/about/us">关于我们</a>
					<a href="/about/biz">联系我们</a>
					<a href="/about/term">免责申明</a>
					<a href="/about/app">移动应用</a>
				</span>
        </p>
    </div>
</footer>
</div>
</body>
<script>
    var MaxTagNum = 15;//最多的话题数量
    var MaxTitleChars = 255;//主题标题最多字节数
    var MaxPostChars = 60000;//主题内容最多字节数
    loadScript("/static/editor/ueditor.config.js?version=1.0",function() {
        loadScript("/static/editor/ueditor.all.min.js?version=1.0",function(){
            loadScript("/language/zh-cn/zh-cn.js?version=1.0",function(){
                loadScript("/static/js/new.function.js?version=1.0",function(){
                    $("#editor").empty();
                    InitNewTopicEditor();
                    $.each(function(Offset,TagName) {
                        TagsListAppend(TagName, Offset);
                    });
                    $.each(["\u81ea\u9a7e","\u7a77\u6e38","\u6444\u5f71","\u968f\u6027","\u5403\u8d27","\u5b66\u751f","\u5f92\u6b65","\u53d1\u5446","\u642d\u8f66","\u6781\u9650","\u8273\u9047","\u9732\u8425","\u8840\u62fc","\u6bd5\u4e1a\u5b63","\u9a91\u884c","\u623f\u8f66"],function(Offset,PlayTypeName) {
                        PlayTypeListAppend(PlayTypeName, Offset);
                    });
                    console.log('editor loaded.');
                });
            });
        });
    });
    loadScript("/static/laydate/laydate.js?version=1.0",function(){

    });
</script>
</html>
