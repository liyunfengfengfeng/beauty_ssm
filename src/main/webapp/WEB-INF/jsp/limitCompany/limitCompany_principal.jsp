<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>有限公司-负责人信息填写</title>
		<link rel="stylesheet" type="text/css" href="css/proprietorship.css"/>
		<!--其他样式-->
		<link rel="stylesheet" type="text/css" href="css/buyService.css"/>
		<link rel="stylesheet" type="text/css" href="css/home.css"/>
		<link rel="stylesheet" type="text/css" href="css/news.css"/>
		<link rel="stylesheet" type="text/css" href="css/registration.css"/>
		<script src="js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/limitCompany_principal.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/function.js" type="text/javascript" charset="utf-8"></script>
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
				<form action="" method="post">
					<div class="form-tit"><span>1.法人信息填写</span></div>
					<ul class="list-info">
						<li>
							<label class="info-title case" for="">姓名：</label>
							<input type="" class="infoList-put read-only" name="" id="" readonly="readonly" value="王不动" />
						</li>
						<li>
							<label class="info-title case" for="">身份证号：</label>
							<input type="" class="infoList-put read-only" name="" id="" readonly="readonly" value="1422821821****2133" />
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
					<div class="form-tit"><span>2.财务负责人信息填写</span></div>
					<ul class="list-info">
						<li>
							<label class="info-title case" for="name">姓名：</label>
							<input type="text" class="infoList-put needCheck write-n" name="name" id="name" value="" placeholder="请输入姓名"/>
						</li>
						<li>
							<label class="info-title case" for="idNum">身份证号：</label>
							<input type="text" class="infoList-put needCheck write-n" name="idNum" id="idNum" value="" placeholder="请输入身份证号码"/>
						</li>
						<li>
							<label class="info-title case" for="mobilePhone">移动电话：</label>
							<input type="text" class="infoList-put needCheck write-n" name="mobilePhone" id="mobilePhone" value="" placeholder="请输入电话号码"/>
						</li>
						<li>
							<label class="info-title case" for="email">电子邮箱：</label>
							<input type="text" class="infoList-put needCheck write-n" name="email" id="email" value="" placeholder="请输入电子邮箱"/>
						</li>
					</ul>
					<div class="form-tit"><span>3.股东及出资人信息填写</span></div>
					<div class="table-info">
						<div class="margin-l-40">
							<input checked type="radio" id="radio-1" name="radio-1-set" class="regular-radio"/>  
							<label for="radio-1"></label>  
							<label class="inputlabel margin-r-50" for="radio-1">一人（法人独资）公司</label> 
							
							<input  type="radio" id="radio-2" name="radio-1-set" class="regular-radio"/>  
							<label for="radio-2"></label>  
							<label class="inputlabel" for="radio-2">2个及以上股东公司</label>  
						</div>
						<div class="principal-button margin-t-30 mar-l-37">
							<a href="javascript:addStockholder()">增加股东</a>
						</div>
						<div class="stockholder-table mar-t-10">
							<table border="0" cellspacing="0" cellpadding="0" id="1">
								<tr>
									<th>股东姓名或名称</th>
									<th>证件类型</th>
									<th>证件号码</th>
									<th>实缴出资数额（万元）</th>
									<th>出资时间</th>
									<th>认缴出资数额（万元）</th>
									<th>认缴出资时间</th>
									<th>出资方式</th>
								</tr>
								<tr>
									<td>
										张三
									</td>
									<td>身份证</td>
									<td>123412346618944816</td>
									<td>500</td>
									<td>2017-10-10</td>
									<td>100</td>
									<td>2017-10-10</td>
									<td>实物出资</td>
								</tr>
								<tr>
									<td>**投资管理公司</td>
									<td>营业执照</td>
									<td>123412346618944816</td>
									<td>500</td>
									<td>2017-10-10</td>
									<td>100</td>
									<td>2017-10-10</td>
									<td>实物出资</td>
								</tr>
								<tr>
									<td><input type="text" class="this-input input-name" name="" id="" value="" /></td>
									<td>
										<select name="" class="this-input credentials">
											<option value="0">身份证</option>
											<option value="1">营业执照</option>
										</select>
									</td>
									<td><input type="text" class="this-input number" name="" id="" value="" /></td>
									<td><input type="text" class="this-input factMoney" name="" id="" value="" /></td>
									<td><input type="text" class="this-input fundDate" name="" id="" value="" /></td>
									<td><input type="text" class="this-input factMoney" name="" id="" value="" /></td>
									<td><input type="text" class="this-input fundDate" name="" id="" value="" /></td>
									<td><input type="text" class="this-input fundType" name="" id="" value="" /></td>
								</tr>
							</table>
						</div>
					</div>
					<div class="form-tit"><span>4.是否设立董事会</span></div>
					<div class="table-info">
						<div class="margin-l-40">
							<input checked type="radio" id="yes" name="director" class="regular-radio"/>  
							<label for="yes"></label>  
							<label class="inputlabel margin-r-50" for="yes">是</label> 
							
							<input  type="radio" id="no" name="director" class="regular-radio"/>  
							<label for="no"></label>  
							<label class="inputlabel" for="no">否</label>  
						</div>
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
									<td><input type="text" class="this-input input-name4" name="" id="" value="" /></td>
									<td>
										<select name="" class="this-input credentials4">
											<option value="0">身份证</option>
											<option value="1">营业执照</option>
										</select>
									</td>
									<td><input type="text" class="this-input number4" name="" id="" value="" /></td>
								</tr>
								<tr>
									<td><span class="duty">董事</span></td>
									<td><input type="text" class="this-input input-name4" name="" id="" value="" /></td>
									<td>
										<select name="" class="this-input credentials4">
											<option value="0">身份证</option>
											<option value="1">营业执照</option>
										</select>
									</td>
									<td><input type="text" class="this-input number4" name="" id="" value="" /></td>
								</tr>
								<tr>
									<td><span class="duty">监事（不能兼任）</span></td>
									<td><input type="text" class="this-input input-name4" name="" id="" value="" /></td>
									<td>
										<select name="" class="this-input credentials4">
											<option value="0">身份证</option>
											<option value="1">营业执照</option>
										</select>
									</td>
									<td><input type="text" class="this-input number4" name="" id="" value="" /></td>
								</tr>
							</table>
						</div>
					</div>
				</form>
				<div class="btnGroup margin-t-30 margin-l-130 padding-b-47">
					<a href="#" class="">返回</a>
					<a href="inquiry.html" class="">下一步</a>
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
