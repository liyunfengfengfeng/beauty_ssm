<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>合伙企业-基本信息</title>
		<link rel="stylesheet" type="text/css" href="/resource/css/proprietorship.css"/>
		<!--其他样式-->
		<link rel="stylesheet" type="text/css" href="/resource/css/buyService.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/home.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/news.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/registration.css"/>
		<script src="/resource/script/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="/resource/script/partnership.js" type="text/javascript" charset="utf-8"></script>
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
						<li class="active"><a href="/partnerShip/toPartnerShip">合伙企业</a></li>
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
		
		<div class="proprietorship-content">
			<h3 class="tit">公司注册</h3>
			<!--页面导航-->
			<ul class="list-page">
				<li class="page-title">
					<a href="#">1.个人实名认证</a>
				</li>
				<li class="page-title active">
					<a href="#">2.基本信息填写</a>
				</li>
				<li class="page-title">
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
				<form action="/partnerShip/savePartnerCompany" method="post" id="partnerCompanyForm" name="partnerCompanyForm">
					<ul class="list-info">
						<li>
							<label class="info-title" for="limitCompanyType">企业类型：</label>
							<input type="" class="infoList-put read-only" name="limitCompanyType" id="limitCompanyType" value="合伙企业" />
						</li>
						<li>
							<label class="info-title" for="registerArea">注册区域：</label>
							<input type="" class="infoList-put read-only" name="registerArea" id="registerArea" value="江苏省 宿迁市 宿豫区" />
						</li>
						<li>
							<label class="info-title" for="companyName">公司名称：</label>
							<input type="" class="infoList-put needCheck noPass whrite" name="companyName" id="companyName" value="" /><span class="checkName"><a href="javascript:void(0)">去核名</a></span>
							<!--
								*点击“去核名”判断，如果核实不对则加底下代码片段，在input标签中增加类名“noPass”，如果核实正确，则加对号代码片段
							-->
							<span class="noPassImg-bounce"><img src="/resource/img/refuse.png"/>名称不可用</span>
							<span class="passImg"><img src="/resource/img/pass.png"/></span>
						</li>
						<li>
							<label class="info-title" for="registerAmount">注册资本：</label>
							<input type="text" class="infoList-put needCheck write-n" name="registerAmount" id="registerAmount" value="" placeholder="请输入注册资本"/><span class="yuan">万元（投资类合伙企业要求注册资金不低于1000万元）</span>
						</li>
						<li>
							<label class="info-title" for="limitTime">合伙期限：</label>
							<input type="text" class="infoList-put needCheck write-n" name="limitTime" id="limitTime" value="" placeholder="请输入合伙期限"/><span class="yuan">年</span>
						</li>
						<li>
							<label class="info-title" for="personNum">合伙人数：</label>
							<input type="text" class="infoList-put needCheck write-n" name="personNum" id="personNum" value="" placeholder="请输入合伙人数"/><span class="yuan">人</span>
						</li>
						<li>
							<label class="info-title" for="validityNum">有效合伙人数：</label>
							<input type="text" class="infoList-put needCheck write-n" name="validityNum" id="validityNum" value="" placeholder="请输入有效合伙人数"/><span class="yuan">人</span>
						</li>
						<li>
							<label class="info-title" for="companyBusiness">计划从事业务：</label>
							<select class="infor-put-select" id="companyBusiness" name="companyBusiness">
								<option value="0">文化交流、媒体宣传</option>
							</select>
						</li>
						<li>
							<label class="info-title float-l" for="businessScope">经营范围：</label>
							<span class="text-tip" name="businessScope" id="businessScope">提供住所服务，场所租赁，代理企业工商登记，代理企业年报申报、税务申报，代理收递各类法律文件及代理申办其他各项法律手续，商务咨询服务，互联网技术咨询服务，网站建设技术服务，会务服务及其他商务秘书服务。代理记账；会计咨询；税务咨询；经济信息咨询（依法须经批准的项目，经相关部门批准后方可开展经营活动）</span>
							<div class="clear"></div>
						</li>
					</ul>
				</form>
				<div class="btnGroup margin-t-30 margin-l-130 padding-b-20">
					<a href="#" class="">返回</a>
					<a id="partnerCompanyNext" class="">下一步</a>
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
	$('#partnerCompanyNext').bind("click", function(){
		$("#partnerCompanyForm").submit();
	});
	//异步检查公司名称是否为空
	$('#companyName').bind("blur", function(){
		var companyName = $("#companyName").val();
		$.ajax({
			type: 'POST',
			data: {"companyName":companyName} ,
			dataType: "json",
			url: '/limitCompany/checkCompanyName',
			success: function (data) {
				if(data.success){
					return;
				}else{
					alert(data.error);
					return false;
				}
			}
		});
	});
</script>