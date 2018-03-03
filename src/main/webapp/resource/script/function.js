var curIndex = 0; 
     // 定时器自动变换3秒每次
  var autoChange = setInterval(function(){ 
    if(curIndex < $(".imgList li").length-1){ 
      curIndex ++; 
    }else{ 
      curIndex = 0;
    }
    //调用变换处理函数
    changeTo(curIndex); 
  },3000);
 
  $(".indexList").find("li").each(function(item){ 
    $(this).hover(function(){ 
      clearInterval(autoChange);
      changeTo(item);
      curIndex = item;
    },function(){ 
      autoChange = setInterval(function(){ 
        if(curIndex < $(".imgList li").length-1){ 
          curIndex ++; 
        }else{ 
          curIndex = 0;
        }
        //调用变换处理函数
        changeTo(curIndex); 
      },3000);
    });
  });
  
  $(function(){
  	 $(".header-menu ul li").bind('click',function(){
  	 	location.href = $(this).children().attr("href")
  	 })
  })
  
  
  
  function changeTo(num){ 
    $(".imgList").find("li").removeClass("imgOn").hide().eq(num).fadeIn().addClass("imgOn");
  }