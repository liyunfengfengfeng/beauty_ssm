<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>企业信息-基本信息</title>
		<link rel="stylesheet" type="text/css" href="/resource/css/enterpriseInfo.css"/>
		<!--其他样式-->
		<link rel="stylesheet" type="text/css" href="/resource/css/proprietorship.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/buyService.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/home.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/news.css"/>
		<link rel="stylesheet" type="text/css" href="/resource/css/registration.css"/>
		<script src="/resource/script/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="/resource/script/enterpriseInfo.js" type="text/javascript" charset="utf-8"></script>
		<script src="/resource/script/function.js" type="text/javascript" charset="utf-8"></script>
	</head>
	<body class="grayBg">
		<!--首页头部-->
		<header>
			<div class="header-content">
				<div class="logo"><span class="logo-img">集群注册平台</span></div>
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
		</header>
		
		<div class="enterprise-content">
			<div class="matter ">
				<div class="navigation">
					<ul class="">
						<li class="list-info  margin-r-55" name='idInfo'><a href="#">基础信息</a></li>
						<li class="list-info" name='delivery'><a href="#">交付文件</a></li>
						<li class="mySlider"></li>
					</ul>
				</div> 
				<div class="infoCon" id="idInfo">
					<div class="subhead margin-t-20">
						<span class="head-text">工商信息</span>
						<span class="tool">
							<a href="#">变更</a>
							<a href="#">注销</a>
						</span>
					</div>
					<div class="li-info">
						<ul>
							<li>
								<span class="infoTitle">统一社会信用代码：</span>
								<span class="infoDetail">1202020202020202020</span>
							</li>
							<li>
								<span class="infoTitle">组织机构代码：</span>
								<span class="infoDetail">716105852</span>
							</li>
							<li>
								<span class="infoTitle">注册号：</span>
								<span class="infoDetail">330100400015575</span>
							</li>
							<li>
								<span class="infoTitle">经营状态：</span>
								<span class="infoDetail">存续</span>
							</li>
							<li>
								<span class="infoTitle">所属行业：</span>
								<span class="infoDetail">软件和信息技术服务业</span>
							</li>
							<li>
								<span class="infoTitle">成立日期：</span>
								<span class="infoDetail">1999年09月09日</span>
							</li>
							<li>
								<span class="infoTitle">所属行业公司类型</span>
								<span class="infoDetail">有限责任公司</span>
							</li>
							<li>
								<span class="infoTitle">营业期限：</span>
								<span class="infoDetail">1999年09月09日~2040年09月08日</span>
							</li>
							<li>
								<span class="infoTitle">注册资本：</span>
								<span class="infoDetail">59,690,000</span>
							</li>
							<li>
								<span class="infoTitle">发照日期：</span>
								<span class="infoDetail">2017年06月16日</span>
							</li>
							<li>
								<span class="infoTitle">企业地址：</span>
								<span class="infoDetail">杭州市滨江区网商路699号</span>
							</li>
							<li>
								<span class="infoTitle">登记机关：</span>
								<span class="infoDetail">杭州市高新区（滨江）市场监督管理局</span>
							</li>
							<li>
								<span class="infoTitle">经营范围：</span>
								<span class="infoDetail">开发、销售计算机网络应用软件；
									设计、制作、加工计算机网络产品并提供相关技术服务和咨询服务；服务：自有物业租赁，
								翻译，成年人的非证书咯咚职业技能培训，成年人的非文化教育培训（涉及许可证的除外）</span>
							</li>
						</ul>
					</div>
					<div class="subhead margin-t-20">
						<span class="head-text">股东信息</span>
					</div>
					<div class="tableInfo width-765">
						<table class="tableCss" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<th>股东类型</th>
								<th>股东</th>
								<th>认缴出资(金额/时间）</th>
								<th>实缴出资(金额/时间）</th>
							</tr>
							<tr>
								<td>个人独资企业</td>
								<td>张晓易</td>
								<td>10,000 万元</td>
								<td>10,000 万元</td>
							</tr>
						</table>
					</div>
					<div class="subhead margin-t-20">
						<span class="head-text">主要人员</span>
					</div>
					<div class="tableInfo padding-b-33">
						<table class="tableCss" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td class="color6">董事</td>
								<td class="color6">武**</td>
								<td class="color6">董事</td>
								<td class="color6">武**</td>
							</tr>
							<tr>
								<td class="color6">监事</td>
								<td class="color6">郑**</td>
								<td class="color6">董事长兼总经理</td>
								<td class="color6">郑**</td>
							</tr>
						</table>
					</div>
				</div>
				<div class="infoCon hide" id="delivery">
					<!--proprietorship.css中样式-->
					<div class="auditDescribe">
						<div class="describe">
							<div class="des-pic">
								<img src="img/congratulation.png"/>
							</div>
							<div class="des">
								<span>您的公司宿迁****有限公司已经办理成功，您可以在线下载电子版营业 执照我们将会把办理之后的所有文件+实物快递发送给您，请您注意查收。</span>
							</div>
						</div>
					</div>
					<div class="expressage">
						<span class="company margin-r-10">快递公司：顺丰快递</span>
						<span class="odd margin-r-10">快递单号：40017231321</span>
						<span class="">快递状态：<span class="state">快递中</span></span>
					</div>
					<div class="clear"></div>
					<div class="tableInfo width-100 margin-t-10 ">
						<table class="tableCss" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<th class="tableBg">名称</th>
								<th class="tableBg">数量</th>
								<th class="tableBg">交付方式</th>
								<th class="tableBg"></th>
							</tr>
							<tr>
								<td>三证合一营业执照正本</td>
								<td>1</td>
								<td>电子版+原件快递</td>
								<td><a href="#">下载</a></td>
							</tr>
							<tr>
								<td>三证合一营业执照正本</td>
								<td>1</td>
								<td>电子版+原件快递</td>
								<td><a href="#">下载</a></td>
							</tr>
							<tr>
								<td>公章</td>
								<td>1</td>
								<td>实物快递</td>
								<td><a href="#"></a></td>
							</tr>
							<tr>
								<td>法人章</td>
								<td>1</td>
								<td>实物快递</td>
								<td><a href="#"></a></td>
							</tr>
							<tr>
								<td>财务章</td>
								<td>1</td>
								<td>实物快递</td>
								<td><a href="#"></a></td>
							</tr>
							<tr>
								<td>发票章</td>
								<td>1</td>
								<td>实物快递</td>
								<td><a href="#"></a></td>
							</tr>
							<tr>
								<td>合同章</td>
								<td>1</td>
								<td>实物快递</td>
								<td><a href="#"></a></td>
							</tr>
							<tr>
								<td>银行开户许可证</td>
								<td>1</td>
								<td>原件快递</td>
								<td><a href="#"></a></td>
							</tr>
							<tr>
								<td>网银U盾</td>
								<td>1</td>
								<td>实物快递件</td>
								<td><a href="#"></a></td>
							</tr>
						</table>
					</div>
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
