var page_width = $(window).width();
if(page_width < 992){
	$('.my-footer-ul').css("display", 'none');
	var page_height = $('.my-footer-right').css('height');
	$('.my-footer-left').css('height', page_height);
	$('.my-footer-left img').css('width', $('.my-footer-left').css('width'));
	$('.my-footer-left img').css('margin-top', 20);
	$('.my-footer-hidder').css("display", 'block');
}
else{
	$('.my-footer-ul').css("display", 'block');
	$('.my-footer-left img').css('width', 165);
	$('.my-footer-hidder').css("display", 'none');
}
$(window).resize(function(){
	var width = $(window).width();
	if(width < 992){
		$('.my-footer-ul').css("display", 'none');
		var height = $('.my-footer-right').css('height');
		$('.my-footer-left').css('height', height);
		$('.my-footer-left img').css('width', $('.my-footer-left').css('width'));
		$('.my-footer-left img').css('margin-top', 20);
		$('.my-footer-hidder').css("display", 'block');
	}
	else{
		$('.my-footer-ul').css("display", 'block');
		$('.my-footer-left img').css('width', 165);
		$('.my-footer-hidder').css("display", 'none');
	}
});
//头部隐藏
$(window).scroll(function () {  
	if ($(".my-header").offset().top > 100) {
		$(".my-header").css("display", 'none');
	}
	else {
		$(".my-header").css("display", 'block');
	}  
});
$('#login-btn').click(function(){
	if($('#login-id').val() === "" || $('#login-pw').val() === ""){
		alert("账号或密码不能为空!");
		return;
	}
	var url = "../login";
	$.ajax({
	    url:url,
	    type:'POST', //GET
	    async:true,    //或false,是否异步
	    data:{
	    	id : $('#login-id').val(),
	    	password : $('#login-pw').val()
	    },
	    timeout:5000,    //超时时间
	    dataType:'json',    //返回的数据格式：json/xml/html/script/jsonp/text
	    success:function(data,textStatus,jqXHR){
	        if(data.status){
	        	location.reload();
	        }
	        else{
	        	alert("账号或密码错误!");
	        }
	    },
	    error:function(xhr,textStatus){
	        alert('内部错误');
	    }
	});
});