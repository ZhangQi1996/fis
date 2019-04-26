<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>信息采集展示</title>

<!-- Bootstrap -->
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<style>
	.my-plant-1, .my-plant-2, .my-plant-3, .my-plant-4{
		margin-bottom: 30px;
	}
	.my-plant-title{
		position:absolute;
		left:30px;  
        top:10px;
	}
	.my-plant1-dot, .my-plant2-dot, .my-plant3-dot, .my-plant4-dot{
		background-color:transparent;
		position:absolute;
		right:20px;  
        top:10px;
		color:#0060B0;
	}
<style>
.ContactPage-para {
margin-top: 2em;
}
.ContactPage-para a {
color: #222;
}
</style>
<body>
	<!-- 置顶导航条 -->
	<div class="navbar-fixed-top"> 
		<div class="my-header">
			<div class="container">
				<img src="${pageContext.request.contextPath}/img/logo.gif">
				<div class="my-header-se">
					<form action="" class="navbar-form navbar-right"><!--navbar-right让输入框居右  -->
						<div class="input-group">
							<input type="text" class="form-control" placeholder="站内搜索..">
							<span class="input-group-btn">
								<button class="btn btn-default">搜索</button>
							</span>
						</div>
					</form>
				</div>
				<!--登陆-->
				<p class="my-header-login">亲，没<a id="header-login" href="" data-toggle="modal" data-target="#loginModal">登录</a>先登陆吧!</p>
			</div>
		</div>
		<nav class="navbar navbar-default my-navbar" ><!--navbar-fixed-bottom  navbar-inverse让导航条变成黑色-->
			<div class="container">
				<div class="navbar-header" >
					<!-- 大屏时按钮隐藏小屏幕时出现按按钮出现折叠 -->
					<button class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
				<div class="collapse navbar-collapse" id="navbar-collapse">
					<ul class="nav nav-pills nav-justified my-nav-pills">
						<li class="my-li"><a href="${pageContext.request.contextPath}/page/home">首页</a></li>
						<li class="dropdown my-li">
							<a href="javascript;void(0)" data-toggle="dropdown">团队项目概况<i class="caret"></i></a>
							<ul class="dropdown-menu">
								<li><a href="${pageContext.request.contextPath}/page/team_profile">团队简介</a></li>
								<li><a href="#">项目概况</a></li>
							</ul>
						</li>
						<li class="dropdown my-li">
							<a href="javascript;void(0)" data-toggle="dropdown">产品说明<i class="caret"></i></a>
							<ul class="dropdown-menu">
								<li><a href="${pageContext.request.contextPath}/page/product">产品简介</a></li>
								<li><a href="${pageContext.request.contextPath}/page/product_tech">产品技术概要</a></li>
							</ul>
						</li>
						<li class="my-li"><a href="${pageContext.request.contextPath}/page/irrig_strategy">灌溉策略</a></li>
						<li class="dropdown my-li active">
							<a href="javascript;void(0)" data-toggle="dropdown">信息建设<i class="caret"></i></a>
							<ul class="dropdown-menu">
								<li><a href="${pageContext.request.contextPath}/page/tech_show">图像采集展示</a></li>
								<li><a href="${pageContext.request.contextPath}/page/weather">气象信息</a></li>
							</ul>
						</li>
						<li class="my-li"><a href="${pageContext.request.contextPath}/page/model_display">模型展示</a></li>
						<li class="my-li"><a href="${pageContext.request.contextPath}/page/contact">联系我们</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
	<div class="my-bg">
		<div class="container">
			<!--轮播图  -->
			<div class="row" style="margin-bottom:50px; margin-top: 100px;">
			<!-- 	<ol class="carousel-indicators">
				</ol>
				<div class="carousel-inner">
					先把图片两端进行模糊化处理再取模糊后的颜色置于background中 
					
				</div>
				<a href="#myCarousel" data-slide="prev" class="carousel-control left">
					<span class="glyphicon glyphicon-chevron-left" style="left: 30px"></span>
				</a>
				<a href="#myCarousel" data-slide="next"
					class="carousel-control right"> <span
					class="glyphicon glyphicon-chevron-right" style="right: 30px"></span>
				</a> -->
				<p class="text-center my-h3" style="color: #C1C1C1; margin-bottom:20px;">——————&nbsp;&nbsp;&nbsp;&nbsp;实时展示&nbsp;&nbsp;&nbsp;&nbsp;——————</p>
				
				<div class="col-md-6"><img style="-webkit-user-select: none; height: 416px; width: 100%" src="http://192.168.8.1:8083/?action=stream"></div>
				<div class="col-md-6"><video id='my_video' muted width="100%" loop></video></div>
			</div>
			<div class='row'>
				<div class="col-md-2"><p>实时区域：<span id='pred_area'></span></p></div>
				<div class="col-md-2"><p>户外温度：<span id='pred_ot'></span></p></div>
				<div class="col-md-2"><p>土壤温度：<span id='pred_st'></span></p></div>
				<div class="col-md-2"><p>土壤湿度: <span id='pred_sh'></span></p></div>
				<div class="col-md-2"><p>干旱等级判定：<span id='pred_dl'></span></p></div>
				<div class="col-md-2"><button class='btn btn-primary' id='pred_btn'>灌溉</button></div>
			</div>
			<div class="row">
				<p class="text-center my-h3" style="color: #C1C1C1; margin-bottom:20px;">——————&nbsp;&nbsp;&nbsp;&nbsp;种植区展示&nbsp;&nbsp;&nbsp;&nbsp;——————</p>
				<div class="my-plant">
					<!--玉米种植区-->
					<div class="col-md-6 col-sm-12 my-plant-1" value="0">
						<img alt="图片" src="${pageContext.request.contextPath}/image/wheat1.jpg" width="100%">
						<span class="my-h4 my-plant-title">小麦发芽期</span>
						<button class="my-plant1-dot btn" data-toggle="popover" title="小麦发芽期区测点" data-content="" data-html="true" data-placement="bottom" data-trigger="hover foucs">测点<span class="glyphicon glyphicon-grain"></span></button>
					</div>
					<!--水稻种植区-->
					<div class="col-md-6 col-sm-12 my-plant-2" value="0">
						<img alt="图片" src="${pageContext.request.contextPath}/image/wheat2.jpg" width="100%">
						<span class="my-h4 my-plant-title">小麦幼苗期</span>
						<button class="my-plant2-dot btn" data-toggle="popover" title="小麦幼苗期测点" data-content="" data-html="true" data-placement="bottom" data-trigger="hover foucs">测点<span class="glyphicon glyphicon-grain"></span></button>
					</div>
					<!--小麦种植区-->
					<div class="col-md-6 col-sm-12 my-plant-3" value="0">
						<img alt="图片" src="${pageContext.request.contextPath}/image/wheat3.jpg" width="100%">
						<span class="my-h4 my-plant-title">小麦抽穗期</span>
						<button class="my-plant3-dot btn" data-toggle="popover" title="小麦抽穗期测点" data-content="" data-html="true" data-placement="bottom" data-trigger="hover foucs">测点<span class="glyphicon glyphicon-grain"></span></button>
					</div>
					<!--大棚种植区-->
					<div class="col-md-6 col-sm-12 my-plant-4" value="0">
						<img alt="图片" src="${pageContext.request.contextPath}/image/wheat4.jpg" width="100%">
						<span class="my-h4 my-plant-title">小麦成熟期</span>
						<button class="my-plant4-dot btn" data-toggle="popover" title="小麦成熟期测点" data-content="" data-html="true" data-placement="bottom" data-trigger="hover foucs">测点<span class="glyphicon glyphicon-grain"></span></button>
					</div>
				</div>
			</div>
			<!--可添加展览图及信息-->
			<a href="${pageContext.request.contextPath}/excel">种植区实时数据采集报表下载</a>
		</div>	
	</div>
	
	<footer id="footer" class="text-muted" style="background-color:#292929; border-top: 6px solid #3F3F3F";>
		<div class="container">
			<div class="col-xs-6" style="border-right:1px solid #C1C1C1; padding-bottom: 10px">
				<div class="col-md-8 my-footer-left">
					<a href="${pageContext.request.contextPath}/page/team_profile"><img alt="team_logo" src="${pageContext.request.contextPath}/img/team_logo.png"></img></a>
				</div>
				<div class="col-md-4">
					<ul class="my-footer-ul">
						<li style="margin-bottom: 3px;"><a href="#" class="h4" style="color:#777777;">关于我们</a></li>
						<li style="margin-bottom: 3px;"><a href="#" style="color:white;">问题反馈</a></li>
						<li style="margin-bottom: 3px;"><a href="contact.html" style="color:white;">联系我们</a></li>
						<li style="margin-bottom: 3px;"><a href="#" style="color:white;">加入我们</a></li>
					</ul>
				</div>
			</div>
			
			<div class="col-xs-6 my-footer-right" style="color:white;">
				<div style="padding-left:10%;">
					<br>
					<p class="text-left my-h5">联系人：邢梦妍&nbsp;&nbsp;&nbsp;&nbsp;手机：185 6770 9618</p>
					<p class="text-left my-h5">邮箱：942102585@qq.com</p>
					<p class="text-left my-h5">地址：华北水利水电大学龙子湖校区</p>
				</div>
			</div>
		</div>
		<p class="text-center my-h5 my-footer-hidder"><a href="#">关于我们</a>&nbsp;|&nbsp;<a href="#">问题反馈</a>&nbsp;|&nbsp;<a href="#">联系我们</a>&nbsp;|&nbsp;<a href="#">加入我们</a></p>
		<p class="text-center my-h5" style="margin-top: 10px; color:#777777;"><font color="#22B26D">豫 ICP备12345678. </font>© 2019 智联灌溉. Powered by Infinity Group</p>
	</footer>
	<!--登录  -->
	<div class="modal fade" id="loginModal" tabindex="-1">
		<!-- class中加show直接设置为显示 -->
		<!--tabindex焦点的设置  -->
		<!--可设置淡入淡出效果fade  -->


		<!-- 窗口声明 -->
		<!--可以添加modal-sm modal-lg  -->
		<div class="modal-dialog modal-sm my-modal">
			<form action="javascript:void(0);" method="post">
				<div class="modal-content">
					<div class="modal-header">
						<button class="close" data-dismiss="modal">
							<i>&times;</i>
						</button>
						<h4 class="modal-title">管理员登录</h4>
					</div>
					<!-- 内容体 -->
					<div class="modal-body">
						<!--可以加入流体栅格  -->
						<div class="container-fluid">

							<div class="row" style="margin: 3px 0px">
								<div class="col-xs-3" style="padding: 0px">
									<p class="text-right" style="padding-top: 8px">账号:</p>
								</div>
								<div class="col-xs-9">
									<input type="text" class="form-control" name="id" id="login-id"
										placeholder="输入您的账号">
								</div>
							</div>
							<div class="row" style="margin: 3px 0px">
								<div class="col-xs-3" style="padding: 0px">
									<p class="text-right" style="padding-top: 8px">密码:</p>
								</div>
								<div class="col-xs-9">
									<input type="password" class="form-control" name="password" id="login-pw"
										placeholder="输入您账号的密码">
								</div>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<input type="submit" class="btn btn-primary my-center-block" value="登录" id="login-btn" style="width:100px;">
					</div>
				</div>
			</form>
		</div>
	</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/common.js"></script>
	<script>
		let getType = function(type) {
			switch(type) {
				case 0: return '小麦发芽期';
				case 1: return '小麦幼苗期';
				case 2: return '小麦抽穗期';
				case 3: return '小麦成熟期';
			}
			
		}
		let type = 1;
		let timeid = window.setInterval(function() {
			var video_elem = document.getElementById("my_video");
			let url = "${pageContext.request.contextPath}/get_predict/";
			let time = 'null';
			$.ajax({
			    url:url,
			    type:'POST', //GET
			    async:false,    //或false,是否异步
			    timeout:1000,    //超时时间
			    dataType:'json',    //返回的数据格式：json/xml/html/script/jsonp/text
			    data: {time: time},
			    success:function(data,textStatus,jqXHR){
			    	status = data.status;
			    	if(status == 'true' && data.time !== time){
			    		let src = "${pageContext.request.contextPath}/video/" + data.type + '.Ogg';
			    		time = data.time;
			    		type = data.type;
			    		video_elem.src = src;
						video_elem.autoplay = 'autoplay';
						console.log('数据类型为:' + data.type);
						console.log(typeof(data.type));
						$('#pred_area').html(getType(data.type));
						$('#pred_ot').html(temp);
						$('#pred_st').html(sensor_temp);
						$('#pred_sh').html(sensor_humid);
						$('#pred_dl').html(dgt_level);
			    	}
			    	else{
			    		console.log('数据未更新。。');
			    	}
			    },
			    error:function(xhr,textStatus){
			      //  alert("系统忙碌!");
			    }
			});
		}, 8000);
		
		$('#pred_btn').click(function() {
			if(type === 0) {
				if(global_user !== ""){ //已经登录则开始灌溉
					$('.my-plant-1 img').attr('src', "${pageContext.request.contextPath}/image/001i.gif");
					$('.my-plant-1').attr('value', '1');
					setTimeout(function(){
						$('.my-plant-1 img').attr('src', "${pageContext.request.contextPath}/image/wheat1.jpg");
						$('.my-plant-1').attr('value', '0');
						//如有必要在灌溉结束后更新后台数据库
						//****
					}, 5000);	
				}
				else{ //否则，触发登录事件
					alert('请先登陆...');
					$('#header-login').click();
				}
			}
			else if(type === 1) {
				if(global_user !== ""){ //已经登录则开始灌溉
					$('.my-plant-2 img').attr('src', "${pageContext.request.contextPath}/image/001i.gif");
					$('.my-plant-2').attr('value', '2');
					setTimeout(function(){
						$('.my-plant-2 img').attr('src', "${pageContext.request.contextPath}/image/wheat2.jpg");
						$('.my-plant-2').attr('value', '0');
						//如有必要在灌溉结束后更新后台数据库
						//****
					}, 5000);	
				}
				else{ //否则，触发登录事件
					alert('请先登陆...');
					$('#header-login').click();
				}
			}
			else if(type === 2) {
				if(global_user !== ""){ //已经登录则开始灌溉
					$('.my-plant-3 img').attr('src', "${pageContext.request.contextPath}/image/001i.gif");
					$('.my-plant-3').attr('value', '3');
					setTimeout(function(){
						$('.my-plant-3 img').attr('src', "${pageContext.request.contextPath}/image/wheat3.jpg");
						$('.my-plant-3').attr('value', '0');
						//如有必要在灌溉结束后更新后台数据库
						//****
					}, 5000);	
				}
				else{ //否则，触发登录事件
					alert('请先登陆...');
					$('#header-login').click();
				}
			}
			else {
				if(global_user !== ""){ //已经登录则开始灌溉
					$('.my-plant-4 img').attr('src', "${pageContext.request.contextPath}/image/001i.gif");
					$('.my-plant-4').attr('value', '4');
					setTimeout(function(){
						$('.my-plant-4 img').attr('src', "${pageContext.request.contextPath}/image/wheat4.jpg");
						$('.my-plant-4').attr('value', '0');
						//如有必要在灌溉结束后更新后台数据库
						//****
					}, 5000);	
				}
				else{ //否则，触发登录事件
					alert('请先登陆...');
					$('#header-login').click();
				}
			}
			setTimeout(function(){
				sensor_humid = 85;
				dgt_level = 1;
				$('#pred_sh').html(sensor_humid);
				$('#pred_dl').html(dgt_level);
			}, 5000);
			
		});
	</script>
	<script>
		var global_user =  "${user}";
		if(global_user === ""){
			$('.my-header-login').html('亲，没<a id="header-login" href="" data-toggle="modal" data-target="#loginModal">登录</a>先登陆吧!');
		}
		else{
			$('.my-header-login').html('尊敬的管理员：<a>'+"${user.name}"+'</a>,欢迎您！<a href="${pageContext.request.contextPath}/logOff">退出登录</a>');
		}
		function getPic(){
			status = "false";
			count = 0;
			pic_name_list = null;
			url = "../picture/get";
			$.ajax({
			    url:url,
			    type:'GET', //GET
			    async:false,    //或false,是否异步
			    timeout:1000,    //超时时间
			    dataType:'json',    //返回的数据格式：json/xml/html/script/jsonp/text
			    success:function(data,textStatus,jqXHR){
			    	status = data.status;
			    	if(status == 'true'){
			    		count = data.count;
			    		pic_name_list = data.pic_name_list;
			    	}
			    	else{
			    		alert('picture server is busy...please try later again...');
			    	}
			    },
			    error:function(xhr,textStatus){
			      //  alert("系统忙碌!");
			    },
			    complete:function(){
			    	if(status == 'true'){
			    		html1 = '<li data-target="#myCarousel" data-slide-to="' + 0 + '" class="active"></li>'
			    		html2 = '<div class="item active" style="background: #282828"><img alt="图片" src="${pageContext.request.contextPath}/pic/'+pic_name_list[0]+'"></div>'
			    		for(i = 1; i < count; i++){
			    			html1 += '<li data-target="#myCarousel" data-slide-to="' + i + '"></li>';
			    			html2 += '<div class="item" style="background: #282828"><img alt="图片" src="${pageContext.request.contextPath}/pic/'+pic_name_list[i]+'"></div>'
			    		}
			    		$('.carousel-inner').html(html2);
		    			$('.carousel-indicators').html(html1);		
			    	}
			    }
			});
		}
		//处理刷新展示图片的事件
		$('.carousel-inner').click(function(){
			getPic();
		});
		//设置轮播时间间隔
   		$('#myCarousel').carousel({
       		interval : 4000,
       	});
	//	getPic();
	</script>
		<script>
		var global_user =  "${user}";
		if(global_user === ""){
			$('.my-header-login').html('亲，没<a id="header-login" href="" data-toggle="modal" data-target="#loginModal">登录</a>先登陆吧!');
		}
		else{
			$('.my-header-login').html('尊敬的管理员：<a>'+"${user.name}"+'</a>,欢迎您！<a href="${pageContext.request.contextPath}/logOff">退出登录</a>');
		}
	</script>
	<script type="text/javascript">
	function isIrrig(param){
		return param == true ? "自动" : "人工";
	}
	var sensor_temp = 25; //传感器温度
	var sensor_humid = 50;	//传感器湿度
	var temp = 20; //外界温度
	var humid = 40;	//外界湿度
	var wind_dir = "东风";	//风向
	var wind_power = 3; //风力
	var dgt_level = 5;	//干旱等级
	var isIrrig_auto = true;	//是否自动灌溉
	var irrig_btn = null;
	var code_str = "<p>测点土壤传感器温度："+sensor_temp+"摄氏度</p><p>测点土壤传感器湿度："+sensor_humid
		+"%</p><p>外界温度："+temp+"摄氏度</p><p>外界湿度："+humid+"%</p><p>外界风向："+wind_dir+"</p><p>外界风力："
		+wind_power+"</p><p>判定干旱等级："+dgt_level+"</p><p>所选灌溉方式："+isIrrig(isIrrig_auto)+"</p>"+irrig_btn;
	//玉米
	function myAjax(classStr, pointId){
		if($('.my-plant-' + pointId[5]).attr('value') === '0')
			irrig_btn = "<button class='btn btn-primary my-center-block' id='plant" +pointId[5]+"-irrig'>开启灌溉</button>";
		else
			irrig_btn = "<button class='btn btn-primary my-center-block disabled' id='plant" +pointId[5]+"-irrig'>灌溉中</button>";		
		var url = "../point/00" + pointId[5];
		$.ajax({
		    url:url,
		    type:'GET', //GET
		    async:false,    //或false,是否异步
		    timeout:1000,    //超时时间
		    dataType:'json',    //返回的数据格式：json/xml/html/script/jsonp/text
		    success:function(data,textStatus,jqXHR){
		    	sensor_temp = data.sensor_temp;
		    	sensor_humid = data.sensor_humid;
		    	temp = data.zigbee_temp;
		    	humid = data.zigbee_humid;
		    	wind_dir = data.wind_direct;
		    	wind_power = data.wind_power;
		    },
		    error:function(xhr,textStatus){
		        alert("系统忙碌!");
		    }
		});
		url = "../modelRes/00" + pointId[5];
		$.ajax({
		    url:url,
		    type:'GET', //GET
		    async:false,    //或false,是否异步
		    timeout:1000,    //超时时间
		    dataType:'json',    //返回的数据格式：json/xml/html/script/jsonp/text
		    success:function(data,textStatus,jqXHR){
		    	dgt_level = data.drought_level;
		    },
		    error:function(xhr,textStatus){
		        alert("系统忙碌!");
		    },
		    complete:function(){
		    	code_str = "<p>测点土壤传感器温度："+sensor_temp+"摄氏度</p><p>测点土壤传感器湿度："+sensor_humid
				+"%</p><p>外界温度："+temp+"摄氏度</p><p>外界湿度："+humid+"%</p><p>外界风向："+wind_dir+"</p><p>外界风力："
				+wind_power+"</p><p>判定干旱等级："+dgt_level+"</p><p>所选灌溉方式："+isIrrig(isIrrig_auto)+"</p>"+irrig_btn;
				$(classStr).attr("data-content",code_str);
		    }
		});
	}
	$('.my-plant1-dot').popover();
	$('.my-plant1-dot').on('show.bs.popover', function () {
		myAjax('.my-plant1-dot', 'wheat1');
	});
	$('.my-plant1-dot').on('shown.bs.popover', function () {
		//处理灌溉键按下的事件
		$('#plant1-irrig').click(function(){
			//判断是否管理员已登录
			if(global_user !== ""){ //已经登录则开始灌溉
				$('.my-plant-1 img').attr('src', "${pageContext.request.contextPath}/image/001i.gif");
				$('.my-plant-1').attr('value', '1');
				setTimeout(function(){
					$('.my-plant-1 img').attr('src', "${pageContext.request.contextPath}/image/wheat1.jpg");
					$('.my-plant-1').attr('value', '0');
					//如有必要在灌溉结束后更新后台数据库
					//****
				}, 5000);	
			}
			else{ //否则，触发登录事件
				alert('请先登陆...');
				$('#header-login').click();
			}
		});
	});
	//水稻
	$('.my-plant2-dot').popover();
	$('.my-plant2-dot').on('show.bs.popover', function () {
		myAjax('.my-plant2-dot', 'wheat2');
	});
	$('.my-plant2-dot').on('shown.bs.popover', function () {
		//处理灌溉键按下的事件
		$('#plant2-irrig').click(function(){
			//判断是否管理员已登录
			if(global_user !== ""){ //已经登录则开始灌溉
				$('.my-plant-2 img').attr('src', "${pageContext.request.contextPath}/image/001i.gif");
				$('.my-plant-2').attr('value', '1');
				setTimeout(function(){
					$('.my-plant-2 img').attr('src', "${pageContext.request.contextPath}/image/wheat2.jpg");
					$('.my-plant-2').attr('value', '0');
					//如有必要在灌溉结束后更新后台数据库
					//****
				}, 5000);
			}
			else{ //否则，触发登录事件
				alert('请先登陆...');
				$('#header-login').click();
			}
		});
	});
	//小麦
	$('.my-plant3-dot').popover();
	$('.my-plant3-dot').on('show.bs.popover', function () {
		myAjax('.my-plant3-dot', 'wheat3');
	});
	$('.my-plant3-dot').on('shown.bs.popover', function () {
		//处理灌溉键按下的事件
		$('#plant3-irrig').click(function(){
			//判断是否管理员已登录
			if(global_user !== ""){ //已经登录则开始灌溉
				$('.my-plant-3 img').attr('src', "${pageContext.request.contextPath}/image/001i.gif");
				$('.my-plant-3').attr('value', '1');
				setTimeout(function(){
					$('.my-plant-3 img').attr('src', "${pageContext.request.contextPath}/image/wheat3.jpg");
					$('.my-plant-3').attr('value', '0');
					//如有必要在灌溉结束后更新后台数据库
					//****
				}, 5000);
			}
			else{ //否则，触发登录事件
				alert('请先登陆...');
				$('#header-login').click();
			}
		});
	});
	//大棚
	$('.my-plant4-dot').popover();
	$('.my-plant4-dot').on('show.bs.popover', function () {
		myAjax('.my-plant4-dot', 'wheat4');
	});
	$('.my-plant4-dot').on('shown.bs.popover', function () {
		//处理灌溉键按下的事件
		$('#plant4-irrig').click(function(){
			//判断是否管理员已登录
			if(global_user !== ""){ //已经登录则开始灌溉
				$('.my-plant-4 img').attr('src', "${pageContext.request.contextPath}/image/001i.gif");
				$('.my-plant-4').attr('value', '1');
				setTimeout(function(){
					$('.my-plant-4 img').attr('src', "${pageContext.request.contextPath}/image/wheat4.jpg");
					$('.my-plant-4').attr('value', '0');
					//如有必要在灌溉结束后更新后台数据库
					//****
				}, 5000);
			}
			else{ //否则，触发登录事件
				alert('请先登陆...');
				$('#header-login').click();
			}
		});
	});
	</script>
</body>
</html>