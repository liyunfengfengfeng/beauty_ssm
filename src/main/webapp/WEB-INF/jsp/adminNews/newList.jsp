<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>新闻列表</title>
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
    <table class="tablelist">
        <thead>
            <tr>
                <th><input name="" type="checkbox" value="" checked="checked"/></th>
                <th>编号<i class="sort"><img src="/resource/images/px.png"/></i></th>
                <th>新闻标题</th>
                <th>创建人</th>
                <th>修改人</th>
                <th>创建时间</th>
                <th>更新时间</th>
                <th>操作</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach items="${newsList}" var="news">
            <tr>
                <td><input name="" type="checkbox" value=""/></td>
                <td>${news.id}</td>
                <td>${news.title}</td>
                <td>${news.createUser}</td>
                <td>${news.updateUser}</td>
                <td>${news.createTime}</td>
                <td>${news.updateTime}</td>
                <td><a href="/news/seeNews?newsId=${news.id}" class="tablelink">查看</a><a href="/news/editNews?newId=${news.id}" class="tablelink">编辑</a></td>
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