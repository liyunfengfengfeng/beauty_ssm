<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>58行代码实现3D相册</title>
<style>
    *{
        padding: 0px;
        margin: 0px;
    }
    body{
        background-color: black;
    }
    .wrap{
        perspective: 1600px;

    }
    #photos{
        width: 300px;
        height:300px;
        margin: 200px auto;
        transform-style: preserve-3d;
        transition: all .5s ease;
        animation: spin 20s linear infinite;

    }
    img{
        width: 250px;
        height: 300px;
        margin-bottom: 100px;
        position: absolute;
        border: 1px solid gray;
        border-radius: 20px;
        opacity: 0.8;
    }
</style>
    <script type="text/javascript">
        var phoArr = document.getElementById("photos");
        var phoNum = document.getElementsByTagName("img");
        var phoLen = phoNum.length;
        var ang = Math.floor( 360/phoLen);
        for(var i = 0; i < phoLen; i++){
            phoNum[i].style = 'transform : rotateY(' + ang*i + 'deg) ';
        }


    </script>
</head>

<body>
<div class="wrap">
    <div id="photos">
        <img class="pic1" src="/resource/pic/3D/bank-china.png" alt="">
        <%--<img class="pic2" src="/resource/pic/3D/bank-em.png" alt="">--%>
        <%--<img class="pic3" src="/resource/pic/3D/bank-jian.png" alt="">--%>
        <%--<img class="pic4" src="/resource/pic/3D/bank-jiao.png" alt="">--%>
        <%--<img class="pic5" src="/resource/pic/3D/bank-no.png" alt="">--%>
        <%--<img class="pic6" src="/resource/pic/3D/bank-zhao.png" alt="">--%>
    </div>
</div>
</body>
</html>
