<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>AdminUI主界面</title>
</head>
<frameset cols="187,*" cols="*" frameborder="no" border="0" framespacing="0">
    <frame src="http://127.0.0.1:8080/admin/left" name="topFrame" scrolling="No" noresize="noresize" id="leftFrame" title="leftFrame"/>
    <frameset rows="50,*" frameborder="no" border="0" framespacing="0">
        <frame src="http://127.0.0.1:8080/admin/top" name="topFrame" scrolling="No" noresize="noresize" id="topFrame" title="topFrame"/>
        <frame src="http://127.0.0.1:8080/admin/index" name="rightFrame" id="rightFrame" title="rightFrame"/>
    </frameset>
</frameset>
<noframes>
    <body>
    </body>
</noframes>
</html>
