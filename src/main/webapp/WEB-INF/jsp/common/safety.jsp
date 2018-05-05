<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>个人中心-未认证</title>
		<link rel="stylesheet" type="text/css" href="/resource/css/safety.css"/>
		<!--其他样式-->
		<link rel="stylesheet" type="text/css" href="/resource/css/enterpriseInfo.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/proprietorship.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/buyService.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/home.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/news.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/registration.css"/>
		<script src="/resource/script/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="/resource/script/safety.js" type="text/javascript" charset="utf-8"></script>
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
						<li class="active"><a href="/personalCenter/toPersonalCenter">个人中心</a></li>
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
				<h1>安全中心</h1>
			</div>
			<div class="selfInfo">
				<div class="subHead">
					<h3>实名认证信息</h3>
					<span class="tit-desctibe">实名认证有助于账户安全</span>
					<!--
						*说明：
						* 认证通过时，将 “未认证” 修改为 “已认证” ；
						* 将 “gray” class   改为 “green-state” ；
					-->
					<span class="self-state gray">未认证</span>
					<div class="btngroup">
						<a href="realName.html" class="btn">实名认证</a>
					</div>
				</div>
				<div class="contentInfo margin-t-20 padding-b-30 border-dot">
					<ul class="getInfo">
						<!--
							*说明：
							* 认证通过时，将 信息通过$("#id").val(value)方式存入input的value中
						-->
						<li class="margin-b-19">
							<label class="infoName" for="name">姓名：</label>
							<input class="infoShow" type="text" name="name" id="name" value="" placeholder=""/>
						</li>
						<li class="margin-b-19">
							<label class="infoName" for="telphone">证件类型：</label>
							<input class="infoShow" type="text" name="telphone" id="telphone" value="" placeholder=""/>
						</li>
						<li class="margin-b-19">
							<label class="infoName">证件号码：</label>
							<input class="infoShow" type="text" name="telphone" id="telphone" value="" placeholder=""/>
						</li>
						<li>
							<label class="infoName" for="addrdetail">CA证书：</label>
							<!--
								*说明：
								* 认证通过时
								* “已领取证书”增加“hide”class；
								* input去掉“hide”
							-->
							<span class="self-state green-state ">已领取证书</span>
							<input class="infoShow" type="text" name="telphone" id="telphone" value="" placeholder=""/>
						</li>
					</ul>
				</div>
				<div class="subHead border-dot margin-t-30 padding-b-30">
					<h3>登录手机号</h3>
					<span class="tit-desctibe">该手机号已绑定139****1234可用于登录</span>
				</div>
				<div class="subHead border-dot margin-t-30 padding-b-30">
					<h3>登录密码</h3>
					<span class="tit-desctibe">可以使用登录密码登录</span>
					<span class="self-state green-state">保护中</span>
					<div class="btngroup">
						<a href="changePwd.html" class="btn margin-r-15">修改</a>
						<a href="findPwd.html" class="btn">找回密码</a>
					</div>
				</div>
				<div class="subHead border-dot margin-t-30 padding-b-30">
					<h3>收货地址</h3>
					<div class="btngroup">
						<a href="javascript:addReceive()" class="btn">新增收货地址</a>
					</div>
				</div>
				<table class="table-bg-style margin-t-49" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<th>收件人</th>
						<th>联系电话</th>
						<th>所在地区</th>
						<th>收件地址</th>
						<th>操作</th>
					</tr>
					<tr>
						<td class="font14">张三</td>
						<td class="font14">13217280181</td>
						<td class="font14">北京市 昌平区</td>
						<td class="font14">回龙观大街11号</td>
						<td class="font14">
							<a class="margin-r-10" href="javascript:addReceive()">修改</a>
							<a href="javascript:del()">删除</a>
						</td>
					</tr>
				</table>
			</div>
		</div>
		
		<!--收件信息-->
		<div class="bounces hide" id="receiverInfo">
			<div class="bounces-content safety">
				<div class="bounces-header">
					<span class="tit">收件信息</span>
					<span class="close" onclick="closeBounce()">×</span>
				</div>
				<div class="bounce-describe invoice-content">
					<div class="particulars">
						<div class="theme-safety margin-t-30">收件信息</div>
						<ul>
							<li class="margin-b-20">
								<label for="receiver" class="list-label case">收件人：</label>
								<input type="text" class="listInput noPass width-463" name="receiver" id="receiver" value="" placeholder="请填写收件人"/>
								<span class="noPassImg-bounce"><img src="img/refuse.png"/></span>
							</li>
							<li class="margin-b-20">
								<label for="tel" class="list-label case">联系电话：</label>
								<input type="text" class="listInput width-463" name="tel" id="tel" value="" placeholder="请填写联系电话"/>
								<span class="passImg"><img src="img/pass.png"/></span>
							</li>
							<li class="margin-b-20">
								<label for="tel" class="list-label case">所在地区：</label>
								<select name="" class="inforSelect margin-r-34 margin-l-10">
									<option value="0">请选择</option>
									<option value="1">江苏省</option>
								</select>
								<select name="" class="inforSelect margin-r-34">
									<option value="0">请选择</option>
									<option value="1">宿迁市</option>
								</select>
								<select name="" class="inforSelect">
									<option value="0">请选择</option>
									<option value="1">宿豫区</option>
								</select>
							</li>
							<li class="margin-b-20">
								<label for="minuteAddr" class="list-label">详细地址：</label>
								<input type="text" class="listInput width-463" name="minuteAddr" id="minuteAddr" value="" placeholder="请填写详细地址"/>
							</li>
						</ul>
					</div>
					<div class="btn-bounce">
						<a class="width-206" href="javascript:closeBounce()">确定</a>
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
				<span>Copyright © 2004-2016 <strong>SQYiShi.com</strong> ALL Rights Reserved 苏ICP备15048094号-2</span>
			</div>
		</footer>
	</body>
</html>
