<%@ page contentType="text/html;charset=UTF-8" language="java"%>
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

<div class="formbody">

    <div class="formtitle"><span>基本信息</span></div>
    <form action="/adminUser/addUser" method="post" id="addUser">
    <ul class="forminfo short">
        <li>
            <label>用户姓名<b>*</b></label>
            <input name="name" type="text"/><i>标题不能超过30个字符</i>
        </li>
        <li>
            <label>邮箱<b>*</b></label>
            <input name="email" type="text"/><i>多个关键字用,隔开</i>
        </li>
        <li>
            <label>是否审核</label>
            <cite>
                <input name="" type="radio" value="" checked="checked"/>&nbsp;是&nbsp;&nbsp;&nbsp;&nbsp;
                <input name="" type="radio" value=""/>&nbsp;否
            </cite>
            </li>
        <li>
            <label>密码</label>
            <input name="password" type="password" class="short-input" value=""/>
        </li>
        <li style="width: 100%">
            <label>&nbsp;</label>
            <input name="" type="submit" class="btn" value="确认保存"/>
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
