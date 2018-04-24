<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>个体工商户-负责人信息填写</title>
		<link rel="stylesheet" type="text/css" href="/resource/css/proprietorship.css"/>
		<!--其他样式-->
		<link rel="stylesheet" type="text/css" href="/resource/css/buyService.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/home.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/news.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/registration.css"/>
		<script src="/resource/script/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="/resource/script/partnership_principal.js" type="text/javascript" charset="utf-8"></script>
		<script src="/resource/script/function.js" type="text/javascript" charset="utf-8"></script>
	</head>
	<body class="grayBg">
		<!--首页头部-->
		<header>
			<div class="header-content">
				<div class="logo"><span class="logo-img">京东益世集群注册平台</span></div>
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
					<div class="mine-img"><img src="img/login.png"/></div>
					<div class="mine-describe"><a href="javascript:void(0)">秘书公司登录</a></div>
				</a>
			</div>
		</header>
		
		<div class="proprietorship-content">
			<h3 class="tit">公司注册</h3>
			<!--页面导航-->
			<ul class="list-page">
				<li class="page-title">
					<a href="individual.jsp">1.基本信息填写</a>
				</li>
				<li class="page-title active">
					<a href="#">2.负责人信息填写</a>
				</li>
				<li class="page-title">
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
			<div class="info-content">
				<form action="" method="post">
					<div class="form-tit"><span>法人信息填写</span></div>
					<ul class="list-info">
						<li>
							<label class="info-title case" for="">姓名：</label>
							<input type="" class="infoList-put write-n" name="" id="" value="王不动" />
						</li>
						<li>
							<label class="info-title case" for="">身份证号：</label>
							<input type="" class="infoList-put write-n" name="" id="" value="1422821821****2133" />
						</li>
						<li>
							<label class="info-title case" for="mobile">移动电话：</label>
							<input type="text" class="infoList-put needCheck write-n" name="mobile" id="mobile" value="18238948223" placeholder="请输入移动电话"/>
						</li>
						<li>
							<label class="info-title case" for="idAddress">身份证住址：</label>
							<input type="text" class="infoList-put needCheck write-n" name="idAddress" id="idAddress" value="" placeholder="请输入身份证住址"/>
						</li>
						<li>
							<label class="info-title case" for="mail">电子邮箱：</label>
							<input type="text" class="infoList-put needCheck write-n" name="mail" id="mail" value="" placeholder="请输入电子邮箱"/>
						</li>
					</ul>
					</div>
				</form>
				<div class="btnGroup margin-t-30 margin-l-270 padding-b-47">
					<a href="#" class="">返回</a>
					<a href="inquiry.jsp" class="">下一步</a>
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
