<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>材料预审</title>
		<link rel="stylesheet" type="text/css" href="/resource/css/proprietorship.css"/>
		<!--其他样式-->
		<link rel="stylesheet" type="text/css" href="/resource/css/buyService.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/home.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/news.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/registration.css"/>
		<script src="/resource/script/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="/resource/script/function.js" type="text/javascript" charset="utf-8"></script>
	</head>
	<body class="grayBg">
		<!--首页头部-->
		<header>
			<div class="header-content">
				<div><img src="/picture/getLogo" width="20px" height="20px"/>集群注册平台</div>
				<div class="header-menu">
					<ul>
						<li><a href="/user/home">首页</a></li>
						<li><a href="/limitCompany/toLimitCompany">有限公司</a></li>
						<li class="active"><a href="/individual/toIndividual">个人独资</a></li>
						<li><a href="/partnerShip/toPartnerShip">合伙企业</a></li>
						<li><a href="#">个人中心</a></li>
						<li><a href="enterprise.html">企业中心</a></li>
						<li><a href="/contactUs/connection">联系我们</a></li>
					</ul>
				</div>
			</div>
			<div class="toLogin">
				<div class="toLoginmine">
					<div class="mine-img">${email}</div>
					<c:if test="${! empty email}"><a href="/user/loginOut">退出</a></c:if>

				</div>
			</div>
		</header>
		
		<div class="proprietorship-content">
			<h3 class="tit">公司注册</h3>
			<!--页面导航-->
			<ul class="list-page">
				<li class="page-title">
					<a href="#">1.基本信息填写</a>
				</li>
				<li class="page-title">
					<a href="#">2.负责人信息填写</a>
				</li>
				<li class="page-title active">
					<a href="#">3.材料预审</a>
				</li>
				<li class="page-title">
					<a href="#">4.电子签名</a>
				</li>
				<li class="page-title">
					<a href="#">5.工商局审核</a>
				</li>
				<li class="page-title">
					<a href="#">6.营业执照交付</a>
				</li>
			</ul>
			<div class="tip-pic">
				<div class="inquiry-pic">
					<img src="/resource/img/check1.png"/>
				</div>
				<div class="inquiry-info">
					<span>您的材料已经提交预审，预计一个工作日左右审核完成， 审核通过后，请您下载APP进行电子签名。</span>
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
				<span>Copyright © 2004-2018 <strong>hrbust.com</strong> ALL Rights Reserved 黑ICP备15048094号-2</span>
			</div>
		</footer>
	</body>
</html>
