$(function(){
//	$('input[type=radio]').click(function(){
//		var $this = $(this)
//		 
//	})
})


function edit(obj) {
	var $this = $(obj);
	console.log($this.parent())
	var $input = $this.parent().prev();
	console.log($input)
	$input.removeAttr("readonly");
}

function deleteThis(obj) {
	var $this = $(obj);
	$this.parent().parent().remove();
}

function addInvoice(obj){
	var $this = $(obj).parent().prev().find(".items");
	$($this).append('<li class="lastItem" id="invoice0">'+
		'<input type="text" class="invoicePut" name="" id="0" value="" placeholder="新增电子发票抬头"/>'+
		'<span class="edit"><a href="javascript:void(0)" onclick="edit(this)">编辑</a></span>'+
		'<span class="edit"><a href="javascript:void(0)" onclick="deleteThis(this)">删除</a></span></li>')
}
function addInvoice3(obj){
	var $this = $(obj).parent().prev().find(".items");
	$($this).append('<li class="lastItem" id="invoice0">'+
		'<input type="text" class="invoicePut" name="" id="0" value="" placeholder="新增电子发票抬头"/>'+
		'<span class="edit save"><a href="javascript:void(0)" class="" onclick="edit(this)">保存</a></span></li>')
}


//新增发票信息
function addInvoice(){
	$("#invoiceInfo").removeClass('hide');
}
