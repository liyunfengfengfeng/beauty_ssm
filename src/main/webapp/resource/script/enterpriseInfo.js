//$(function(){
//	$(".list-info").bind('click',function(){
//		var $this = $(this);
//		$(".list-info").removeClass('active');
//		$this.addClass('active');
//		var id = $this.attr('name');
//		$(".infoCon").hide()
//		$("#"+id).show();
//	})
//})
$(function(){
	$(".list-info").bind('click',function(e){
		var $this = $(this);
		var whatTab = $(this).index();
		
		var howFar = 155 * whatTab;
		$(".mySlider").css({"left": howFar + "px"});
		var id = $this.attr('name');
		$(".infoCon").hide()
		$("#"+id).show();
	})
})
