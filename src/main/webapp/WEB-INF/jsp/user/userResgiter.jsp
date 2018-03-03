<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>用户注册</title>
		<!--其他样式列表-->
		<link rel="stylesheet" type="text/css" href="/resource/css/home.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/news.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/proprietorship.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/buyService.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/registration.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/safety.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/enter.css"/>
		<script src="/resource/script/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="/resource/script/userResgiter.js" type="text/javascript" charset="utf-8"></script>
		<script src="/resource/script/function.js" type="text/javascript" charset="utf-8"></script>
	</head>
	<body class="grayBg">
		<!--首页头部-->
		<header>
			<div class="header-content">
				<div class="logo"><span class="logo-img">京东益世集群注册平台</span></div>
				<div class="header-menu">
					<ul>
						<li class=""><a href="home.html">首页</a></li>
						<li><a href="registration.html">工商注册</a></li>
						<li class="active"><a href="#">个人中心</a></li>
						<li><a href="enterprise.html">企业中心</a></li>
						<li><a href="#">技术支持</a></li>
					</ul>
				</div>
			</div>
		</header>
		
		<div class="enter-content">
			<h3 class="tit">用户注册信息</h3>
			<div class="findPwd">
				<div class="contentInfo">
					<ul class="getInfo margin-t-49 margin-l-40">
						<li class="margin-b-19">
							<label class="infoName1 inputDes" for="tel">登录手机号：</label>
							<input class="info write-n" type="text" name="tel" id="tel" value="139****2345" placeholder="请输入登录手机号码"/>
						</li>
						<li class="margin-b-19">
							<label class="infoName1 inputDes" for="code">验证码：</label>
							<input class="info2" type="text" name="code" id="code" value="" placeholder=""/>
							<span class="bounceBtn" id="getCode" onclick="settime(this)"><a class="count" href="javascript:void(0)">获取验证码</a></span>
						</li>
						<li class="margin-b-19">
							<label class="infoName1 inputDes" for="newPwd">设置登录密码：</label>
							<input class="info write-n" type="text" name="newPwd" id="newPwd" value="" placeholder="请设置密码"/>
						</li>
						<li class="margin-b-19">
							<label class="infoName1 inputDes" for="pwd-a">再次输入密码：</label>
							<input class="info write-n" type="text" name="pwd-a" id="pwd-a" value="" placeholder="请再次输入密码"/>
						</li>
					</ul>
					<div class="btn-bounce" onclick="sure()">
						<a class="width-206" href="javascript:void(0)">确定</a>
					</div>
				</div>
			</div>
		</div>
		
		<footer>
			<div class="footer-menu">
				<ul>
					<li><a href="contactUs.html">关于我们</a></li>
					<li><a href="registration.html">工商注册</a></li>
					<li><a href="enterprise.html">企业中心</a></li>
					<li><a href="#">个人中心</a></li>
					<li><a href="#">技术支持</a></li>
					<li><a href="#">免费热线</a></li>
				</ul>
				<div class="tel">
					<div class="telphone">400-624-2001</div>
					<div class="time">周一至周日 8:00-22:00</div>
				</div>
			</div>
			<div class="footer-right">
				<span>Copyright © 2004-2016 <strong>SQYiShi.com</strong> ALL Rights Reserved 苏ICP备15048094号-2</span>
			</div>
		</footer>
	</body>
</html>
