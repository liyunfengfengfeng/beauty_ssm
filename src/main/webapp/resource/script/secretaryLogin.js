$(function(){
	$("#pwd").focus(function(){
		var $red = $("#pwd").attr('class').indexOf('redFont')>-1?true:false;
		if($red){
			$("#pwd").removeClass('redFont');
		}
	})
})
function login(){
	$("#pwd").addClass('noPass');
	$("#pwd").addClass('redFont');
	$("#pwd").val('密码错误请重新输入！');
	$("#pwd").next().remove();
	$("#pwd").after('<span class="noPassImg-bounce"><img src="img/refuse.png"/></span>')
}
