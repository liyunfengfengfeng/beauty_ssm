<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>无标题文档</title>
    <link href="/resource/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="/resource/js/3rd/select/select.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="/resource/js/jquery/jquery.1.11.2.min.js"></script>
    <script type="text/javascript" src="/resource/js/3rd/select/select-ui.min.js"></script>
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
                <td><a href="#" class="tablelink">查看</a> <a href="#" class="tablelink"> 删除</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <div class="pagin">
        <div class="message">共<i class="blue">1256</i>条记录，当前显示第&nbsp;<i class="blue">2&nbsp;</i>页</div>
        <ul class="paginList">
            <li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li>
            <li class="paginItem"><a href="javascript:;">1</a></li>
            <li class="paginItem current"><a href="javascript:;">2</a></li>
            <li class="paginItem"><a href="javascript:;">3</a></li>
            <li class="paginItem"><a href="javascript:;">4</a></li>
            <li class="paginItem"><a href="javascript:;">5</a></li>
            <li class="paginItem more"><a href="javascript:;">...</a></li>
            <li class="paginItem"><a href="javascript:;">10</a></li>
            <li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li>
        </ul>
    </div>
</div>

<script type="text/javascript">
    $(function(){
        $('.tablelist tbody tr:odd').addClass('odd');
        //下拉框的样式设置
        $(".select1").uedSelect({
            width: 345
        });
        $(".select2").uedSelect({
            width: 167
        });
        $(".select3").uedSelect({
            width: 100
        });
    });
</script>

</body>
</html>
