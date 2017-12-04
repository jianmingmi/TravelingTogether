<%--
  Created by IntelliJ IDEA.
  User: lijing
  Date: 2017/11/14
  Time: 上午10:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <%--<<<<<<< HEAD:web/main.jsp--%>
    <link rel="stylesheet" href="/css/main.css">
    <%--=======--%>
    <link rel="stylesheet" href="../../css/main.css">
    <script src="/js/jquery.js"></script>
    <%-->>>>>>> 871c573172f07c89e7f0a16bae3b5d53590f9f67:web/jsp/index/main.jsp--%>
</head>
<body>

<%--longinSession--%>
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
                <input type="text" placeholder="搜索想去的地方"/>
                <a href="javascript:;">搜索</a>
            </div>
        </div>
    </div>
</header>
    <div style="position: relative">
        <div class="banner">
            <ul class="img">
                <li><a href="#"><img src="/images/1.jpg" alt="第1张图片"></a></li>
                <li><a href="#"><img src="/images/2.jpg" alt="第2张图片"></a></li>
                <li><a href="#"><img src="/images/3.jpg" alt="第3张图片"></a></li>
                <li><a href="#"><img src="/images/4.jpg" alt="第4张图片"></a></li>
                <li><a href="#"><img src="/images/5.jpg" alt="第5张图片"></a></li>
            </ul>
            <ul class="num"></ul>
            <div class="btn">
                <span class="prev"><</span>
                <span class="next">></span>
            </div>
        </div>
            <div id="newnav">
                    <div class="newnav-left">
                    <div class="newnav-tit">
                        <div class="newnav-position">
                            <div class="aa">
                                <h2>热门目的地</h2>
                                <a class="sm" href="">新疆</a>
                                <a class="sm" href="">西北</a>
                                <a class="sm" href="">额济纳</a>
                                <a class="sm" href="">西藏</a>
                                <a class="sm" href="">内蒙古</a>
                                <a class="sm" href="">广西</a>
                                <a class="sm" href="">四川</a>
                                <a class="sm" href="">云贵</a>
                                <a class="sm" href="">出境</a>
                            </div>
                            <i class="icon"><img src="/images/you.png" alt=""></i>
                        </div>
                    </div>
                    <div class="newnav-tit">
                        <div class="newnav-position">
                            <div class="aa">
                                <h2>小团慢旅行</h2>
                                <a class="sm" href="">新疆</a>
                                <a class="sm" href="">青海</a>
                                <a class="sm" href="">额济纳</a>
                                <a class="sm" href="">西藏</a>
                                <a class="sm" href="">内蒙古</a>
                                <a class="sm" href="">甘肃</a>
                                <a class="sm" href="">贵州</a>
                            </div>
                            <i class="icon"><img src="/images/you.png" alt=""></i>
                        </div>
                    </div>
                    <div class="newnav-tit">
                        <div class="newnav-position">
                            <div class="aa">
                                <h2>摄影游</h2>
                                <a class="sm" href="">新疆</a>
                                <a class="sm" href="">甘南</a>
                                <a class="sm" href="">额济纳</a>
                                <a class="sm" href="">青海</a>
                                <a class="sm" href="">内蒙古</a>
                            </div>
                            <i class="icon"><img src="/images/you.png" alt=""></i>
                        </div>
                    </div>
                    <div class="newnav-tit">
                        <div class="newnav-position">
                            <div class="aa">
                                <h2>深度游</h2>
                                <a class="sm" href="">云南</a>
                                <a class="sm" href="">贵州</a>
                                <a class="sm" href="">西藏</a>
                                <a class="sm" href="">内蒙古</a>
                                <a class="sm" href="">四川</a>
                            </div>
                            <i class="icon"><img src="/images/you.png" alt=""></i>
                        </div>
                    </div>
                    <div class="newnav-tit">
                        <div class="newnav-position">
                            <div class="aa">
                                <h2>驴友游记</h2>
                                <a class="sm" href="">新疆</a>
                                <a class="sm" href="">内蒙古</a>
                                <a class="sm" href="">青海</a>
                                <a class="sm" href="">贵州</a>
                                <a class="sm" href="">云南</a>
                            </div>
                            <i class="icon"><img src="/images/you.png" alt=""></i>
                        </div>
                    </div>
                    </div>
                <div class="newnav-right">
                    <div class="newnav-centent">
                        <div class="newnav-item">
                            <div>
                                <a class="reg" href="">新疆</a>
                                <a class="name" href="">喀纳斯</a>
                                <a class="name" href="">禾木</a>
                                <a class="name" href="">赛里木湖</a>
                                <a class="name" href="">九曲十八弯</a>
                                <a class="name" href="">乌尔禾魔鬼城</a>
                                <a class="name" href="">五彩滩</a>
                                <a class="name" href="">巴音布鲁克</a>
                                <a class="name" href="">红山大峡谷</a>
                                <a class="name" href="">人体山</a>
                                <a class="name" href="">江布拉克</a>
                                <a class="name" href="">轮台</a>
                                <a class="name" href="">塔克拉玛干沙漠</a>
                                <a class="name" href="">喀什</a>
                                <a class="name" href="">和田</a>
                                <a class="name" href="">慕士塔格</a>
                                <a class="name" href="">那拉提草原</a>
                            </div>
                        </div>
                        <div class="newnav-item">
                            <div>
                                <a class="reg" href="">西北</a>
                                <a class="name" href="">青海湖</a>
                                <a class="name" href="">茶卡盐湖</a>
                                <a class="name" href="">门源</a>
                                <a class="name" href="">卓尔山</a>
                                <a class="name" href="">拉卜楞寺</a>
                                <a class="name" href="">郎木寺</a>
                                <a class="name" href="">张掖</a>
                                <a class="name" href="">敦煌</a>
                                <a class="name" href="">莫高窟</a>
                                <a class="name" href="">雅丹魔鬼城</a>
                                <a class="name" href="">嘉峪关</a>
                                <a class="name" href="">花湖</a>
                                <a class="name" href="">年保玉则</a>
                                <a class="name" href="">鸣沙山</a>
                                <a class="name" href="">马蹄寺</a>
                                <a class="name" href="">大柴旦</a>
                                <a class="name" href="">若尔盖草原</a>
                                <a class="name" href="">水上雅丹</a>
                                <a class="name" href="">塔尔寺</a>
                                <a class="name" href="">九曲黄河第一弯</a>
                                <a class="name" href="">壶口瀑布</a>
                            </div>

                        </div>
                        <div class="newnav-item">
                            <div>
                                <a class="reg" href="">额济纳</a>
                                <a class="name" href="">胡杨林</a>
                                <a class="name" href="">黑水城</a>
                                <a class="name" href="">居延海</a>
                                <a class="name" href="">金塔胡杨林</a>
                                <a class="name" href="">额济纳胡杨林</a>
                            </div>

                        </div>
                        <div class="newnav-item">
                            <div>
                                <a class="reg" href="">西藏</a>
                                <a class="name" href="">雅鲁藏布江大峡谷</a>
                                <a class="name" href="">纳木错</a>
                                <a class="name" href="">扎实伦布寺</a>
                                <a class="name" href="">鲁朗林海</a>
                                <a class="name" href="">日喀则</a>
                            </div>

                        </div>
                        <div class="newnav-item">
                            <div>
                                <a class="reg" href="">内蒙古</a>
                                <a class="name" href="">乌兰布统</a>
                                <a class="name" href="">呼伦贝尔</a>
                                <a class="name" href="">坝上</a>
                            </div>

                        </div>
                        <div class="newnav-item">
                            <div>
                                <a class="reg" href="">广西</a>
                                <a class="name" href="">桂林</a>
                                <a class="name" href="">漓江</a>
                                <a class="name" href="">德天大瀑布</a>
                                <a class="name" href="">北海</a>
                                <a class="name" href="">涠洲岛</a>
                            </div>

                        </div>
                        <div class="newnav-item">
                            <div>
                                <a class="reg" href="">四川</a>
                                <a class="name" href="">甲居藏寨</a>
                                <a class="name" href="">稻城亚丁</a>
                                <a class="name" href="">理塘</a>
                                <a class="name" href="">海螺沟</a>
                                <a class="name" href="">九寨沟</a>
                                <a class="name" href="">色达</a>
                                <a class="name" href="">五明佛学院</a>
                                <a class="name" href="">丹巴</a>
                                <a class="name" href="">黄龙</a>
                            </div>

                        </div>
                        <div class="newnav-item">
                            <div>
                                <a class="reg" href="">云贵</a>
                                <a class="name" href="">黄果树</a>
                                <a class="name" href="">镇远</a>
                                <a class="name" href="">荔波</a>
                                <a class="name" href="">西江苗寨</a>
                                <a class="name" href="">万峰林</a>
                                <a class="name" href="">马岭河大峡谷</a>
                                <a class="name" href="">普者黑</a>
                                <a class="name" href="">坝美</a>
                                <a class="name" href="">丽江古城</a>
                                <a class="name" href="">洱海</a>
                                <a class="name" href="">大理</a>
                                <a class="name" href="">泸沽湖</a>
                                <a class="name" href="">虎跳峡</a>
                                <a class="name" href="">双廊</a>
                            </div>

                        </div>
                        <div class="newnav-item">
                            <div>
                                <a class="reg" href="">出境</a>
                                <a class="name" href="">斯里兰卡</a>
                                <a class="name" href="">仙本那</a>
                                <a class="name" href="">柬埔寨</a>
                                <a class="name" href="">尼泊尔</a>
                                <a class="name" href="">巴厘岛</a>
                                <a class="name" href="">沙巴</a>
                                <a class="name" href="">欧洲</a>
                            </div>

                        </div>

                    </div>
                    <div class="newnav-centent">
                        <div class="newnav-item">
                            <div>
                                <a class="reg" href="">新疆</a>
                                <a class="name" href="">喀纳斯</a>
                                <a class="name" href="">禾木</a>
                                <a class="name" href="">赛里木湖</a>
                                <a class="name" href="">九曲十八弯</a>
                                <a class="name" href="">乌尔禾魔鬼城</a>
                                <a class="name" href="">五彩滩</a>
                                <a class="name" href="">巴音布鲁克</a>
                                <a class="name" href="">红山大峡谷</a>
                                <a class="name" href="">人体山</a>
                                <a class="name" href="">江布拉克</a>
                                <a class="name" href="">轮台</a>
                                <a class="name" href="">塔克拉玛干沙漠</a>
                                <a class="name" href="">喀什</a>
                                <a class="name" href="">和田</a>
                                <a class="name" href="">慕士塔格</a>
                                <a class="name" href="">那拉提草原</a>
                            </div>
                        </div>
                        <div class="newnav-item">
                            <div>
                                <a class="reg" href="">青海</a>
                                <a class="name" href="">青海湖</a>
                                <a class="name" href="">茶卡盐湖</a>
                                <a class="name" href="">卓尔山</a>
                                <a class="name" href="">大柴旦</a>
                                <a class="name" href="">塔尔寺</a>
                                <a class="name" href="">冰沟林海</a>
                                <a class="name" href="">沙岛</a>
                            </div>

                        </div>
                        <div class="newnav-item">
                            <div>
                                <a class="reg" href="">额济纳</a>
                                <a class="name" href="">胡杨林</a>
                                <a class="name" href="">黑水城</a>
                                <a class="name" href="">居延海</a>
                                <a class="name" href="">金塔胡杨林</a>
                                <a class="name" href="">额济纳胡杨林</a>
                            </div>

                        </div>
                        <div class="newnav-item">
                            <div>
                                <a class="reg" href="">西藏</a>
                                <a class="name" href="">雅鲁藏布江大峡谷</a>
                                <a class="name" href="">纳木错</a>
                                <a class="name" href="">扎实伦布寺</a>
                                <a class="name" href="">鲁朗林海</a>
                                <a class="name" href="">日喀则</a>
                            </div>

                        </div>
                        <div class="newnav-item">
                            <div>
                                <a class="reg" href="">内蒙古</a>
                                <a class="name" href="">乌兰布统</a>
                                <a class="name" href="">呼伦贝尔</a>
                                <a class="name" href="">坝上</a>
                            </div>

                        </div>
                        <div class="newnav-item">
                            <div>
                                <a class="reg" href="">甘肃</a>
                                <a class="name" href="">张掖</a>
                                <a class="name" href="">敦煌</a>
                                <a class="name" href="">嘉峪关</a>
                                <a class="name" href="">莫高窟</a>
                                <a class="name" href="">马蹄寺</a>
                            </div>

                        </div>
                        <div class="newnav-item">
                            <div>
                                <a class="reg" href="">贵州</a>
                                <a class="name" href="">黄果树</a>
                                <a class="name" href="">镇远</a>
                                <a class="name" href="">荔波</a>
                                <a class="name" href="">西江苗寨</a>
                                <a class="name" href="">双廊</a>
                            </div>

                        </div>
                        </div>
                    <div class="newnav-centent">
                        <div class="newnav-item">
                            <div>
                                <a class="reg" href="">新疆</a>
                                <a class="name" href="">喀纳斯</a>
                                <a class="name" href="">禾木</a>
                                <a class="name" href="">赛里木湖</a>
                                <a class="name" href="">九曲十八弯</a>
                                <a class="name" href="">乌尔禾魔鬼城</a>
                                <a class="name" href="">和田</a>
                                <a class="name" href="">慕士塔格</a>
                                <a class="name" href="">那拉提草原</a>
                            </div>
                        </div>
                        <div class="newnav-item">
                            <div>
                                <a class="reg" href="">甘南</a>
                                <a class="name" href="">花湖</a>
                                <a class="name" href="">九曲黄河第一弯</a>
                                <a class="name" href="">郎木寺</a>
                            </div>

                        </div>
                        <div class="newnav-item">
                            <div>
                                <a class="reg" href="">青海</a>
                                <a class="name" href="">青海湖</a>
                                <a class="name" href="">茶卡盐湖</a>
                                <a class="name" href="">门源</a>
                                <a class="name" href="">卓尔山</a>
                            </div>

                        </div>
                        <div class="newnav-item">
                            <div>
                                <a class="reg" href="">额济纳</a>
                                <a class="name" href="">胡杨林</a>
                                <a class="name" href="">黑水城</a>
                                <a class="name" href="">居延海</a>
                                <a class="name" href="">金塔胡杨林</a>
                                <a class="name" href="">额济纳胡杨林</a>
                            </div>

                        </div>
                        <div class="newnav-item">
                            <div>
                                <a class="reg" href="">内蒙古</a>
                                <a class="name" href="">乌兰布统</a>
                                <a class="name" href="">坝上</a>
                            </div>

                        </div>
                        </div>
                    <div class="newnav-centent">
                        <div class="newnav-item">
                            <div>
                                <a class="reg" href="">四川</a>
                                <a class="name" href="">稻城亚丁</a>
                                <a class="name" href="">理塘</a>
                                <a class="name" href="">海螺沟</a>
                                <a class="name" href="">甲居藏寨</a>
                            </div>
                        </div>
                        <div class="newnav-item">
                            <div>
                                <a class="reg" href="">云南</a>
                                <a class="name" href="">普者黑</a>
                                <a class="name" href="">丽江古城</a>
                                <a class="name" href="">洱海</a>
                                <a class="name" href="">坝美</a>
                            </div>

                        </div>
                        <div class="newnav-item">
                            <div>
                                <a class="reg" href="">贵州</a>
                                <a class="name" href="">黄果树</a>
                                <a class="name" href="">万峰林</a>
                                <a class="name" href="">西江苗寨</a>
                                <a class="name" href="">马岭河大峡谷</a>
                            </div>

                        </div>
                        <div class="newnav-item">
                            <div>
                                <a class="reg" href="">西藏</a>
                                <a class="name" href="">珠峰大本营</a>
                                <a class="name" href="">纳木错</a>
                                <a class="name" href="">日喀则</a>
                                <a class="name" href="">扎什伦布寺</a>
                                <a class="name" href="">索松村</a>
                            </div>

                        </div>
                        <div class="newnav-item">
                            <div>
                                <a class="reg" href="">内蒙古</a>
                                <a class="name" href="">呼伦贝尔</a>
                            </div>

                        </div>
                        </div>
                    </div>
                </div>
            </div>

<div style="background: #f4f4f4;padding: 20px 0;width: 1440px;height: 668px;">
    <div class="box-father">
<div class="box">

</div>
        <div class="box">

        </div>
    </div>
</div>

<div class="bg-white" style="background: #fff;width: 1400px;height: 690px;">
<div class="theme main">
<h2 style="padding-left: 10px;">小团慢旅行</h2>
</div>
</div>
<%--<div class="container" id="main">--%>
<%--<div class="main mod">--%>
<%--<div class="mod">--%>
<%--<div class="hd border-bottom">--%>
<%--<h2>--%>
<%--房车Go <img src="/static/img/new-icon.png" alt="new" style="margin-top:5px">--%>
<%--<span>带你体验最纯正的房车旅行方式。在路上，房车就是你的家，你选择在一个怎么样的风景中醒来？准备好了吗？房车 go！</span>--%>

<%--</h2>--%>
<%--</div>--%>
<%--<div class="bd" style="position: relative">--%>
<%--<ul class="list-col list-col3 list-summary">--%>
<%--<li class="">--%>
<%--<div class="cover">--%>
<%--<img src="/upload/chosen/small/156354.png" alt="7日爆款元阳普者黑"/>--%>
<%--</div>--%>
<%--<div class="info">--%>
<%--<h3 class="title">--%>
<%--<a href="http://www.pintour.com/t/156354" title="">[7日房车爆款]深秋元阳梯田和普者黑到底有多美？</a>--%>
<%--</h3>--%>
<%--<p>集结：昆明</p>--%>
<%--<p>出发：11月19日起每周日发</p>--%>
<%--<p>地点：元阳/普者黑/抚仙湖</p>--%>
<%--<p class="reviews">--%>
<%--云南的秋意，就像一扇窗，推开就再难合上。你要不要来云南的元阳和普者黑找一找......--%>
<%--</p>--%>
<%--</div>--%>
<%--</li>--%>
<%--<li class="">--%>
<%--<div class="cover">--%>
<%--<img src="/upload/chosen/small/155860.png" alt="8日房车丝绸之路"/>--%>
<%--</div>--%>
<%--<div class="info">--%>
<%--<h3 class="title">--%>
<%--<a href="http://www.pintour.com/t/155860" title="">最古老，最神秘的丝绸之路，让我们带你去完整的体验一次</a>--%>
<%--</h3>--%>
<%--<p>集结：西宁</p>--%>
<%--<p>出发：2017年8-10月</p>--%>
<%--<p>地点：张掖/莫高窟/青海湖</p>--%>
<%--<p class="reviews">--%>
<%--这一次，让我们拼途网专业领队带着你，来一次一生不能错过的古老而漫长商路美景之旅...--%>
<%--</p>--%>
<%--</div>--%>
<%--</li>--%>
<%--<li class="">--%>
<%--<div class="cover">--%>
<%--<img src="/upload/chosen/small/155956.png" alt="17日超值川青大环线">--%>
<%--</div>--%>
<%--<div class="info">--%>
<%--<h3 class="title">--%>
<%--<a href="http://www.pintour.com/t/155956" title="">[超值房车7日]额济纳：每年只有一次旅行，错过就要等一年！</a>--%>
<%--</h3>--%>
<%--<p>集结：西宁</p>--%>
<%--<p>出发：2017年9-10月</p>--%>
<%--<p>地点：额济纳/张掖/嘉峪关</p>--%>
<%--<p class="reviews">--%>
<%--一到秋天，它便完成了从丑小鸭到白天鹅的蜕变，用演绎到极致、绚烂而沧桑的金色刷爆朋友圈...--%>
<%--</p>--%>
<%--</div>--%>
<%--</li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="col col9">--%>
<%--<section>--%>
<%--<div class="hd border-bottom clearfix">--%>
<%--<h2 style="float: left">优选活动</h2>--%>
<%--</div>--%>
<%--</section>--%>
<%--<section class="clearfix">--%>
<%--<div class="col col9">--%>
<%--<div class="topic-list-title clearfix">--%>
<%--<h3>--%>
<%--<a href="/t/155903" target="_blank">17年中国最美的公路-川藏线318线到西藏拉萨10天活动召集</a>--%>
<%--</h3>--%>
<%--<div class="topic-list-count">--%>
<%--<a>拼途优选</a>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="topic-list-content">--%>
<%--<p>--%>
<%--川西海螺沟，西藏波密，林芝值雪域大地最美的季节，追随藏地争奇斗艳的芳踪，与雪山、冰川定格那雪山最美瞬间……1.中国原生态的温泉——海螺沟温泉2.中国最美的山峰——南迦巴瓦峰3.人间最后香格里拉——稻城</p>--%>
<%--</div>--%>
<%--<hr/>--%>
<%--</div>--%>
<%--<div class="col col9">--%>
<%--<div class="topic-list-title clearfix">--%>
<%--<h3>--%>
<%--<a href="/t/156010" target="_blank">川西高原、稻城亚丁、海螺沟冰川，四姑娘山，用7天时间感受纯正的藏区</a>--%>
<%--</h3>--%>
<%--<div class="topic-list-count">--%>
<%--<a>拼途优选</a>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="topic-list-content">--%>
<%--<p>五湖四海的伙伴们聚在一起，边走边停边拍照，自由随意！边走边玩，哪里好玩就多作停留，哪里漂亮就停车拍照。大家因结伴旅行而相识，在游玩的过程中更能收获一份友情！</p>--%>
<%--</div>--%>
<%--<hr/>--%>
<%--</div>--%>
<%--</section>--%>
<%--<section>--%>
<%--<div class="hd border-bottom clearfix">--%>
<%--<h2 style="float: left">热门结伴</h2>--%>
<%--<button class="col-right btn btn-green btn-large"--%>
<%--onclick="javascript:window.location.href='/new';"><i class="fa fa-plus"></i> 发布结伴--%>
<%--</button>--%>
<%--</div>--%>
<%--<!---<a>默认</a>／<a>最新结伴</a>／<a>最热结伴</a>--->--%>
<%--</section>--%>
<%--<article>--%>
<%--<section class="clearfix">--%>
<%--<div class="col col1">--%>
<%--<div class="topic-list-avatar avatar">--%>
<%--<a href="/u/902169" title="驴友 yang">--%>
<%--<img src="/upload/avatar/middle/902169.png" alt="yang"/> </a>--%>
<%--</div>--%>
<%--<div class="topic-list-topic-username">yang</div>--%>
<%--</div>--%>
<%--<div class="col-right col8">--%>
<%--<div class="topic-list-title clearfix">--%>
<%--<h3>--%>
<%--<a href="/t/210819">西藏</a>--%>
<%--</h3>--%>
<%--<div class="topic-list-count">--%>
<%--<a href="/t/210819">11</a>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="topic-list-subtitle clearfix">--%>
<%--<a>#11-25佛山出发#</a>--%>
<%--<a href="/l/0_0_2">徒步</a>--%>
<%--<a href="/l/0_0_7">穷游</a>--%>
<%--<a href="/l/0_0_3">自驾</a>--%>
<%--<a href="/l/0_0_9">随性</a>--%>
<%--</div>--%>
<%--<div class="topic-list-content">--%>
<%--<p>好想去西藏看看，有想去西藏的伙伴吗？</p>--%>
<%--</div>--%>
<%--<div class="topic-list-info clearfix">--%>
<%--<span>--%>
<%--<a href="/u/902169">yang</a>&nbsp;最后更新&nbsp;--%>
<%--8&nbsp;分钟前				</span>--%>
<%--<i>来自：PC发布</i>--%>
<%--</div>--%>
<%--<hr/>--%>
<%--</div>--%>
<%--</section>--%>
<%--<section class="clearfix">--%>
<%--<div class="col col1">--%>
<%--<div class="topic-list-avatar avatar">--%>
<%--<a href="/u/901906" title="驴友 ">--%>
<%--<img src="/upload/avatar/middle/901906.png" alt=""/> </a>--%>
<%--</div>--%>
<%--<div class="topic-list-topic-username"></div>--%>
<%--</div>--%>
<%--<div class="col-right col8">--%>
<%--<div class="topic-list-title clearfix">--%>
<%--<h3>--%>
<%--<a href="/t/209102">北京旅游</a>--%>
<%--</h3>--%>
<%--<div class="topic-list-count">--%>
<%--<a href="/t/209102">29</a>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="topic-list-subtitle clearfix">--%>
<%--<a>#11-04深圳出发#</a>--%>
<%--<a href="/l/0_0_9">随性</a>--%>
<%--</div>--%>
<%--<div class="topic-list-content">--%>
<%--<p>11月四日出发或者说11月11日出发，4-5天，走走老北京的胡同，看看升旗仪式，逛逛三里屯，看后海的日落。。。本人女生，男女不限</p>--%>
<%--</div>--%>
<%--<div class="topic-list-info clearfix">--%>
<%--<span>--%>
<%--<a href="/u/901906">陈千--图兰朵声乐中心</a>&nbsp;最后更新&nbsp;--%>
<%--7&nbsp;小时前				</span>--%>
<%--<i>来自：PC发布</i>--%>
<%--</div>--%>
<%--<hr/>--%>
<%--</div>--%>
<%--</section>--%>
<%--<section class="clearfix">--%>
<%--<div class="col col1">--%>
<%--<div class="topic-list-avatar avatar">--%>
<%--<a href="/u/902198" title="驴友 哚儿">--%>
<%--<img src="/upload/avatar/middle/902198.png" alt="哚儿"/> </a>--%>
<%--</div>--%>
<%--<div class="topic-list-topic-username">哚儿</div>--%>
<%--</div>--%>
<%--<div class="col-right col8">--%>
<%--<div class="topic-list-title clearfix">--%>
<%--<h3>--%>
<%--<a href="/t/210818">女伴们，来一场说走就走的旅行吧</a>--%>
<%--</h3>--%>
<%--<div class="topic-list-count">--%>
<%--<a href="/t/210818">6</a>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="topic-list-subtitle clearfix">--%>
<%--<a>#11-18南京出发#</a>--%>
<%--<a href="/l/0_0_4">摄影</a>--%>
<%--<a href="/l/0_0_7">穷游</a>--%>
<%--</div>--%>
<%--<div class="topic-list-content">--%>
<%--<p>--%>
<%--【结伴游，欢迎报名】热爱旅游，敢尝试，浪荡不羁爱自由！感受下异国风土人情，品尝他乡美食。6～8日游，11月中下旬或者12月。川藏线、边境线、云南、三亚、泰国等都行。有木有结伴而行的小伙伴，欢迎报名报名</p>--%>
<%--</div>--%>
<%--<div class="topic-list-info clearfix">--%>
<%--<span>--%>
<%--<a href="/u/902198">飞起来jr</a>&nbsp;最后更新&nbsp;--%>
<%--8&nbsp;小时前				</span>--%>
<%--<i>来自：PC发布</i>--%>
<%--</div>--%>
<%--<hr/>--%>
<%--</div>--%>
<%--</section>--%>
<%--<section class="clearfix">--%>
<%--<div class="col col1">--%>
<%--<div class="topic-list-avatar avatar">--%>
<%--<a href="/u/898841" title="驴友 思思Christina">--%>
<%--<img src="/upload/avatar/middle/898841.png" alt="思思Christina"/> </a>--%>
<%--</div>--%>
<%--<div class="topic-list-topic-username">思思Christina</div>--%>
<%--</div>--%>
<%--<div class="col-right col8">--%>
<%--<div class="topic-list-title clearfix">--%>
<%--<h3>--%>
<%--<a href="/t/154901">心念冰岛风光，不想等了</a>--%>
<%--</h3>--%>
<%--<div class="topic-list-count">--%>
<%--<a href="/t/154901">3</a>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="topic-list-subtitle clearfix">--%>
<%--<a>#12-16北京出发#</a>--%>
<%--<a href="/l/0_0_2">徒步</a>--%>
<%--<a href="/l/0_0_7">穷游</a>--%>
<%--</div>--%>
<%--<div class="topic-list-content">--%>
<%--<p>--%>
<%--心念冰岛风光，不想等了。。可是上班族时间有限，什么一趟玩北欧几国几国的就不想了，连头连尾10天假期，就冰岛一地，蓝洞，冰湖，徒步和极光，冬季的冰岛，天气多变，本人技术不佳，也不打算自驾，更不指望被拣，</p>--%>
<%--</div>--%>
<%--<div class="topic-list-info clearfix">--%>
<%--<span>--%>
<%--<a href="/u/898841">通哥</a>&nbsp;最后更新&nbsp;--%>
<%--12&nbsp;小时前				</span>--%>
<%--<i>来自：PC发布</i>--%>
<%--</div>--%>
<%--<hr/>--%>
<%--</div>--%>
<%--</section>--%>
<%--<section class="clearfix">--%>
<%--<div class="col col1">--%>
<%--<div class="topic-list-avatar avatar">--%>
<%--<a href="/u/902254" title="驴友 飞起来jr">--%>
<%--<img src="/upload/avatar/middle/902254.png" alt="飞起来jr"/> </a>--%>
<%--</div>--%>
<%--<div class="topic-list-topic-username">飞起来jr</div>--%>
<%--</div>--%>
<%--<div class="col-right col8">--%>
<%--<div class="topic-list-title clearfix">--%>
<%--<h3>--%>
<%--<a href="/t/210831">11月下旬进敦煌2-3天，可同游格尔木</a>--%>
<%--</h3>--%>
<%--<div class="topic-list-count">--%>
<%--<a href="/t/210831">1</a>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="topic-list-subtitle clearfix">--%>
<%--<a>#11-21不限出发#</a>--%>
<%--<a href="/l/0_0_8">发呆</a>--%>
<%--<a href="/l/0_0_11">吃货</a>--%>
<%--<a href="/l/0_0_5">学生</a>--%>
<%--<a href="/l/0_0_2">徒步</a>--%>
<%--<a href="/l/0_0_1">搭车</a>--%>
<%--<a href="/l/0_0_4">摄影</a>--%>
<%--<a href="/l/0_0_10">毕业季</a>--%>
<%--<a href="/l/0_0_7">穷游</a>--%>
<%--<a href="/l/0_0_9">随性</a>--%>
<%--</div>--%>
<%--<div class="topic-list-content">--%>
<%--<p>--%>
<%--女汉子一枚，求女生，男生请带上你的女票、未来女票。出发地随意，可以在格尔木/西宁/敦煌碰头。&nbsp;11月16-21号在上海，上海出发的可以一起走。可以陪玩格尔木。</p>--%>
<%--</div>--%>
<%--<div class="topic-list-info clearfix">--%>
<%--<span>--%>
<%--<a href="/u/902254">飞起来jr</a>&nbsp;最后更新&nbsp;--%>
<%--13&nbsp;小时前				</span>--%>
<%--<i>来自：PC发布</i>--%>
<%--</div>--%>
<%--<hr/>--%>
<%--</div>--%>
<%--</section>--%>
<%--<section class="clearfix">--%>
<%--<div class="col col1">--%>
<%--<div class="topic-list-avatar avatar">--%>
<%--<a href="/u/901807" title="驴友 疏雨梧桐">--%>
<%--<img src="/upload/avatar/middle/901807.png" alt="疏雨梧桐"/> </a>--%>
<%--</div>--%>
<%--<div class="topic-list-topic-username">疏雨梧桐</div>--%>
<%--</div>--%>
<%--<div class="col-right col8">--%>
<%--<div class="topic-list-title clearfix">--%>
<%--<h3>--%>
<%--<a href="/t/185386">11月中下旬去云南或者厦门</a>--%>
<%--</h3>--%>
<%--<div class="topic-list-count">--%>
<%--<a href="/t/185386">3</a>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="topic-list-subtitle clearfix">--%>
<%--<a>#11-22虹口出发#</a>--%>
<%--<a href="/l/0_0_9">随性</a>--%>
<%--</div>--%>
<%--<div class="topic-list-content">--%>
<%--<p>本人女，想11月中下旬结伴去云南或者厦门，准备跟团，旅游经验丰富的也可跟着人家自由行，要求妹子一枚，有意者加qq995319256，请注明结伴游</p>--%>
<%--</div>--%>
<%--<div class="topic-list-info clearfix">--%>
<%--<span>--%>
<%--<a href="/u/901807">秋秋</a>&nbsp;最后更新&nbsp;--%>
<%--13&nbsp;小时前				</span>--%>
<%--<i>来自：PC发布</i>--%>
<%--</div>--%>
<%--<hr/>--%>
<%--</div>--%>
<%--</section>--%>
<%--<section class="clearfix">--%>
<%--<div class="col col1">--%>
<%--<div class="topic-list-avatar avatar">--%>
<%--<a href="/u/901969" title="驴友 Have a good day.">--%>
<%--<img src="/upload/avatar/middle/901969.png" alt="Have a good day."/> </a>--%>
<%--</div>--%>
<%--<div class="topic-list-topic-username">Have a good day.</div>--%>
<%--</div>--%>
<%--<div class="col-right col8">--%>
<%--<div class="topic-list-title clearfix">--%>
<%--<h3>--%>
<%--<a href="/t/210776">结伴出去散心，地点随意（希望不要太冷）</a>--%>
<%--</h3>--%>
<%--<div class="topic-list-count">--%>
<%--<a href="/t/210776">22</a>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="topic-list-subtitle clearfix">--%>
<%--<a>#11-11汕头出发#</a>--%>
<%--<a href="/l/0_0_11">吃货</a>--%>
<%--<a href="/l/0_0_7">穷游</a>--%>
<%--<a href="/l/0_0_3">自驾</a>--%>
<%--</div>--%>
<%--<div class="topic-list-content">--%>
<%--<p>女生，时间自由。比较有意向的是广东潮州和&nbsp;贵州。</p>--%>
<%--</div>--%>
<%--<div class="topic-list-info clearfix">--%>
<%--<span>--%>
<%--<a href="/u/901969">原野</a>&nbsp;最后更新&nbsp;--%>
<%--13&nbsp;小时前				</span>--%>
<%--<i>来自：PC发布</i>--%>
<%--</div>--%>
<%--<hr/>--%>
<%--</div>--%>
<%--</section>--%>
<%--<section class="clearfix">--%>
<%--<div class="col col1">--%>
<%--<div class="topic-list-avatar avatar">--%>
<%--<a href="/u/902258" title="驴友 Aegean">--%>
<%--<img src="/upload/avatar/middle/902258.png" alt="Aegean"/> </a>--%>
<%--</div>--%>
<%--<div class="topic-list-topic-username">Aegean</div>--%>
<%--</div>--%>
<%--<div class="col-right col8">--%>
<%--<div class="topic-list-title clearfix">--%>
<%--<h3>--%>
<%--<a href="/t/210830">2018年2月东欧自由行约伴</a>--%>
<%--</h3>--%>
<%--</div>--%>
<%--<div class="topic-list-subtitle clearfix">--%>
<%--<a>#02-10广州出发#</a>--%>
<%--<a href="/l/0_0_4">摄影</a>--%>
<%--<a href="/l/0_0_3">自驾</a>--%>
<%--<a href="/l/0_0_9">随性</a>--%>
<%--</div>--%>
<%--<div class="topic-list-content">--%>
<%--<p>--%>
<%--美得像童话的东欧诸国，第一次看照片就令我心生向往。不喜欢走得太匆忙而错过一处美好的风光，所以只计划游玩奥地利、匈牙利、捷克、斯洛文尼亚等国家，计划2月10号左右出发，全程自驾约20天。行程计划已基本定</p>--%>
<%--</div>--%>
<%--<div class="topic-list-info clearfix">--%>
<%--<span>--%>
<%--<a href="/u/902258"></a>&nbsp;最后更新&nbsp;--%>
<%--13&nbsp;小时前				</span>--%>
<%--<i>来自：PC发布</i>--%>
<%--</div>--%>
<%--<hr/>--%>
<%--</div>--%>
<%--</section>--%>
<%--<section class="clearfix">--%>
<%--<div class="col col1">--%>
<%--<div class="topic-list-avatar avatar">--%>
<%--<a href="/u/898413" title="驴友 祯儿">--%>
<%--<img src="/upload/avatar/middle/898413.png" alt="祯儿"/> </a>--%>
<%--</div>--%>
<%--<div class="topic-list-topic-username">祯儿</div>--%>
<%--</div>--%>
<%--<div class="col-right col8">--%>
<%--<div class="topic-list-title clearfix">--%>
<%--<h3>--%>
<%--<a href="/t/184334">世界那么大，我想去看看～</a>--%>
<%--</h3>--%>
<%--<div class="topic-list-count">--%>
<%--<a href="/t/184334">27</a>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="topic-list-subtitle clearfix">--%>
<%--<a>#01-12佛山及周边都可出发#</a>--%>
<%--<a href="/l/0_0_11">吃货</a>--%>
<%--<a href="/l/0_0_4">摄影</a>--%>
<%--<a href="/l/0_0_7">穷游</a>--%>
<%--<a href="/l/0_0_9">随性</a>--%>
<%--</div>--%>
<%--<div class="topic-list-content">--%>
<%--<p>--%>
<%--89妹纸一枚，不矫情，打算年底辞职去放空一下自己，几年的工作，把自己磨得没有了棱角，少了些激情，想按一下暂停键让自己歇一歇，想重拾原来的自己，找回初心，没有攻略，就只是想一路走走停停，出行日子暂定，时</p>--%>
<%--</div>--%>
<%--<div class="topic-list-info clearfix">--%>
<%--<span>--%>
<%--<a href="/u/898413">Angela</a>&nbsp;最后更新&nbsp;--%>
<%--16&nbsp;小时前				</span>--%>
<%--<i>来自：PC发布</i>--%>
<%--</div>--%>
<%--<hr/>--%>
<%--</div>--%>
<%--</section>--%>
<%--<section class="clearfix">--%>
<%--<div class="col col1">--%>
<%--<div class="topic-list-avatar avatar">--%>
<%--<a href="/u/902203" title="驴友 得之，幸；不得，命！">--%>
<%--<img src="/upload/avatar/middle/902203.png" alt="得之，幸；不得，命！"/> </a>--%>
<%--</div>--%>
<%--<div class="topic-list-topic-username">得之，幸；不得，命！</div>--%>
<%--</div>--%>
<%--<div class="col-right col8">--%>
<%--<div class="topic-list-title clearfix">--%>
<%--<h3>--%>
<%--<a href="/t/210817">本人已经离职，想去大理、丽江、洱海转转</a>--%>
<%--</h3>--%>
<%--<div class="topic-list-count">--%>
<%--<a href="/t/210817">20</a>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="topic-list-subtitle clearfix">--%>
<%--<a>#11-15洛阳出发#</a>--%>
<%--<a href="/l/0_0_4">摄影</a>--%>
<%--<a href="/l/0_0_7">穷游</a>--%>
<%--</div>--%>
<%--<div class="topic-list-content">--%>
<%--<p>--%>
<%--本人93年，工作已经离职，之前干化工！想出去旅游一番，但是一个人太孤单，想两个人，不过从来没有体验过两个人，一般出去都是一个人！如果你想一起去欢迎骚扰我！我有微单！如果业余摄影者，想看摄影可以私聊我</p>--%>
<%--</div>--%>
<%--<div class="topic-list-info clearfix">--%>
<%--<span>--%>
<%--<a href="/u/902203">得之，幸；不得，命！</a>&nbsp;最后更新&nbsp;--%>
<%--17&nbsp;小时前				</span>--%>
<%--<i>来自：PC发布</i>--%>
<%--</div>--%>
<%--<hr/>--%>
<%--</div>--%>
<%--</section>--%>
<%--<section class="clearfix">--%>
<%--<div class="col col1">--%>
<%--<div class="topic-list-avatar avatar">--%>
<%--<a href="/u/902240" title="驴友 二有">--%>
<%--<img src="/upload/avatar/middle/902240.png" alt="二有"/> </a>--%>
<%--</div>--%>
<%--<div class="topic-list-topic-username">二有</div>--%>
<%--</div>--%>
<%--<div class="col-right col8">--%>
<%--<div class="topic-list-title clearfix">--%>
<%--<h3>--%>
<%--<a href="/t/210825">自驾大西北</a>--%>
<%--</h3>--%>
<%--<div class="topic-list-count">--%>
<%--<a href="/t/210825">2</a>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="topic-list-subtitle clearfix">--%>
<%--<a>#04-30无锡北京出发#</a>--%>
<%--<a href="/l/0_0_5">学生</a>--%>
<%--<a href="/l/0_0_4">摄影</a>--%>
<%--<a href="/l/0_0_10">毕业季</a>--%>
<%--<a href="/l/0_0_3">自驾</a>--%>
<%--</div>--%>
<%--<div class="topic-list-content">--%>
<%--<p>94年工科狗一枚 伪文艺老腊肉&nbsp;明年3月份辞职 想放空一下自己 个人是打算先从无锡去北京 在北京逛几天然后去兰州再转西宁 到西宁租车自驾--%>
<%--然后大环线下来之后再转拉萨 业余摄影爱好者 可充当全</p>--%>
<%--</div>--%>
<%--<div class="topic-list-info clearfix">--%>
<%--<span>--%>
<%--<a href="/u/902240">二有</a>&nbsp;最后更新&nbsp;--%>
<%--17&nbsp;小时前				</span>--%>
<%--<i>来自：PC发布</i>--%>
<%--</div>--%>
<%--<hr/>--%>
<%--</div>--%>
<%--</section>--%>
<%--<section class="clearfix">--%>
<%--<div class="col col1">--%>
<%--<div class="topic-list-avatar avatar">--%>
<%--<a href="/u/901741" title="驴友 艾玛">--%>
<%--<img src="/upload/avatar/middle/901741.png" alt="艾玛"/> </a>--%>
<%--</div>--%>
<%--<div class="topic-list-topic-username">艾玛</div>--%>
<%--</div>--%>
<%--<div class="col-right col8">--%>
<%--<div class="topic-list-title clearfix">--%>
<%--<h3>--%>
<%--<a href="/t/185350">大理-丽江-泸沽湖</a>--%>
<%--</h3>--%>
<%--<div class="topic-list-count">--%>
<%--<a href="/t/185350">31</a>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="topic-list-subtitle clearfix">--%>
<%--<a>#11-24昆明出发#</a>--%>
<%--<a href="/l/0_0_9">随性</a>--%>
<%--</div>--%>
<%--<div class="topic-list-content">--%>
<%--<p>找一位时间及意向上均合适的女性拼友一起去云南~~--%>
<%--做攻略不省心，但所见比较好的团都是2人起报的&nbsp;有意者请留下您的微信，我会加你。时间尚早，也可以商量自由行</p>--%>
<%--</div>--%>
<%--<div class="topic-list-info clearfix">--%>
<%--<span>--%>
<%--<a href="/u/901741">~ZOE~吉昀Jiyun~</a>&nbsp;最后更新&nbsp;--%>
<%--22&nbsp;小时前				</span>--%>
<%--<i>来自：PC发布</i>--%>
<%--</div>--%>
<%--<hr/>--%>
<%--</div>--%>
<%--</section>--%>
<%--<section class="clearfix">--%>
<%--<div class="col col1">--%>
<%--<div class="topic-list-avatar avatar">--%>
<%--<a href="/u/902249" title="驴友 Dzx">--%>
<%--<img src="/upload/avatar/middle/902249.png" alt="Dzx"/> </a>--%>
<%--</div>--%>
<%--<div class="topic-list-topic-username">Dzx</div>--%>
<%--</div>--%>
<%--<div class="col-right col8">--%>
<%--<div class="topic-list-title clearfix">--%>
<%--<h3>--%>
<%--<a href="/t/210829">穿越雪原，去东北哈尔滨雪乡旅游滑雪</a>--%>
<%--</h3>--%>
<%--<div class="topic-list-count">--%>
<%--<a href="/t/210829">4</a>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="topic-list-subtitle clearfix">--%>
<%--<a>#01-17成都出发#</a>--%>
<%--<a href="/l/0_0_7">穷游</a>--%>
<%--</div>--%>
<%--<div class="topic-list-content">--%>
<%--<p>--%>
<%--冬天就该去下雪的地方看一看，看满目的白色世界，打雪仗，徒步穿越雪山丛林，泡一次温泉。大致行程如下：Day1：哈尔滨集合（晚上可去游玩冰雪大世界）Day2：哈尔滨—东升林场（中国雪谷）学习包饺子，篝火晚</p>--%>
<%--</div>--%>
<%--<div class="topic-list-info clearfix">--%>
<%--<span>--%>
<%--<a href="/u/902249">Dzx</a>&nbsp;最后更新&nbsp;--%>
<%--22&nbsp;小时前				</span>--%>
<%--<i>来自：PC发布</i>--%>
<%--</div>--%>
<%--<hr/>--%>
<%--</div>--%>
<%--</section>--%>
<%--<section class="clearfix">--%>
<%--<div class="col col1">--%>
<%--<div class="topic-list-avatar avatar">--%>
<%--<a href="/u/899697" title="驴友 杨进军">--%>
<%--<img src="/upload/avatar/middle/899697.png" alt="杨进军"/> </a>--%>
<%--</div>--%>
<%--<div class="topic-list-topic-username">杨进军</div>--%>
<%--</div>--%>
<%--<div class="col-right col8">--%>
<%--<div class="topic-list-title clearfix">--%>
<%--<h3>--%>
<%--<a href="/t/210812">心不定了，月底出门玩一个月，准备绕着地图画圈圈</a>--%>
<%--</h3>--%>
<%--<div class="topic-list-count">--%>
<%--<a href="/t/210812">7</a>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="topic-list-subtitle clearfix">--%>
<%--<a>#11-30南京出发#</a>--%>
<%--<a href="/l/0_0_4">摄影</a>--%>
<%--<a href="/l/0_0_3">自驾</a>--%>
<%--<a href="/l/0_0_12">露营</a>--%>
<%--</div>--%>
<%--<div class="topic-list-content">--%>
<%--<p>--%>
<%--嘴容易得到满足，吃饱喝足就行心无处安放，何有良药？准备月底休息一段时间，安静的享受在路上的过程。感受南方的风和日丽，宿营野外观星，体验下北国的冰天雪地，溜冰滑雪。一个人太孤单，求一知心聊得来的伴。要求</p>--%>
<%--</div>--%>
<%--<div class="topic-list-info clearfix">--%>
<%--<span>--%>
<%--<a href="/u/899697">杨进军</a>&nbsp;最后更新&nbsp;--%>
<%--22&nbsp;小时前				</span>--%>
<%--<i>来自：PC发布</i>--%>
<%--</div>--%>
<%--<hr/>--%>
<%--</div>--%>
<%--</section>--%>
<%--<section class="clearfix">--%>
<%--<div class="col col1">--%>
<%--<div class="topic-list-avatar avatar">--%>
<%--<a href="/u/901864" title="驴友 朔云边雪">--%>
<%--<img src="/upload/avatar/middle/901864.png" alt="朔云边雪"/> </a>--%>
<%--</div>--%>
<%--<div class="topic-list-topic-username">朔云边雪</div>--%>
<%--</div>--%>
<%--<div class="col-right col8">--%>
<%--<div class="topic-list-title clearfix">--%>
<%--<h3>--%>
<%--<a href="/t/199884">11月底出发旅行内蒙 黑龙江 甘肃 西藏</a>--%>
<%--</h3>--%>
<%--<div class="topic-list-count">--%>
<%--<a href="/t/199884">3</a>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="topic-list-subtitle clearfix">--%>
<%--<a>#11-22江苏出发#</a>--%>
<%--<a href="/l/0_0_11">吃货</a>--%>
<%--<a href="/l/0_0_4">摄影</a>--%>
<%--<a href="/l/0_0_7">穷游</a>--%>
<%--<a href="/l/0_0_9">随性</a>--%>
<%--</div>--%>
<%--<div class="topic-list-content">--%>
<%--<p>--%>
<%--90后妹子，工作好几年了，感觉现在的生活好累，日复一日重复着的工作厌倦了，压的自己都麻木了，我怕再停几年真的走不出去了，只能慢慢循环在这样工作里，趁年轻还有一颗想看看世界的心，所以这次一定要走出去。人</p>--%>
<%--</div>--%>
<%--<div class="topic-list-info clearfix">--%>
<%--<span>--%>
<%--<a href="/u/901864">哚儿</a>&nbsp;最后更新&nbsp;--%>
<%--22&nbsp;小时前				</span>--%>
<%--<i>来自：PC发布</i>--%>
<%--</div>--%>
<%--<hr/>--%>
<%--</div>--%>
<%--</section>--%>
<%--<section class="clearfix">--%>
<%--<div class="col col1">--%>
<%--<div class="topic-list-avatar avatar">--%>
<%--<a href="/u/885217" title="驴友 讨厌下雨天">--%>
<%--<img src="/upload/avatar/middle/885217.png" alt="讨厌下雨天"/> </a>--%>
<%--</div>--%>
<%--<div class="topic-list-topic-username">讨厌下雨天</div>--%>
<%--</div>--%>
<%--<div class="col-right col8">--%>
<%--<div class="topic-list-title clearfix">--%>
<%--<h3>--%>
<%--<a href="/t/148052">泰国普吉岛 5天，求结伴</a>--%>
<%--</h3>--%>
<%--<div class="topic-list-count">--%>
<%--<a href="/t/148052">1</a>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="topic-list-subtitle clearfix">--%>
<%--<a>#04-08成都出发#</a>--%>
<%--</div>--%>
<%--<div class="topic-list-content">--%>
<%--<p>4月中旬去泰国，想去海边，两个女生，不会泰语和英语，想结伴，费用AA</p>--%>
<%--</div>--%>
<%--<div class="topic-list-info clearfix">--%>
<%--<span>--%>
<%--<a href="/u/885217">Janeet</a>&nbsp;最后更新&nbsp;--%>
<%--22&nbsp;小时前				</span>--%>
<%--<i>来自：PC发布</i>--%>
<%--</div>--%>
<%--<hr/>--%>
<%--</div>--%>
<%--</section>--%>
<%--<section class="clearfix">--%>
<%--<div class="col col1">--%>
<%--<div class="topic-list-avatar avatar">--%>
<%--<a href="/u/892100" title="驴友 .">--%>
<%--<img src="/upload/avatar/middle/892100.png" alt="."/> </a>--%>
<%--</div>--%>
<%--<div class="topic-list-topic-username">.</div>--%>
<%--</div>--%>
<%--<div class="col-right col8">--%>
<%--<div class="topic-list-title clearfix">--%>
<%--<h3>--%>
<%--<a href="/t/150598">8.23号 北京出发 去泰国普吉岛 28号下午回 </a>--%>
<%--</h3>--%>
<%--<div class="topic-list-count">--%>
<%--<a href="/t/150598">2</a>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="topic-list-subtitle clearfix">--%>
<%--<a>#08-23北京出发#</a>--%>
<%--<a href="/l/0_0_5">学生</a>--%>
<%--</div>--%>
<%--<div class="topic-list-content">--%>
<%--<p>学生本人男跟表妹和表妹闺蜜（妹子是空姐）三人去旅游缺一人四人行旅游费用AA制</p>--%>
<%--</div>--%>
<%--<div class="topic-list-info clearfix">--%>
<%--<span>--%>
<%--<a href="/u/892100">Janeet</a>&nbsp;最后更新&nbsp;--%>
<%--22&nbsp;小时前				</span>--%>
<%--<i>来自：PC发布</i>--%>
<%--</div>--%>
<%--<hr/>--%>
<%--</div>--%>
<%--</section>--%>
<%--<section class="clearfix">--%>
<%--<div class="col col1">--%>
<%--<div class="topic-list-avatar avatar">--%>
<%--<a href="/u/902241" title="驴友 Manson ">--%>
<%--<img src="/upload/avatar/middle/902241.png" alt="Manson "/> </a>--%>
<%--</div>--%>
<%--<div class="topic-list-topic-username">Manson</div>--%>
<%--</div>--%>
<%--<div class="col-right col8">--%>
<%--<div class="topic-list-title clearfix">--%>
<%--<h3>--%>
<%--<a href="/t/210828">单人单车 12月初深圳出发走滇藏线到西藏</a>--%>
<%--</h3>--%>
<%--</div>--%>
<%--<div class="topic-list-subtitle clearfix">--%>
<%--<a>#12-01深圳出发#</a>--%>
<%--<a href="/l/0_0_8">发呆</a>--%>
<%--<a href="/l/0_0_4">摄影</a>--%>
<%--<a href="/l/0_0_3">自驾</a>--%>
<%--<a href="/l/0_0_9">随性</a>--%>
<%--</div>--%>
<%--<div class="topic-list-content">--%>
<%--<p>--%>
<%--30岁大叔单人单车（轿车）12月初深圳出发走滇藏线到拉萨-珠峰大本营，条件允许的话到札达土林，古格王国遗址新藏线出，条件不允许就走青藏线出再绕花石峡镇-玛多县-色达-四姑娘山-成都-深圳</p>--%>
<%--</div>--%>
<%--<div class="topic-list-info clearfix">--%>
<%--<span>--%>
<%--<a href="/u/902241"></a>&nbsp;最后更新&nbsp;--%>
<%--22&nbsp;小时前				</span>--%>
<%--<i>来自：PC发布</i>--%>
<%--</div>--%>
<%--<hr/>--%>
<%--</div>--%>
<%--</section>--%>
<%--<section class="clearfix">--%>
<%--<div class="col col1">--%>
<%--<div class="topic-list-avatar avatar">--%>
<%--<a href="/u/901682" title="驴友 large star">--%>
<%--<img src="/upload/avatar/middle/901682.png" alt="large star"/> </a>--%>
<%--</div>--%>
<%--<div class="topic-list-topic-username">large star</div>--%>
<%--</div>--%>
<%--<div class="col-right col8">--%>
<%--<div class="topic-list-title clearfix">--%>
<%--<h3>--%>
<%--<a href="/t/184543">寻找志同道合的朋友一起去云南</a>--%>
<%--</h3>--%>
<%--<div class="topic-list-count">--%>
<%--<a href="/t/184543">19</a>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="topic-list-subtitle clearfix">--%>
<%--<a>#12-17广州出发#</a>--%>
<%--<a href="/l/0_0_4">摄影</a>--%>
<%--<a href="/l/0_0_7">穷游</a>--%>
<%--</div>--%>
<%--<div class="topic-list-content">--%>
<%--<p>有人想12月去云南看雪，看美景吗~本人90后，大四12月没有课了，喜欢摄影，爱好旅游，有志同道合的朋友可以一起去吗？</p>--%>
<%--</div>--%>
<%--<div class="topic-list-info clearfix">--%>
<%--<span>--%>
<%--<a href="/u/901682">Luffy</a>&nbsp;最后更新&nbsp;--%>
<%--23&nbsp;小时前				</span>--%>
<%--<i>来自：PC发布</i>--%>
<%--</div>--%>
<%--<hr/>--%>
<%--</div>--%>
<%--</section>--%>
<%--<section class="clearfix">--%>
<%--<div class="col col1">--%>
<%--<div class="topic-list-avatar avatar">--%>
<%--<a href="/u/901643" title="驴友 小鱼">--%>
<%--<img src="/upload/avatar/middle/901643.png" alt="小鱼"/> </a>--%>
<%--</div>--%>
<%--<div class="topic-list-topic-username">小鱼</div>--%>
<%--</div>--%>
<%--<div class="col-right col8">--%>
<%--<div class="topic-list-title clearfix">--%>
<%--<h3>--%>
<%--<a href="/t/184523">预计2017年12月想来一次雪国之旅。寻北之旅（漠河、哈尔滨、雪谷、雾凇岛）</a>--%>
<%--</h3>--%>
<%--<div class="topic-list-count">--%>
<%--<a href="/t/184523">29</a>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="topic-list-subtitle clearfix">--%>
<%--<a>#12-14深圳出发#</a>--%>
<%--<a href="/l/0_0_2">徒步</a>--%>
<%--<a href="/l/0_0_1">搭车</a>--%>
<%--<a href="/l/0_0_7">穷游</a>--%>
<%--<a href="/l/0_0_3">自驾</a>--%>
<%--</div>--%>
<%--<div class="topic-list-content">--%>
<%--<p>生活在南方的孩子(妹子一枚）想去东北看雪景穿雪谷，感受北方的冬天。个人性格开朗，求约伴，被捡也行，时间可调整。行程路线还没订，约到伴再一起商量</p>--%>
<%--</div>--%>
<%--<div class="topic-list-info clearfix">--%>
<%--<span>--%>
<%--<a href="/u/901643">纳木措</a>&nbsp;最后更新&nbsp;--%>
<%--23&nbsp;小时前				</span>--%>
<%--<i>来自：PC发布</i>--%>
<%--</div>--%>
<%--<hr/>--%>
<%--</div>--%>
<%--</section>--%>
<%--</article>--%>
<%--<div class="pagination">--%>
<%--<ul>--%>
<%--<li><a href="#" class="active">1</a></li>--%>
<%--<li><a href="/p/2">2</a></li>--%>
<%--<li><a href="/p/3">3</a></li>--%>
<%--<li><a href="/p/4">4</a></li>--%>
<%--<li><a href="/p/5">5</a></li>--%>
<%--<li><a href="/p/6">6</a></li>--%>
<%--<li><a href="/p/7">7</a></li>--%>
<%--<li><a href="/p/8">8</a></li>--%>
<%--<li><a href="/p/50">50</a></li>--%>
<%--<li class="next"><a href="/p/2">下一页&rsaquo;&rsaquo;</a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="col-right col4">--%>
<%--<section class="sideblock">--%>
<%--户外俱乐部及各种商业组织请勿在此发帖，或伪装成个人召集揽客。如有合作需求请见底部“联系我们”。但由于违规所导致的锁帖、删帖、账号封禁请勿申述，感谢理解与配合！--%>
<%--</section>--%>
<%--<div class="sideblock clearfix">--%>
<%--<dl class="filter">--%>
<%--<dt>出发日期</dt>--%>
<%--<dd>--%>
<%--<a class="link-on">全部</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/30_0" title="驴友11月结伴旅行">11月</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/31_0" title="驴友12月结伴旅行">12月</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/39_0" title="驴友2018年1月结伴旅行">2018年1月</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/40_0" title="驴友2月结伴旅行">2月</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/41_0" title="驴友3月结伴旅行">3月</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/42_0" title="驴友4月结伴旅行">4月</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/43_0" title="驴友5月结伴旅行">5月</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/44_0" title="驴友6月结伴旅行">6月</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/45_0" title="驴友7月结伴旅行">7月</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/46_0" title="驴友8月结伴旅行">8月</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/47_0" title="驴友9月结伴旅行">9月</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/48_0" title="驴友10月结伴旅行">10月</a>--%>
<%--</dd>--%>
<%--<hr/>--%>
<%--<dt>目的地</dt>--%>
<%--<dd>--%>
<%--<a class="link-on">全部</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/0_5177" title="丽江驴友网">丽江</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/0_5267" title="拉萨驴友网">拉萨</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/0_5266" title="西藏驴友网">西藏</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/0_5132" title="云南驴友网">云南</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/0_5238" title="大理驴友网">大理</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/0_5263" title="香格里拉驴友网">香格里拉</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/0_4887" title="成都驴友网">成都</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/0_5524" title="青海驴友网">青海</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/0_5133" title="昆明驴友网">昆明</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/0_4093" title="厦门驴友网">厦门</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/0_3317" title="北京驴友网">北京</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/0_5525" title="西宁驴友网">西宁</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/0_3935" title="杭州驴友网">杭州</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/0_5347" title="西安驴友网">西安</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/0_3865" title="上海驴友网">上海</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/0_34" title="泰国驴友网">泰国</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/0_4843" title="三亚驴友网">三亚</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/0_5481" title="敦煌驴友网">敦煌</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/0_283" title="亚丁驴友网">亚丁</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/0_5026" title="稻城驴友网">稻城</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<form method="post" action="/r/list">--%>
<%--<input type="hidden" name="DepartureID" value=""/>--%>
<%--<input type="hidden" name="PlayTypeID" value=""/>--%>
<%--<input type="text" name="Tag" placeholder="想去哪里？" class="col2"/>--%>
<%--<button type="submit" class="btn btn-info btn-large">GO!</button>--%>
<%--</form>--%>
<%--</dd>--%>
<%--<hr/>--%>
<%--<dt>主题玩法</dt>--%>
<%--<dd>--%>
<%--<a class="link-on">全部</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/0_0_3" title="驴友自驾结伴旅行">自驾</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/0_0_7" title="驴友穷游结伴旅行">穷游</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/0_0_4" title="驴友摄影结伴旅行">摄影</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/0_0_9" title="驴友随性结伴旅行">随性</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/0_0_11" title="驴友吃货结伴旅行">吃货</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/0_0_5" title="驴友学生结伴旅行">学生</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/0_0_2" title="驴友徒步结伴旅行">徒步</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/0_0_1" title="驴友搭车结伴旅行">搭车</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/0_0_8" title="驴友发呆结伴旅行">发呆</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/0_0_14" title="驴友极限结伴旅行">极限</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/0_0_16" title="驴友艳遇结伴旅行">艳遇</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/0_0_12" title="驴友露营结伴旅行">露营</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/0_0_15" title="驴友血拼结伴旅行">血拼</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/0_0_10" title="驴友毕业季结伴旅行">毕业季</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/0_0_6" title="驴友骑行结伴旅行">骑行</a>--%>
<%--</dd>--%>
<%--<dd>--%>
<%--<a href="/l/0_0_13" title="驴友房车结伴旅行">房车</a>--%>
<%--</dd>--%>
<%--</dl>--%>
<%--</div>--%>
<%--</div>--%>
<%--<a style="display:none;" rel="nofollow" href="#top" id="go-to-top"><i class="fa fa-angle-double-up"--%>
<%--aria-hidden="true"></i></a>--%>
<%--</div>--%>
<%--<hr/>--%>
<%--<div class="main">--%>
<%--<div class="outside-link clearfix">--%>
<%--<span>友情链接：</span><a href="http://www.lavago.com/" title="拉勾勾旅游网" target="_blank">拉勾勾旅游网</a><a--%>
<%--href="http://www.gwyou.com" title="云南旅行网" target="_blank">云南旅行网</a><a href="http://travel.vsuch.com"--%>
<%--title="尚趣网旅游日记"--%>
<%--target="_blank">尚趣网旅游日记</a><a--%>
<%--href="http://www.seazor.com/" title="半岛" target="_blank">半岛</a><a href="http://www.ilvping.com"--%>
<%--title="驴评网"--%>
<%--target="_blank">驴评网</a><a--%>
<%--href="http://www.youtx.com" title="日租房" target="_blank">日租房</a><a href="http://www.517huwai.com"--%>
<%--title="一起去旅行" target="_blank">一起去旅行</a><a--%>
<%--href="http://www.ganhuoche.com" title="火车票代购" target="_blank">火车票代购</a><a--%>
<%--href="http://www.16fan.com" title="十六番" target="_blank">十六番</a><a href="http://www.xiaozhu.com/"--%>
<%--title="短租房"--%>
<%--target="_blank">短租房</a><a--%>
<%--href="http://www.shijiebang.com/" title="世界邦旅行网" target="_blank">世界邦旅行网</a><a--%>
<%--href="http://www.82222919.com" title="深圳旅行社" target="_blank">深圳旅行社</a><a--%>
<%--href="http://www.idting.com/" title="农家乐旅游" target="_blank">农家乐旅游</a><a--%>
<%--href="http://duanzu.zhuna.cn/" title="住哪网短租" target="_blank">住哪网短租</a><a--%>
<%--href="http://www.51yougo.com/" title="出境旅游" target="_blank">出境旅游</a><a--%>
<%--href="http://www.wangdian6.com" title="开网店" target="_blank">开网店</a><a href="http://www.cdyou.net/"--%>
<%--title="长岛"--%>
<%--target="_blank">长岛</a><a--%>
<%--href="http://www.xjtour.com" title="新疆旅游网" target="_blank">新疆旅游网</a><a href="http://bbs.8264.com/"--%>
<%--title="旅游论坛" target="_blank">旅游论坛</a><a--%>
<%--href="http://www.pm25.com" title="绿色呼吸" target="_blank">绿色呼吸</a><a href="http://www.quanmama.com/"--%>
<%--title="滴滴打车优惠券" target="_blank">滴滴打车优惠券</a><a--%>
<%--href="http://www.epet.com" title="E宠商城" target="_blank">E宠商城</a><a href="http://www.kuaidi.com/"--%>
<%--title="快递电话查询" target="_blank">快递电话查询</a><a--%>
<%--href="http://www.zuzuche.com/" title="租租车" target="_blank">租租车</a><a href="http://www.jdair.net"--%>
<%--title="首都航空" target="_blank">首都航空</a>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>



<%--<footer>--%>
    <%--<div class="footer-content">--%>
        <%--<p>--%>
            <%--友情连接： |--%>
            <%--<a href="">关于Travel</a>--%>
            <%--|--%>
            <%--<a href="">Travel</a>--%>
            <%--|--%>
            <%--<a href="">发展历程</a>--%>
            <%--|--%>
            <%--<a href="">业务合作</a>--%>
            <%--|--%>
            <%--<a href="">帮助中心</a>--%>
        <%--</p>--%>
    <%--</div>--%>
<%--</footer>--%>
<%--<!-- content wrapper end -->--%>

</body>
<script>
    $(function(){

        var i=0;
        var timer=null;
        for (var j = 0; j < $('.img li').length; j++) {   //创建圆点
            $('.num').append('<li></li>')
        }
        $('.num li').first().addClass('active');  //给第一个圆点添加样式

        var firstimg=$('.img li').first().clone(); //复制第一张图片
        $('.img').append(firstimg).width($('.img li').length*($('.img img').width()));  //将第一张图片放到最后一张图片后，设置ul的宽度为图片张数*图片宽度


        // 下一个按钮
        $('.next').click(function(){
            i++;
            if (i==$('.img li').length) {
                i=1; //这里不是i=0
                $('.img').css({left:0});  //保证无缝轮播，设置left值
            };

            $('.img').stop().animate({left:-i*1920},500);
            if (i==$('.img li').length-1) {     //设置小圆点指示
                $('.num li').eq(0).addClass('active').siblings().removeClass('active');
            }else{
                $('.num li').eq(i).addClass('active').siblings().removeClass('active');
            }

        })

        // 上一个按钮
        $('.prev').click(function(){
            i--;
            if (i==-1) {
                i=$('.img li').length-2;
                $('.img').css({left:-($('.img li').length-1)*1920});
            }
            $('.img').stop().animate({left:-i*1920},500);
            $('.num li').eq(i).addClass('active').siblings().removeClass('active');
        })

        //设置按钮的显示和隐藏
        $('.banner').hover(function(){
            $('.btn').show();
        },function(){
            $('.btn').hide();
        })

        //鼠标划入圆点
        $('.num li').mouseover(function(){
            var _index=$(this).index();
            $('.img').stop().animate({left:-_index*1920},500);
            $('.num li').eq(_index).addClass('active').siblings().removeClass('active');
        })

        //定时器自动播放
        timer=setInterval(function(){
            i++;
            if (i==$('.img li').length) {
                i=1;
                $('.img').css({left:0});
            };

            $('.img').stop().animate({left:-i*1920},500);
            if (i==$('.img li').length-1) {
                $('.num li').eq(0).addClass('active').siblings().removeClass('active');
            }else{
                $('.num li').eq(i).addClass('active').siblings().removeClass('active');
            }
        },4000)

        //鼠标移入，暂停自动播放，移出，开始自动播放
        $('.banner').hover(function(){
            clearInterval(timer);
        },function(){
            timer=setInterval(function(){
                i++;
                if (i==$('.img li').length) {
                    i=1;
                    $('.img').css({left:0});
                };

                $('.img').stop().animate({left:-i*1920},500);
                if (i==$('.img li').length-1) {
                    $('.num li').eq(0).addClass('active').siblings().removeClass('active');
                }else{
                    $('.num li').eq(i).addClass('active').siblings().removeClass('active');
                }
            },4000)
        })

    })
</script>
</html>
