<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>首页</title>
		<script>var pageConfig = {jdfVersion:'2.0.0'};</script>
		<!--首页样式表-->
		<link rel="stylesheet" type="text/css" href="/resource/css/home.css"/>
		<!--其他样式表-->
		<link rel="stylesheet" type="text/css" href="/resource/css/news.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/registration.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/buyService.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/proprietorship.css"/>
		<script src="/resource/script/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="/resource/script/function.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript" src="http://misc.360buyimg.com/jdf/1.0.0/unit/base/1.0.0/base.js"></script>
	</head>
	<body>
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

		<div class="home-content">
			<!--轮播-->
			<div id="sliderBox" class="slider-box">
			    <div class="content">
			        <ul>
			            <li><img src="/resource/img/banner.jpg"/></li>
			            <li><img src="/resource/img/banner.jpg"/></li>
			        </ul>
			    </div>
			</div>
			<div class="homeList">
				<div class="list-content">
					<div class="homeImg">
						<img src="/resource/img/new.png"/>
						<div class="homeTit"><span></span></div>
					</div>
					<div class="list">
						<div class="title ubb">
							<span>新闻公告</span>
						</div>
						<ul>
							<li>
								<a href="/news/news1">
									<span class="list-title">律师行业税务解决方案</span>
									<span class="date">2017-11-9</span>
								</a>
							</li>
							<li>
								<a href="/news/news2">
									<span class="list-title">解读代理记账</span>
									<span class="date">2017-11-9</span>
								</a>
							</li>
							<li>
								<a href="/news/news3">
									<span class="list-title">好消息！益世商务助力2018年工信部“创客中国”人工智能创新创业大赛</span>
									<span class="date">2017-11-9</span>
								</a>
							</li>
							<li>
								<a href="/news/news4">
									<span class="list-title">益世商务“商事创新开放日”三月宿迁站顺利举办</span>
									<span class="date">2017-11-9</span>
								</a>
							</li>
							<li>
								<a href="/news/news5">
									<span class="list-title">【创新周刊】商事创新风向标（第九期）</span>
									<span class="date">2017-11-9</span>
								</a>
							</li>
							<li>
								<a href="/news/news6">
									<span class="list-title">益世商务三月巨献，超级优惠引爆全场！</span>
									<span class="date">2017-11-9</span>
								</a>
							</li>
							<li>
								<a href="/news/news7">
									<span class="list-title">公司注册的5大注意事项</span>
									<span class="date">2017-11-9</span>
								</a>
							</li>
						</ul>
					</div>
					<div class="clear"></div>
				</div>
			</div>
			<div class="flow">
				<div class="flowcontent">
					<div class="title ubb">
						<span>工商营业执照申请流程</span>
					</div>
					<div class="flowStep">
						<div class="step">
							<span class="picture"><img src="/resource/img/realName.png"/></span>
							<span class="step-tit">实名认证</span>
						</div>
						<div class="arrow"><img src="/resource/img/arrow.png"/></div>
						<div class="step">
							<span class="picture"><img src="/resource/img/secretariesCompany.png"/></span>
							<span class="step-tit two">选择秘书公司和服务</span>
						</div>
						<div class="arrow"><img src="/resource/img/arrow.png"/></div>
						<div class="step">
							<span class="picture"><img src="/resource/img/enterpriseName.png"/></span>
							<span class="step-tit two">企业名称自主申报</span>
						</div>
						<div class="arrow"><img src="/resource/img/arrow.png"/></div>
						<div class="step">
							<span class="picture"><img src="/resource/img/pay.png"/></span>
							<span class="step-tit">付款</span>
						</div>
					</div>
					<div class="flowStep mar-t-10">
						<div class="arrow-down"><img src="/resource/img/arrow.png"/></div>
						<div class="clear"></div>
					</div>
					<div class="flowStep mar-t-10">
						<div class="step">
							<span class="picture"><img src="/resource/img/signature.png"/></span>
							<span class="step-tit">用户电子签名</span>
						</div>
						<div class="arrow-left"><img src="/resource/img/arrow.png"/></div>
						<div class="step">
							<span class="picture"><img src="/resource/img/certificate.png"/></span>
							<span class="step-tit">领取数字证书</span>
						</div>
						<div class="arrow-left"><img src="/resource/img/arrow.png"/></div>
						<div class="step">
							<span class="picture"><img src="/resource/img/audit.png"/></span>
							<span class="step-tit">工商审核</span>
						</div>
						<div class="arrow-left"><img src="/resource/img/arrow.png"/></div>
						<div class="step">
							<span class="picture"><img src="/resource/img/writeInfo.png"/></span>
							<span class="step-tit two">企业设立信息填写</span>
						</div>
					</div>
					<div class="flowStep mar-t-10">
						<div class="arrow-down-left"><img src="/resource/img/arrow.png"/></div>
						<div class="clear"></div>
					</div>
					<div class="flowStep mar-t-10">
						<div class="step">
							<span class="picture"><img src="/resource/img/secretariesSign.png"/></span>
							<span class="step-tit">秘书公司附签</span>
						</div>
						<div class="arrow"><img src="/resource/img/arrow.png"/></div>
						<div class="step">
							<span class="picture"><img src="/resource/img/secretarieswork.png"/></span>
							<span class="step-tit">秘书公司办照</span>
						</div>
						<div class="arrow"><img src="/resource/img/arrow.png"/></div>
						<div class="step">
							<span class="picture"><img src="/resource/img/userGet.png"/></span>
							<span class="step-tit">用户接收证照</span>
						</div>
						<div class="arrow"><img src="/resource/img/arrow.png"/></div>
						<div class="step">
							<span class="picture"><img src="/resource/img/over.png"/></span>
							<span class="step-tit">完成</span>
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
					<li><a href="enterprise.jsp">企业中心</a></li>
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
	<script type="text/javascript">
	    seajs.use('jdf/2.0.0/ui/slider/1.0.0/slider', function(slider){
	        var sliderBox = $('#sliderBox').slider({
	            navEl:'.nav li',
	            contentEl:'.content li',
	            curCls:'current',
	            nextEl:'.next',
	            prevEl:'.prev',
	            speed:600,
	            isAutoPlay:true,
	            visible:1,
	            evt:'mouseenter',
	            isLoop:true,
	            interval:3000
	        });
	    });
	</script>
</html>
