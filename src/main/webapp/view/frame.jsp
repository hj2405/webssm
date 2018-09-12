<%--
  Created by IntelliJ IDEA.
  User: Helianths
  Date: 2018/1/24
  Time: 15:50
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>

<c:set var="hp" value="${pageContext.request.contextPath}" />
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="${hp}/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="//at.alicdn.com/t/font_564616_qy5e2vy5n7t1q0k9.css">
    <link rel="stylesheet" type="text/css" href="${hp}/css/ssm.css">
    <link rel="stylesheet" type="text/css" href="${hp}/css/backstage.css">
    <script src="${hp}/js/jquery-3.2.1.js"></script>
    <script src="${hp}/layui/layui.js" ></script>
    <script src="${hp}/js/index.js" ></script>

</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">DEMO</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <%--<img src="http://t.cn/RCzsdCq" class="layui-nav-img">--%>
                    杀猪佬
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">基本资料</a></dd>
                    <dd><a href="">安全设置</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="">退了</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll" id="menu">
        </div>
    </div>

    <div class="layui-body layui-form">
        <!-- 内容主体区域 -->
        <%--<div style="padding: 15px;">内容主体区域</div>--%>

        <!-- 选项卡   -->
        <div class="layui-tab" style="margin: 0px" lay-filter="bodyTab">
            <ul class="layui-tab-title top_tab" id="top_tabs">
                <li class="layui-this"><i class="hj-ssm-font hj-ssm-font-left icon-shouye"></i>首页</li>
            </ul>
            <div class="larry-title-box" style="height: 41px;" >
                <div class="go-left key-press pressKey" id="titleLeft" title="滚动至最左侧"><i class="hj-ssm-font icon-zuobianjiantoujiaoduxiao"></i> </div>
                <div class="title-right" id="titleRbox">
                    <div class="go-right key-press pressKey" id="titleRight" title="滚动至最右侧"><i class="hj-ssm-font icon-youbianjiantoujiaoduxiao"></i></div>
                    <div class="often key-press">
                        <ul class="layui-nav posr">
                            <li class="layui-nav-item posb">
                                <a class="top"><i class="layui-icon hj-ssm-font hj-ssm-font-left icon-caozuo"></i><cite>操作</cite></a>
                                <dl class="layui-nav-child">
                                    <dd><a href="javascript:;">关闭当前</a></dd>
                                    <dd><a href="javascript:;">关闭其它</a></dd>
                                    <dd><a href="javascript:;">关闭所有</a></dd>
                                </dl>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="layui-tab-content clildFrame" style="height:793px;">
                <div class="layui-tab-item layui-show layui-anim layui-anim-upbit">
                    <iframe src="${hp}/index/home.do" data-id="0" name="ifr_0" id="ifr_0"></iframe>
                </div>
            </div>
        </div>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © layui.com - 底部固定区域
    </div>
</div>
</body>
</html>
