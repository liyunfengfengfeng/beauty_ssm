<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>新闻公告</title>
	<!--新闻公告样式表-->
	<link rel="stylesheet" type="text/css" href="/resource/css/news.css"/>
	<!--其他表-->
	<link rel="stylesheet" type="text/css" href="/resource/css/home.css"/>
	<link rel="stylesheet" type="text/css" href="/resource/css/buyService.css"/>
	<link rel="stylesheet" type="text/css" href="/resource/css/registration.css"/>
	<link rel="stylesheet" type="text/css" href="/resource/css/proprietorship.css"/>
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
					<c:if test="${! empty email}"><a href="/user/loginOut">退出</a></c:if>

				</div>
			</div>
		</header>
		<!--内容-->
		<div class="news-content">
			<h3>首页-新闻公告</h3>
			<div class="newsContent">
				<div class="news">
					<div class="title">
						<h2>${news.title}</h2>
						<div class="describe">
							财税天地 2016-10-10 10:00
						</div>
					</div>
					<div class="text">
						${news.content}
					</div>
				</div>
				<div class="hotList">
					<div class="listContent">
						<h3>热门新闻</h3>
						<ul>
							<li>正在零申报的企业注意啦 ！有些违规方式要不得~~</li>
							<li>律师行业税务解决方案</li>
							<li>一文看懂美联加息影响 要小心</li>
						</ul>
					</div>
				</div>
				<div class="clear"></div>
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
