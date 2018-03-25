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
			$this.after('<span class="passImg"><img src="img/pass.png"/></span>')
		} else{
			$this.next().remove();
			$this.addClass('noPass')
			$this.after('<span class="noPassImg-bounce"><img src="img/refuse.png"/>不能为空</span>')
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
			$this.after('<span class="passImg"><img src="img/pass.png"/></span>')
		} else{
			$('.noPassImg-bounce').remove();
			$('.passImg').remove();
			$("#getCode").css({'margin-left':'35px'})
			$this.addClass('noPass')
			$this.after('<span class="noPassImg-bounce"><img src="img/refuse.png"/></span>')
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
// 获取验证码
var countdown = 60;
function setTime(val) {
	var $val = $(val);
	if (countdown == 60){
		//异步发送验证码
		$.ajax({
			type: 'POST',
			data: $('#findPwdForm').serialize(),
			dataType: "json",
			url: '/user/getEmailCode',
			success: function (data) {
				if (data.success) {

				} else {

				}
			}
		});
	}
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
	var $newPwd = $("#newPwd").val();
	var $pwda = $("#pwd-a").val();
	if($pwda != $newPwd) {
		$("#pwd-a").next().remove();
		$("#pwd-a").addClass('noPass')
		$("#pwd-a").after('<span class="noPassImg-bounce"><img src="img/refuse.png"/>输入不一致</span>')
	}

	$.ajax({
		type: 'POST',
		data: $('#findPwdForm').serialize(),
		dataType: "json",
		url: '/find/findPwd',
		success: function (data) {
			if(data.success){
				alert("修改成功");
				window.location.href="/user/login";
			}else{
				alert(data.error);
			}
		}
	});
}
