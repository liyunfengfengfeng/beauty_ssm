<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>合伙企业公司详情</title>
    <link href="/resource/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="/resource/js/3rd/select/select.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="/resource/js/jquery/jquery.1.11.2.min.js"></script>
    <script type="text/javascript" src="/resource/js/3rd/select/select-ui.min.js"></script>
</head>

<body>

<div class="formbody">

    <div class="formtitle"><span>基本信息</span></div>
    <form action="/adminUser/list" method="post">
    <ul class="forminfo short">
        <li>
            <label>用户姓名<b>*</b></label>
            ${user.name}
        </li>
        <li>
            <label>邮箱<b>*</b></label>
            ${user.email}
        </li>
        <li style="width: 100%">
            <label>&nbsp;</label>
            <input name="" type="submit" class="btn" value="返回"/>
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
</script>

</body>
</html>
