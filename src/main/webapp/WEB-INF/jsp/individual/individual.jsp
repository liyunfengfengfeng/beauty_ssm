<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>个体工商户-基本信息</title>
		<link rel="stylesheet" type="text/css" href="/resource/css/proprietorship.css"/>
		<!--其他样式-->
		<link rel="stylesheet" type="text/css" href="/resource/css/buyService.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/home.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/news.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/registration.css"/>
		<script src="/resource/script/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="/resource/script/individual.js" type="text/javascript" charset="utf-8"></script>
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
			<%--<div class="mine">--%>
				<%--<a href="secretaryLogin.html">--%>
					<%--<div class="mine-img"><img src="img/login.png"/></div>--%>
					<%--<div class="mine-describe"><a href="javascript:void(0)">秘书公司登录</a></div>--%>
				<%--</a>--%>
			<%--</div>--%>
		</header>
		
		<div class="proprietorship-content">
			<h3 class="tit">公司注册</h3>
			<!--页面导航-->
			<ul class="list-page">
				<li class="page-title active">
					<a href="#">1.基本信息填写</a>
				</li>
				<li class="page-title">
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
					<ul class="list-info">
						<li>
							<label class="info-title" for="">企业类型：</label>
							<input type="" class="infoList-put read-only" name="" id="" value="个体工商户" />
						</li>
						<li>
							<label class="info-title" for="">注册区域：</label>
							<input type="" class="infoList-put read-only" name="" id="" value="江苏省 宿迁市 宿豫区" />
						</li>
						<li>
							<label class="info-title" for="">公司名称：</label>
							<input type="" class="infoList-put needCheck noPass whrite" name="" id="" value="京东尚科信息技术有限公司" /><span class="checkName"><a href="javascript:void(0)">去核名</a></span>
							<!--
								*点击“去核名”判断，如果核实不对则加底下代码片段，在input标签中增加类名“noPass”，如果核实正确，则加对号代码片段
							-->
							<span class="noPassImg-bounce"><img src="/resource/img/refuse.png"/>名称不可用</span>
							<span class="passImg"><img src="/resource/img/pass.png"/></span>
						</li>
						<li>
							<label class="info-title" for="capital">注册资本：</label>
							<input type="text" class="infoList-put needCheck write-n" name="capital" id="capital" value="" placeholder="请输入注册资本"/><span class="yuan">万元</span>
						</li>
						<li>
							<label class="info-title" for="">计划从事业务：</label>
							<select class="infor-put-select">
								<option value="0">文化交流、媒体宣传</option>
							</select>
						</li>
						<li>
							<label class="info-title float-l" for="">经营范围：</label>
							<span class="text-tip">提供住所服务，场所租赁，代理企业工商登记，代理企业年报申报、税务申报，代理收递各类法律文件及代理申办其他各项法律手续，商务咨询服务，互联网技术咨询服务，网站建设技术服务，会务服务及其他商务秘书服务。代理记账；会计咨询；税务咨询；经济信息咨询（依法须经批准的项目，经相关部门批准后方可开展经营活动）</span>
							<div class="clear"></div>
						</li>
					</ul>
				</form>
				<div class="btnGroup margin-t-30 margin-l-130">
					<a href="#" class="">返回</a>
					<a href="individual_principal.jsp" class="">下一步</a>
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
