<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>用户登录</title>
		<!--其他样式-->
		<link rel="stylesheet" type="text/css" href="/resource/css/safety.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/enterpriseInfo.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/proprietorship.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/buyService.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/home.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/news.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/registration.css"/>
		<!--自己的-->
		<link rel="stylesheet" type="text/css" href="/resource/css/contactUs.css"/>
		<script src="/resource/script/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="/resource/script/secretaryLogin.js" type="text/javascript" charset="utf-8"></script>
		<script src="/resource/script/function.js" type="text/javascript" charset="utf-8"></script>
	</head>
	<body>
		<header>
			<div class="header-content">
				<div><img src="/picture/getLogo" width="20px" height="20px"/>集群注册平台</div>
				<div class="header-menu">
					<ul>
						<li class="active"><a href="/user/home">首页</a></li>
						<li><a href="/limitCompany/toLimitCompany">有限公司</a></li>
						<li><a href="/individual/toIndividual">个人独资</a></li>
						<li><a href="/partnerShip/toPartnerShip">合伙企业</a></li>
						<li><a href="/personalCenter/toPersonalCenter">个人中心</a></li>
						<li><a href="/enterpriseCenter/toEnterpriseCenter">企业中心</a></li>
						<li><a href="/contactUs/connection">联系我们</a></li>
					</ul>
				</div>
			</div>
			<div class="toLogin">
				<div class="toLoginmine">
					<div class="mine-img">${email}</div>
				</div>
			</div>
		</header>
		
		<div class="contactBg">
			<img class="bgImg" src="/resource/img/userLogin.png"/>
			<div class="logincontent userHeight">
				<div class="header">
					<h3>用户登录</h3>
				</div>
				<form id="userLogin" action="" method="post">
					<div class="detail">
						<ul>
							<li>
								<input class="input telNum" type="text" name="email" id="" value="" placeholder="请输入用户名"/>
							</li>
							<li>
								<input class="input pwd" type="password" name="password" id="pwd" value="" placeholder="请输入密码"/>
							</li>
						</ul>
						<div class="forgatPwd">
							<a href="/user/userRegister">新用户注册</a>
							<a href="/find/toFindPwd">忘记密码</a>
						</div>
						<div id="loginBtn" class="myBtn mar-t-30" style="">
							<a>立即登录</a>
						</div>
					</div>
				</form>
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
<script>
	//用户登录异步提交表单
	$('#loginBtn').bind("click", function(){
		$.ajax({
			type: 'POST',
			data: $('#userLogin').serialize(),
			dataType: "json",
			url: '/user/userLogin',
			success: function (data) {
				if(data.success){
					window.location.href = "/user/home";
				}else{
					alert(data.error);
				}
			}
		});
	});
</script>
</html>
