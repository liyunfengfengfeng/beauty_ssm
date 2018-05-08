<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>无标题文档</title>
    <link rel="stylesheet" type="text/css" href="/resource/css/style.css"/>
</head>
<body style="background:#edf6fa;">
<div class="error">
    <!-- <div class="reindex"><a href="main.jsp" target="_parent">返回首页</a></div> -->
</div>
</body>
</html>
<script type="text/javascript" src="/resource/js/jquery/jquery.1.11.2.min.js"></script>
<script language="javascript">
    $(function () {
        $('.error').css({'position': 'absolute', 'left': ($(window).width() - 490) / 2});
        $(window).resize(function () {
            $('.error').css({'position': 'absolute', 'left': ($(window).width() - 490) / 2});
        })
    });
</script>