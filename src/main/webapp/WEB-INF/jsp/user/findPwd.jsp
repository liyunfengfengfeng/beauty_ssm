<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>个人中心-找回密码</title>
		<link rel="stylesheet" type="text/css" href="/resource/css/safety.css"/>
		<!--其他样式-->
		<link rel="stylesheet" type="text/css" href="/resource/css/enterpriseInfo.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/proprietorship.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/buyService.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/home.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/news.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/registration.css"/>
		<script src="/resource/script/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="/resource/script/findPwd.js" type="text/javascript" charset="utf-8"></script>
		<script src="/resource/script/function.js" type="text/javascript" charset="utf-8"></script>
	</head>
	<body class="grayBg">
		<!--首页头部-->
		<header>
			<div class="header-content">
				<div class="logo"><span class="logo-img">益世集群注册平台</span></div>
				<div class="header-menu">
					<ul>
						<li class="active"><a href="/user/home">首页</a></li>
						<li><a href="registration.html">有限公司</a></li>
						<li><a href="registration.html">个人独资</a></li>
						<li><a href="registration.html">合伙企业</a></li>
						<li><a href="#">个人中心</a></li>
						<li><a href="enterprise.html">企业中心</a></li>
						<li><a href="/contactUs/connection">联系我们</a></li>
					</ul>
				</div>
			</div>
			<div class="mine">
				<a href="secretaryLogin.html">
					<div class="mine-img"><img src="/resource/img/login.png"/></div>
					<div class="mine-describe"><a href="javascript:void(0)">秘书公司登录</a></div>
				</a>
			</div>
		</header>
		
		<div class="safety-content">
			<div class="myHeader">
				<h1>找回密码</h1>
			</div>
			<div class="findPwd">
				<div class="contentInfo">
					<form action="/find/findPwd" id="findPwdForm" name="findPwdForm">
					<ul class="getInfo margin-t-49 margin-l-40">
						<li class="margin-b-19">
							<label class="infoName1 inputDes" for="email">登录邮箱号：</label>
							<input class="info2" type="text" name="email" id="email" value="" placeholder=""/>
						</li>
						<li class="margin-b-19">
							<label class="infoName1 inputDes" for="code">验证码：</label>
							<input class="info2" type="text" name="code" id="code" value="" placeholder=""/>
							<span class="bounceBtn" id="getCode" onclick="setTime(this)"><a class="count" href="javascript:void(0)">获取验证码</a></span>
						</li>
						<li class="margin-b-19">
							<label class="infoName1 inputDes" for="newPwd">新登录密码：</label>
							<input class="info write-n" type="text" name="password" id="newPwd" value="" placeholder=""/>
						</li>
						<li class="margin-b-19">
							<label class="infoName1 inputDes" for="pwd-a">再次输入新密码：</label>
							<input class="info write-n" type="text" name="pwd-a" id="pwd-a" value="" placeholder=""/>
						</li>
					</ul>
					<div class="btn-bounce" onclick="sure()">
						<a class="width-206" href="javascript:void(0)">确定</a>
					</div>
					</form>
				</div>
			</div>
		</div>
		
		<footer>
			<div class="footer-menu">
				<ul>
					<li><a href="#">关于我们</a></li>
					<li><a href="#">工商注册</a></li>
					<li><a href="#">企业中心</a></li>
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
