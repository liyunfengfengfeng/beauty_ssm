<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>查看新闻详情</title>
    <link href="/resource/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="/resource/js/3rd/select/select.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="/resource/js/jquery/jquery.1.11.2.min.js"></script>
    <script type="text/javascript" src="/resource/js/3rd/select/select-ui.min.js"></script>
</head>

<body>

<div class="formbody">


    <%--查看新闻展示的基本信息--%>
    <div class="formtitle"><span>查看新闻展示的基本信息</span></div>
    <form action="/news/updateNews" method="post">
        <ul class="forminfo short">
            <li>
                <label>新闻编号<b>*</b></label>
                ${news.id}
            </li>
            <li>
                <label>新闻标题<b>*</b></label>
                ${news.title}
            </li>
            <li>
                <label>新闻内容<b>*</b></label>
                <input type="hidden" name="newsId" id="newsId" value="${news.id}"/>
                <textarea id="content" name="content" style="width: 580px;height: 300px">${news.content}</textarea>
            </li>
            <li>
                <label>创建人<b>*</b></label>
                ${news.createUser}
            </li>
            <li>
                <label>更新人<b>*</b></label>
                ${news.updateUser}
            </li>
            <li>
                <label>创建时间<b>*</b></label>
                ${news.createTime}
            </li>
            <li>
                <label>更新时间<b>*</b></label>
                ${news.updateTime}
            </li>
            <li style="width: 100%">
                <label>&nbsp;</label>
                <input name="" type="submit" class="btn" value="提交"/>
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
        window.location.href="/news/list";
    }
</script>

</body>
</html>
