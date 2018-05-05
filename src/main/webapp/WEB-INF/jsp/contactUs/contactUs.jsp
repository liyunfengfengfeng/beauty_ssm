<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>联系我们</title>
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
		<script src="/resource/script/function.js" type="text/javascript" charset="utf-8"></script>
	</head>
	<body>
		<header>
			<div class="header-content">
				<div><img src="/picture/getLogo" width="20px" height="20px"/>集群注册平台</div>
				<div class="header-menu">
					<ul>
						<li><a href="/user/home">首页</a></li>
						<li><a href="/limitCompany/toLimitCompany">有限公司</a></li>
						<li><a href="/individual/toIndividual">个人独资</a></li>
						<li><a href="/partnerShip/toPartnerShip">合伙企业</a></li>
						<li><a href="/personalCenter/toPersonalCenter">个人中心</a></li>
						<li><a href="/enterpriseCenter/toEnterpriseCenter">企业中心</a></li>
						<li class="active"><a href="/contactUs/connection">联系我们</a></li>
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
			<img class="bgImg" src="/resource/img/contact.png"/>
			<div class="contact-content">
				<ul>
					<li class="">
						<div class="head">
							<span>在线客服</span>
						</div>
						<div class="content">
							<div class="pic qq">
							</div>
							
							<div class="detail">
								<div>企业QQ：518821790</div>
							</div>
						</div>
					</li>
					<li>
						<div class="head">
							<span>邮箱</span>
						</div>
						<div class="content">
							<div class="pic mail">
							</div>
							<div class="detail">
								<div>2222@sqyishi.com</div>
							</div>
						</div>
					</li>
					<li>
						<div class="head">
							<span>客服电话</span>
						</div>
						<div class="content">
							<div class="pic tel">
							</div>
							<div class="detail">
								<div>400-624-2001</div>
								<div class="small">周一到周五：8:30-17:30</div>
							</div>
						</div>
					</li>
					<li>
						<div class="head">
							<span>渠道合作</span>
						</div>
						<div class="content">
							<div class="pic hezuo">
							</div>
							<div class="detail">
								<div>王经理</div>
								<div  class="small">Marketing@hrbust.com</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
		
		<footer>
			<div class="footer-menu">
				<ul>
					<li><a href="contactUs.jsp">关于我们</a></li>
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
				<span>Copyright © 2004-2018 <strong>hrbust.com</strong> ALL Rights Reserved 黑ICP备15048094号-2</span>
			</div>
		</footer>
	</body>
</html>
