<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>企业中心</title>
		<link rel="stylesheet" type="text/css" href="/resource/css/registration.css"/>
		<!--其他样式列表-->
		<link rel="stylesheet" type="text/css" href="/resource/css/home.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/news.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/proprietorship.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/buyService.css"/>
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
						<li><a href="/individual/toIndividual">个人独资</a></li>
						<li><a href="/partnerShip/toPartnerShip">合伙企业</a></li>
						<li><a href="/personalCenter/toPersonalCenter">个人中心</a></li>
						<li class="active"><a href="/enterpriseCenter/toEnterpriseCenter">企业中心</a></li>
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
		
		<div class="registration-content">
			<h3 class="tit tit-l">企业中心</h3>
			<div class="projectList">
				<ul>
<c:forEach var="registerCompany" items="${registerCompanyList}">
					<li>
						<a href="#">
							<div class="list">
								<div class="title">
									<div class="describe">
										<span class="project">${registerCompany.companyName}</span>
										<span class="type">
											<c:if test="${registerCompany.companyType == 1}">有限公司</c:if>
                							<c:if test="${registerCompany.companyType == 2}">个人独资</c:if>
                							<c:if test="${registerCompany.companyType == 3}">合伙企业</c:if>
										</span>
									</div>
									<span class="right-btn registration">注册中</span>
								</div>
								<div class="info">
									<span class="legal-per">法人：李云峰</span>
									<span class="money">注册资金：${registerCompany.registerAmount}万人民币</span>
									<span class="addr" title="注册地址：京东大厦总部">注册地址：江苏省-宿迁市-宿豫区</span>
								</div>
							</div>
						</a>
					</li>
	</c:forEach>
				</ul>
				<div class="btn margin-t-30">
					<a href="#" class="toCenter">注册新公司</a>
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
