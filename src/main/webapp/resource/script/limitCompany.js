$(function(){
	$(".write-n").blur(function(){
		var $this = $(this);
		var $value = $this.val();
		var $sib = $this.next();
		if ($value != "" && $value != null) {
			var isToggle = $this.attr('class').indexOf('noPass')>-1?true:false;
			if (isToggle) {
				$sib.next().remove();
				$this.removeClass('noPass')
			}
			$sib.after('<span class="passImg"><img src="img/pass.png"/></span>')
		} else{
			$sib.next().remove();
			$this.addClass('noPass')
			$sib.after('<span class="noPassImg-bounce"><img src="img/refuse.png"/>不能为空</span>')
		}
	})
})
