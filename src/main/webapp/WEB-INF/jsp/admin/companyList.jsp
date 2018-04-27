<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>公司列表</title>
    <link href="/resource/css/style.css" rel="stylesheet" type="text/css"/>
    <%--<link href="/resource/js/3rd/select/select.css" rel="stylesheet" type="text/css"/>--%>
    <script type="text/javascript" src="/resource/js/kkpaper/kkpager.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/resource/css/kkpaper/kkpager_blue.css" />
    <%--<script type="text/javascript" src="/resource/js/jquery/jquery.1.11.2.min.js"></script>--%>
    <%--<script type="text/javascript" src="/resource/js/3rd/select/select-ui.min.js"></script>--%>
    <script src="/resource/js/jquery/jquery-2.1.1.min.js"></script>
    <script src="/resource/js/bootstrap/bootstrap.min.js"></script>
</head>

<body>


<div class="rightinfo">
    <form action="/adminCompanyManager/list" method="post" id="queryForm">
    <ul class="seachform">
        <li>
           公司名称
            <input name="companyName" id="companyName" type="text" class="scinput"/>
        </li>
        <li>
            公司类型
            <div>
                <select name="companyType" id="companyType">
                    <option value="0">全部</option>
                    <option value="1">有限公司</option>
                    <option value="2">个人独资公司</option>
                    <option value="3">合伙企业公司</option>
                </select>
            </div>
        </li>
        <li>
            <label>&nbsp;</label>
            <input name="adminQueryButton" type="submit" id="adminQueryButton" class="scbtn" value="查询"/>
        </li>
    </ul>
    </form>


    <table class="tablelist">
        <thead>
            <tr>
                <th><input name="" type="checkbox" value="" checked="checked"/></th>
                <th>编号<i class="sort"><img src="/resource/images/px.png"/></i></th>
                <th>公司名称</th>
                <th>企业类型</th>
                <th>注册资金</th>
                <th>操作</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach items="${companyList}" var="company">
            <tr>
                <td><input name="" type="checkbox" value=""/></td>
                <td>${company.id}</td>
                <td>${company.companyName}</td>
                <td>
                    <c:if test="${company.companyType == 1}">有限公司</c:if>
                    <c:if test="${company.companyType == 2}">个人独资</c:if>
                    <c:if test="${company.companyType == 3}">合伙企业</c:if>
                </td>
                <td>${company.registerAmount}</td>
                <td><a href="/adminCompanyManager/seeCompany?companyId=${company.id}" class="tablelink">查看</a><a href="/adminUser/auditCompany?companyId=${company.id}" class="tablelink">审核</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <div style="text-align: center;margin:auto">
        <div id="kkpager"></div>
    </div>
</div>
</body>
</html>
<script type="text/javascript">
    //init
    $(function(){
        var totalPage = ${page.getTotalPage()};
        var totalRecords = ${page.getTotalRecord()};
        var pageNo = ${page.getPageNo()};
        if(!pageNo){
            pageNo = 1;
        }
        //生成分页
        //有些参数是可选的，比如lang，若不传有默认值
        kkpager.generPageHtml({
            pno : pageNo,
            //总页码
            total : totalPage,
            //总数据条数
            totalRecords : totalRecords,
            //链接前部
            hrefFormer : '/adminUser/list',
            isGoPage : false,
            isShowTotalPage : false,
            isShowTotalRecords : false,
            getLink : function(n){
                return this.hrefFormer + "?pno="+n;
            }
        });
    });
</script>