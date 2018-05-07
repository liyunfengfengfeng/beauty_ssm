<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>个人中心-修改密码</title>
		<link rel="stylesheet" type="text/css" href="css/safety.css"/>
		<!--其他样式-->
		<link rel="stylesheet" type="text/css" href="css/enterpriseInfo.css"/>
		<link rel="stylesheet" type="text/css" href="css/proprietorship.css"/>
		<link rel="stylesheet" type="text/css" href="css/buyService.css"/>
		<link rel="stylesheet" type="text/css" href="css/home.css"/>
		<link rel="stylesheet" type="text/css" href="css/news.css"/>
		<link rel="stylesheet" type="text/css" href="css/registration.css"/>
		<script src="js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/changePwd.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/function.js" type="text/javascript" charset="utf-8"></script>
	</head>
	<body class="grayBg">
		<!--首页头部-->
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
		
		<div class="safety-content">
			<div class="myHeader">
				<h1>修改密码</h1>
			</div>
			<div class="findPwd">
				<div class="contentInfo">
					<ul class="getInfo margin-t-49 margin-l-40">
						<li class="margin-b-19">
							<label class="infoName1 inputDes" for="tel">登录手机号：</label>
							<input class="showInfo" type="text" name="tel" id="tel" readonly="readonly" value="139****2345" placeholder=""/>
						</li>
						<li class="margin-b-19">
							<label class="infoName1 inputDes" for="oldPwd">原登录密码：</label>
							<input class="info write-n" type="text" name="oldPwd" id="oldPwd" value="" placeholder=""/>
						</li>
						<li class="margin-b-19">
							<label class="infoName1 inputDes" for="newPwd">新登录密码：</label>
							<input class="info write-n" type="text" name="newPwd" id="newPwd" value="" placeholder=""/>
						</li>
						<li class="margin-b-19">
							<label class="infoName1 inputDes" for="pwd-a">再次输入新密码：</label>
							<input class="info write-n" type="text" name="pwd-a" id="pwd-a" value="" placeholder=""/>
						</li>
					</ul>
					<div class="btn-bounce" onclick="sure()">
						<a class="width-206" href="javascript:void(0)">确定</a>
					</div>
					<div class="hint toCenter width-525 padding-b-20">
						<div class="hint-tit"><span>提示：</span></div>
						<div class="hint-content">
							<ul>
								<li>1、输入正确的原登录密码，原登录密码校验通过后会将密码设置成新的登录密码。</li>
								<li>2、密码由数字、大写字母、小写字母、特殊符号组成，至少包含两种字符。</li>
								<li>3、登录密码长度为6~32位。</li>
							</ul>
						</div>
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
