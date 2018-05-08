<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>系统logo管理</title>
    <link href="/resource/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="/resource/js/3rd/select/select.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="/resource/js/jquery/jquery.1.11.2.min.js"></script>
    <script type="text/javascript" src="/resource/js/3rd/select/select-ui.min.js"></script>
</head>

<body>

<div class="formbody">


    <%--系统logo管理--%>
    <div class="formtitle"><span>系统banner管理</span></div>
    <form action="/picture/updateBannerPicture" method="post" enctype="multipart/form-data">
        <ul class="forminfo short">
            <li>
                <label>编号<b>*</b></label>
                2
            </li>
            <li>
                <label>图片备注<b>*</b></label>
                banner图片
            </li>
            <li>
                <label>创建时间<b>*</b></label>
                2018-05-02 19:30:03
            </li>
            <li>
                <label>更新时间<b>*</b></label>
                2018-05-02 19:30:06
            </li>
            <li>
                <label>创建人<b>*</b></label>
                liyunfeng
            </li>
            <li>
                <label>更新人<b>*</b></label>
                liyunfeng
            </li>
            <li>
                <label>上传logo图片<b>*</b></label>
                <input type="file" name="file" id="file" value=""/>
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
        window.location.href="/adminCompanyManager/toCompanyManager";
    }
</script>

</body>
</html>
