﻿<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>无标题文档</title>
    <link href="/resource/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="/resource/css/font/iconfont.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="/resource/js/jquery/jquery.1.11.2.min.js"></script>

    <script type="text/javascript">
        $(function () {
            //导航切换
            $(".menuson li").click(function () {
                $(".menuson li.active").removeClass("active")
                $(this).addClass("active");
            });

            $('.title').click(function () {
                var $ul = $(this).next('ul');
                $('dd').find('ul').slideUp();
                if ($ul.is(':visible')) {
                    $(this).next('ul').slideUp();
                } else {
                    $(this).next('ul').slideDown();
                }
            });
        })
    </script>
</head>

<body>
<div class="lefttop">
    <a href="main.jsp" target="_parent">AdminUI</a>
</div>
<dl class="leftmenu">
    <dd>
        <div class="title">
            <span class="iconfont icon-shouye"></span>首页
        </div>
        <ul class="menuson">
            <li class="active">
                <a href="index.jsp" target="rightFrame">简洁模板</a>
                <i></i>
            </li>
            <li>
                <a href="default.jsp" target="rightFrame">区块模板</a>
                <i></i>
            </li>
        </ul>
    </dd>
    <dd>
        <div class="title">
            <span class="iconfont icon-liebiao"></span>列表
        </div>
        <ul class="menuson">
            <li><a href="operateList.jsp" target="rightFrame">带操作按钮</a></li>
            <li><a href="searchList.jsp" target="rightFrame">带搜索栏</a></li>
            <li><a href="imgtable.jsp" target="rightFrame">图片列表</a></li>
            <li><a href="imglist.jsp" target="rightFrame">图片网格</a></li>
            <li><a href="imglist1.jsp" target="rightFrame">图片自定义</a></li>
            <li><a href="tools.jsp" target="rightFrame">常用工具</a></li>
            <li><a href="filelist.jsp" target="rightFrame">文件管理</a></li>
            <li><a href="computer.jsp" target="rightFrame">我的电脑</a></li>
        </ul>
    </dd>
    <dd>
        <div class="title">
            <span class="iconfont icon-wodebiaodan"></span>表单
        </div>
        <ul class="menuson">
            <li><a href="form.jsp" target="rightFrame">添加编辑</a></li>
            <li><a href="tab.jsp" target="rightFrame">Tab页</a></li>
        </ul>
    </dd>
    <dd>
        <div class="title">
            <span class="iconfont icon-qita1"></span>其他设置
        </div>
        <ul class="menuson">
            <li><a href="error.jsp" target="rightFrame">404页面</a></li>
            <li><a href="login.jsp" target="rightFrame">登陆页面</a></li>
        </ul>
    </dd>
    <div class="bq">版权所有文字<br/>这里是第二行如果有的话</div>
</dl>

</body>
</html>
