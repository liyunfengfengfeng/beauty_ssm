$(function(){
	$(".write-n").blur(function(){
		var $this = $(this);
		var $value = $this.val();
		if ($value != "" && $value != null) {
			var isToggle = $this.attr('class').indexOf('noPass')>-1?true:false;
			if (isToggle) {
				$this.next().remove();
				$this.removeClass('noPass')
			}
			$this.after('<span class="passImg"><img src="/resource/img/pass.png"/></span>')
		} else{
			$this.next().remove();
			$this.addClass('noPass')
			$this.after('<span class="noPassImg-bounce"><img src="/resource/img/refuse.png"/>不能为空</span>')
		}
	})
	$("#code").blur(function(){
		var $this = $(this);
		var $value = $this.val();
		if ($value != "" && $value != null) {
			var isToggle = $this.attr('class').indexOf('noPass')>-1?true:false;
			if (isToggle) {
				$this.next().remove();
				$this.removeClass('noPass')
			}
			$this.after('<span class="passImg"><img src="/resource/img/pass.png"/></span>')
		} else{
			$('.noPassImg-bounce').remove();
			$('.passImg').remove();
			$("#getCode").css({'margin-left':'35px'})
			$this.addClass('noPass')
			$this.after('<span class="noPassImg-bounce"><img src="/resource/img/refuse.png"/></span>')
		}
	})
})
//计时
var countdown=60;
function addReceive(){
	$("#receiverInfo").removeClass('hide');
}
function closeBounce(){
	$(".bounces").addClass('hide');
}
function settime(val) { 
	var $val = $(val);
	if (countdown == 0) { 
		$('#getCode').removeClass('countBtn');
		$('#getCode').addClass('bounceBtn');
		val.removeAttribute("disabled");    
		$val.children().html("获取验证码")
		countdown = 60; 
	} else { 
		$('#getCode').removeClass('bounceBtn');
		$('#getCode').addClass('countBtn');
		val.setAttribute("disabled", true); 
		$val.children().html("重新发送" + countdown + "s")
		countdown--; 
		setTimeout(function() { 
			settime(val) 
		},1000) 
	} 
} 
function sure(){
	location.href = 'perfectInfo.html'
}
