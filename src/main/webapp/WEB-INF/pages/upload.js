$(function(){
	$(".select1").click(function(){
		$(".upload").css({"display":"block"});
		$(".input").css({"display":"none"});
		$("#s2").attr('checked',false);
	});
	$(".select2").click(function(){
		$(".upload").css({"display":"none"});
		$(".input").css({"display":"block"});
		$("#s1").attr('checked',false);
	})
});