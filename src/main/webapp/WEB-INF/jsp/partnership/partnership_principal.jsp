<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>合伙企业-负责人信息填写</title>
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
		
		<div class="proprietorship-content">
			<h3 class="tit">公司注册</h3>
			<!--页面导航-->
			<ul class="list-page">
				<li class="page-title ">
					<a href="#">1.个人实名认证</a>
				</li>
				<li class="page-title ">
					<a href="partnership.jsp">2.基本信息填写</a>
				</li>
				<li class="page-title active">
					<a href="#">3.负责人信息填写</a>
				</li>
				<li class="page-title">
					<a href="#">4.纸质材料审核</a>
				</li>
				<li class="page-title">
					<a href="#">5.工商局终审</a>
				</li>
				<li class="page-title">
					<a href="#">6.营业执照交付</a>
				</li>
			</ul>
			<div class="info-content">
				<form action="/partnerShip/savePartnerCompanyEmployeeInfos" method="post" id="partnerCompanyEmployeeForm" name="partnerCompanyEmployeeForm">
					<div class="form-tit"><span>1.执行事务合伙人信息填写</span></div>
					<input type="hidden" name="companyName" id="companyName" value="${companyName}"/>
					<ul class="list-info">
						<li>
							<label class="info-title case" for="transactionName">姓名：</label>
							<input type="" class="infoList-put write-n" name="transactionName" id="transactionName" value="" />
						</li>
						<li>
							<label class="info-title case" for="transactionIdNum">身份证号：</label>
							<input type="" class="infoList-put write-n" name="transactionIdNum" id="transactionIdNum" value="" />
						</li>
						<li>
							<label class="info-title case" for="transactionMobile">移动电话：</label>
							<input type="text" class="infoList-put needCheck write-n" name="transactionMobile" id="transactionMobile" value="18238948223" placeholder="请输入移动电话"/>
						</li>
						<li>
							<label class="info-title case" for="transactionIdAddress">身份证住址：</label>
							<input type="text" class="infoList-put needCheck write-n" name="transactionIdAddress" id="transactionIdAddress" value="" placeholder="请输入身份证住址"/>
						</li>
						<li>
							<label class="info-title case" for="transactionMail">电子邮箱：</label>
							<input type="text" class="infoList-put needCheck write-n" name="transactionMail" id="transactionMail" value="" placeholder="请输入电子邮箱"/>
						</li>
					</ul>
					<div class="form-tit"><span>2.委派代表人信息填写</span></div>
					<ul class="list-info">
						<li>
							<label class="info-title case" for="representName">姓名：</label>
							<input type="text" class="infoList-put needCheck write-n" name="representName" id="representName" value="" placeholder="请输入姓名"/>
						</li>
						<li>
							<label class="info-title case" for="representIdNum">身份证号：</label>
							<input type="text" class="infoList-put needCheck write-n" name="representIdNum" id="representIdNum" value="" placeholder="请输入身份证号码"/>
						</li>
						<li>
							<label class="info-title case" for="representMobilePhone">电话：</label>
							<input type="text" class="infoList-put needCheck write-n" name="representMobilePhone" id="representMobilePhone" value="" placeholder="请输入电话号码"/>
						</li>
						<li>
							<label class="info-title case" for="representIdAddress">身份证住址：</label>
							<input type="text" class="infoList-put needCheck write-n" name="representIdAddress" id="representIdAddress" value="" placeholder="请输入身份证住址"/>
						</li>
						<li>
							<label class="info-title case" for="representEmail">电子邮箱：</label>
							<input type="text" class="infoList-put needCheck write-n" name="representEmail" id="representEmail" value="" placeholder="请输入电子邮箱"/>
						</li>
					</ul>
					
					<div class="form-tit"><span>3.财务负责人信息填写</span></div>
					<ul class="list-info">
						<li>
							<label class="info-title case" for="financeName">姓名：</label>
							<input type="text" class="infoList-put needCheck write-n" name="financeName" id="financeName" value="" placeholder="请输入姓名"/>
						</li>
						<li>
							<label class="info-title case" for="financeIdNum">身份证号：</label>
							<input type="text" class="infoList-put needCheck write-n" name="financeIdNum" id="financeIdNum" value="" placeholder="请输入身份证号码"/>
						</li>
						<li>
							<label class="info-title case" for="financeMobilePhone">电话：</label>
							<input type="text" class="infoList-put needCheck write-n" name="financeMobilePhone" id="financeMobilePhone" value="" placeholder="请输入电话号码"/>
						</li>
						<li>
							<label class="info-title case" for="financeIdAddress">身份证住址：</label>
							<input type="text" class="infoList-put needCheck write-n" name="financeIdAddress" id="financeIdAddress" value="" placeholder="请输入身份证住址"/>
						</li>
						<li>
							<label class="info-title case" for="financeEmail">电子邮箱：</label>
							<input type="text" class="infoList-put needCheck write-n" name="financeEmail" id="financeEmail" value="" placeholder="请输入电子邮箱"/>
						</li>
					</ul>
				</form>
				<div class="btnGroup margin-t-30 margin-l-130 padding-b-47">
					<a href="#" class="">返回</a>
					<a id="partnerCompanyEmployeeNext" class="">下一步</a>
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
<script>
	//提交合伙企业公司信息表单
	$('#partnerCompanyEmployeeNext').bind("click", function(){
		$("#partnerCompanyEmployeeForm").submit();
	});
</script>
