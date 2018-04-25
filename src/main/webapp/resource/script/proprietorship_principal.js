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
})
