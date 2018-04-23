<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>无标题文档</title>
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
    <form action="/adminUser/list" method="post" id="queryForm">
    <ul class="seachform">
        <li>
            <label>姓名</label>
            <input name="name" type="text" class="scinput"/>
        </li>
        <li>
            <label>邮箱</label>
            <input name="email" type="text" class="scinput"/>
        </li>
        <li>
            <label>&nbsp;</label>
            <input name="adminQueryButton" type="submit" id="adminQueryButton" class="scbtn" value="查询"/>
        </li>
        <li>
            <label>&nbsp;</label>
            <input name="adminAddButton" type="button" id="adminAddButton" class="scbtn" value="新增"/>
        </li>
    </ul>
    </form>


    <table class="tablelist">
        <thead>
            <tr>
                <th><input name="" type="checkbox" value="" checked="checked"/></th>
                <th>编号<i class="sort"><img src="/resource/images/px.png"/></i></th>
                <th>姓名</th>
                <th>邮箱</th>
                <th>操作</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach items="${userList}" var="user">
            <tr>
                <td><input name="" type="checkbox" value=""/></td>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.email}</td>
                <td><a href="#" class="tablelink">查看</a> <a href="/adminUser/deleteUser?userId=${user.id}" class="tablelink"> 删除</a></td>
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

    $('#adminAddButton').bind("click", function(){
        window.location.href = "/adminUser/toAddUser";
    });
</script>