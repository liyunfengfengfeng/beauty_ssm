<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>有限公司-负责人信息填写</title>
		<link rel="stylesheet" type="text/css" href="/resource/css/proprietorship.css"/>
		<!--其他样式-->
		<link rel="stylesheet" type="text/css" href="/resource/css/buyService.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/home.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/news.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/registration.css"/>
		<script src="/resource/script/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="/resource/script/limitCompany_principal.js" type="text/javascript" charset="utf-8"></script>
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
						<li><a href="/limitCompany/toLimitCompany">有限公司</a></li>
						<li><a href="/individual/toIndividual">个人独资</a></li>
						<li><a href="/partnerShip/toPartnerShip">合伙企业</a></li>
						<li><a href="#">个人中心</a></li>
						<li><a href="enterprise.html">企业中心</a></li>
						<li><a href="/contactUs/connection">联系我们</a></li>
					</ul>
				</div>
			</div>
			<div class="mine">
				<a href="secretaryLogin.html">
					<div class="mine-img"><img src="/resource/img/login.png"/></div>
					<div class="mine-describe"><a href="javascript:void(0)">秘书公司登录</a></div>
				</a>
			</div>
		</header>
		
		<div class="proprietorship-content">
			<h3 class="tit">公司注册</h3>
			<!--页面导航-->
			<ul class="list-page">
				<li class="page-title">
					<a href="limitCompany.jsp">1.基本信息填写</a>
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
				<form action="/limitCompany/saveLimitCompanyEmployeeInfos" method="post" id="limitCompanyEmployeeForm">
					<input type="hidden" id="limitCompanyName" name="limitCompanyName" value="${companyName}">
					<div class="form-tit"><span>1.法人信息填写</span></div>
					<ul class="list-info">
						<li>
							<label class="info-title case" for="legalPersonName">姓名：</label>
							<input type="text" class="infoList-put needCheck write-n"  name="legalPersonName" id="legalPersonName"  value="" />
						</li>
						<li>
							<label class="info-title case" for="legalPersonCard">身份证号：</label>
							<input type="text" class="infoList-put needCheck write-n"  name="legalPersonCard" id="legalPersonCard" value="" />
						</li>
						<li>
							<label class="info-title case" for="legalPersonMobile">移动电话：</label>
							<input type="text" class="infoList-put needCheck write-n" name="legalPersonMobile" id="legalPersonMobile" value="" placeholder="请输入移动电话"/>
						</li>
						<li>
							<label class="info-title case" for="legalPersonAddress">身份证住址：</label>
							<input type="text" class="infoList-put needCheck write-n" name="legalPersonAddress" id="legalPersonAddress" value="" placeholder="请输入身份证住址"/>
						</li>
						<li>
							<label class="info-title case" for="legalPersonMail">电子邮箱：</label>
							<input type="text" class="infoList-put needCheck write-n" name="legalPersonMail" id="legalPersonMail" value="" placeholder="请输入电子邮箱"/>
						</li>
					</ul>
					<div class="form-tit"><span>2.财务负责人信息填写</span></div>
					<ul class="list-info">
						<li>
							<label class="info-title case" for="financePersonName">姓名：</label>
							<input type="text" class="infoList-put needCheck write-n" name="financePersonName" id="financePersonName" value="" placeholder="请输入姓名"/>
						</li>
						<li>
							<label class="info-title case" for="financePersonIdNum">身份证号：</label>
							<input type="text" class="infoList-put needCheck write-n" name="financePersonIdNum" id="financePersonIdNum" value="" placeholder="请输入身份证号码"/>
						</li>
						<li>
							<label class="info-title case" for="financePersonMobilePhone">移动电话：</label>
							<input type="text" class="infoList-put needCheck write-n" name="financePersonMobilePhone" id="financePersonMobilePhone" value="" placeholder="请输入电话号码"/>
						</li>
						<li>
							<label class="info-title case" for="financePersonEmail">电子邮箱：</label>
							<input type="text" class="infoList-put needCheck write-n" name="financePersonEmail" id="financePersonEmail" value="" placeholder="请输入电子邮箱"/>
						</li>
					</ul>
					<div class="form-tit"><span>3.股东及出资人信息填写</span></div>
					<div class="table-info">
						<div class="margin-l-40">
							<input checked type="radio" id="radio-1" name="radio-1-set" class="regular-radio"/>  
							<label for="radio-1"></label>  
							<label class="inputlabel margin-r-50" for="radio-1" spellcheck="true">一人（法人独资）公司</label>
						</div>
						<%--<div class="principal-button margin-t-30 mar-l-37">--%>
							<%--&lt;%&ndash;<a href="javascript:addStockholder()">增加股东</a>&ndash;%&gt;--%>
						<%--</div>--%>
						<div class="stockholder-table mar-t-10">
							<table border="0" cellspacing="0" cellpadding="0" id="1">
								<tr>
									<th>股东姓名或名称</th>
									<th>证件类型</th>
									<th>证件号码</th>
									<th>实缴出资数额（万元）</th>
									<th>认缴出资数额（万元）</th>
									<th>出资方式</th>
								</tr>
								<tr>
									<td><input type="text" class="this-input input-name" name="gdName" id="gdName" value="" /></td>
									<td>
										<select name="gdCardType" class="this-input credentials">
											<option value="0">身份证</option>
											<option value="1">营业执照</option>
										</select>
									</td>
									<td><input type="text" class="this-input number" name="gdCardNum" id="gdCardNum" value="" /></td>
									<td><input type="text" class="this-input factMoney" name="gdRealPay" id="gdRealPay" value="" /></td>
									<td><input type="text" class="this-input factMoney" name="gdConfirmPay" id="gdConfirmPay" value="" /></td>
									<td><input type="text" class="this-input fundType" name="gdPayWay" id="gdPayWay" value="" /></td>
								</tr>
							</table>
						</div>
					</div>
					<div class="form-tit"><span>4.是否设立董事会</span></div>
					<div class="table-info">
						<div class="stockholder-table mar-t-10">
							<table border="0" cellspacing="0" cellpadding="0">
								<tr>
									<th>职务</th>
									<th>姓名</th>
									<th>证件类型</th>
									<th>证件号码</th>
								</tr>
								<tr>
									<td><span class="duty">经理</span></td>
									<td><input type="text" class="this-input input-name4" name="managerName" id="managerName" value="" /></td>
									<td>
										<select name="managerCardType" class="this-input credentials4">
											<option value="0">身份证</option>
											<option value="1">营业执照</option>
										</select>
									</td>
									<td><input type="text" class="this-input number4" name="managerIdNum" id="managerIdNum" value="" /></td>
								</tr>
								<tr>
									<td><span class="duty">董事</span></td>
									<td><input type="text" class="this-input input-name4" name="dsName" id="dsName" value="" /></td>
									<td>
										<select name="dsCardType" class="this-input credentials4">
											<option value="0">身份证</option>
											<option value="1">营业执照</option>
										</select>
									</td>
									<td><input type="text" class="this-input number4" name="dsIdNum" id="dsIdNum" value="" /></td>
								</tr>
								<tr>
									<td><span class="duty">监事（不能兼任）</span></td>
									<td><input type="text" class="this-input input-name4" name="jsName" id="jsName" value="" /></td>
									<td>
										<select name="jsCardType" class="this-input credentials4">
											<option value="0">身份证</option>
											<option value="1">营业执照</option>
										</select>
									</td>
									<td><input type="text" class="this-input number4" name="jsIdNum" id="jsIdNum" value="" /></td>
								</tr>
							</table>
						</div>
					</div>
				</form>
				<div class="btnGroup margin-t-30 margin-l-130 padding-b-47">
					<a href="#" class="">返回</a>
					<a id="limitCompanyEmployeeNext" class="">下一步</a>
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
	//提交有限公司信息表单
	$('#limitCompanyEmployeeNext').bind("click", function(){
		$("#limitCompanyEmployeeForm").submit();
	});
</script>