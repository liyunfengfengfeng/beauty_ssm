$(function(){
	$(".write-n").blur(function(){
		var $this = $(this);
		var $value = $this.val();
		if ($value != "" && $value != null) {
			var isToggle = $this.attr('class').indexOf('noPass')>-1?true:false;
			if (isToggle) {
				$this.removeClass('noPass')
			}
			$this.next().remove();
			$this.after('<span class="passImg"><img src="/resource/img/pass.png"/></span>')
		} else{
			$this.next().remove();
			$this.addClass('noPass')
			$this.after('<span class="noPassImg-bounce"><img src="/resource/img/refuse.png"/>不能为空</span>')
		}
	})
})
function addStockholder(){
	$("#1").append('<tr>'+
			'<td><input type="text" class="this-input input-name" name="" id="" value="" /></td>'+
			'<td>'+
				'<select name="" class="this-input credentials">'+
					'<option value="0">身份证</option>'+
					'<option value="1">营业执照</option>'+
				'</select>'+
			'</td>'+
			'<td><input type="text" class="this-input number" name="" id="" value="" /></td>'+
			'<td><input type="text" class="this-input factMoney" name="" id="" value="" /></td>'+
			'<td><input type="text" class="this-input fundDate" name="" id="" value="" /></td>'+
			'<td><input type="text" class="this-input factMoney" name="" id="" value="" /></td>'+
			'<td><input type="text" class="this-input fundDate" name="" id="" value="" /></td>'+
			'<td><input type="text" class="this-input fundType" name="" id="" value="" /></td>'+
		'</tr>')
}
