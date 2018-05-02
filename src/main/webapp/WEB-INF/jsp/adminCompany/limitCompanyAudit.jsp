<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>审核有限公司</title>
    <link href="/resource/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="/resource/js/3rd/select/select.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="/resource/js/jquery/jquery.1.11.2.min.js"></script>
    <script type="text/javascript" src="/resource/js/3rd/select/select-ui.min.js"></script>
</head>

<body>

<div class="formbody">


    <%--公司的基本信息--%>
    <div class="formtitle"><span>有限公司信息</span></div>
    <form action="/adminUser/list" method="post">
        <ul class="forminfo short">
            <li>
                <label>公司名称<b>*</b></label>
                ${registerCompany.companyName}
            </li>
            <li>
                <label>公司注册资金<b>*</b></label>
                ${registerCompany.registerAmount}
            </li>
            <li>
                <label>公司类型<b>*</b></label>
                <c:if test="${registerCompany.companyType == 1}">有限公司</c:if>
                <c:if test="${registerCompany.companyType == 2}">个人独资</c:if>
                <c:if test="${registerCompany.companyType == 3}">合伙企业</c:if>
            </li>
            <li>
                <label>注册区域<b>*</b></label>
                黑龙江省-哈尔滨市-香坊区
            </li>
            <li>
                <label>计划从事业务<b>*</b></label>
                文化交流，媒体宣传
            </li>
            <li>
                <label>经营范围<b>*</b></label>
                提供住所服务，场所租赁，代理企业工商登记，代理企业年报申报、税务申报，代理收递各类法律文件及代理申办其他各项法律手续，商务咨询服务，互联网技术咨询服务，网站建设技术服务，会务服务及其他商务秘书服务。代理记账；会计咨询；税务咨询；经济信息咨询（依法须经批准的项目，经相关部门批准后方可开展经营活动）
            </li>
            <li>
                <label>创建时间<b>*</b></label>
                2018/05/01
            </li>
            <li>
                <label>更新时间<b>*</b></label>
                2018/05/09
            </li>
        </ul>
    </form>

    <form action="/adminUser/list" method="post">
        <ul class="forminfo short">
    <c:forEach var="limitCompanyEmployee" items="${limitCompanyEmployees}">
            <li>
                <label>员工名称<b>*</b></label>
                    ${limitCompanyEmployee.name}
            </li>
            <li>
                <label>身份证号码<b>*</b></label>
                    ${limitCompanyEmployee.identityId}
            </li>
            <li>
                <label>住址<b>*</b></label>
                    ${limitCompanyEmployee.address}
            </li>
            <li>
                <label>实缴金额<b>*</b></label>
                    ${limitCompanyEmployee.realPay}
            </li>
            <li>
                <label>认缴金额<b>*</b></label>
                    ${limitCompanyEmployee.confirmPay}
            </li>
    </c:forEach>
            <li style="width: 100%">
                <label>&nbsp;</label>
                <input name="" type="button" class="btn" onClick="doBack();" value="通过"/>
                <label>&nbsp;</label>
                <input name="" type="button" class="btn" onClick="doBack();" value="驳回"/>
                <label>&nbsp;</label>
                <input name="" type="button" class="btn" onClick="doBack();" value="返回"/>
            </li>
        </ul>
    </form>
</div>

<script type="text/javascript">
    $(function(){
        //下拉框的样式设置
        $(".select1").uedSelect({
            width: 100
        });
    });

    //返回上一层
    function doBack() {
        window.location.href="/adminCompanyManager/toCompanyManager";
    }
</script>

</body>
</html>
