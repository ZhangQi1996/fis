<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>模型展示</title>

<!-- Bootstrap -->
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/willesPlay.css"/>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<style>
	.my-pic1-dot, .my-pic2-dot{
		position: absolute;
	}
	.popover{
		max-width: 50%; 
		height: auto;
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
						<li class="dropdown my-li">
							<a href="javascript;void(0)" data-toggle="dropdown">信息建设<i class="caret"></i></a>
							<ul class="dropdown-menu">
								<li><a href="${pageContext.request.contextPath}/page/tech_show">图像采集展示</a></li>
								<li><a href="${pageContext.request.contextPath}/page/weather">气象信息</a></li>
							</ul>
						</li>
						<li class="my-li active"><a href="${pageContext.request.contextPath}/page/model_display">模型展示</a></li>
						<li class="my-li"><a href="${pageContext.request.contextPath}/page/contact">联系我们</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
	<div class="my-bg">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div id="willesPlay">
						<div class="playHeader">
							<div class="videoName">产品模型</div>
						</div>
						<div class="playContent">
							<video width="100%" height="100%" id="playVideo">
								<source src="${pageContext.request.contextPath}/video/1.mp4" type="video/mp4"></source>
								当前浏览器不支持 video直接播放，点击这里下载视频： <a href="/">下载视频</a>
							</video>
							<div class="playTip glyphicon glyphicon-play"></div>
						</div>
						<div class="playControll">
							<div class="playPause playIcon"></div>
							<div class="timebar">
								<span class="currentTime">0:00:00</span>
								<div class="progress">
									<div class="progress-bar progress-bar-danger progress-bar-striped" role="progressbar" aria-valuemin="0" aria-valuemax="100" style="width: 0%"></div>
									</div>
								<span class="duration">0:00:00</span>
							</div>
							<div class="otherControl">
								<span class="volume glyphicon glyphicon-volume-down"></span>
								<span class="fullScreen glyphicon glyphicon-fullscreen"></span>
								<div class="volumeBar">
									<div class="volumewrap">
										<div class="progress">
											<div class="progress-bar progress-bar-danger" role="progressbar" aria-valuemin="0" aria-valuemax="100" style="width: 8px;height: 40%;"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
				</div>
			</div>
		<!--	<div class="row" style="margin-bottom: 50px;">
				<h3 class="text-center">图像模型</h3>
				<img alt="图片" src="${pageContext.request.contextPath}/img/main_modal.jpg" class="img-thumbnail img-responsive center-block my-pic" >
				<div class="my-pic1-dot" data-toggle="popover" title="<p class='text-center'>农田1</p>" data-content="" data-html="true" data-placement="right auto" data-trigger="hover foucs" data-container="body"></div>
				<div class="my-pic2-dot" data-toggle="popover" title="<p class='text-center'>农田2</p>" data-content="" data-html="true" data-placement="bottom auto" data-trigger="hover foucs" data-container="body"></div>
			</div> -->
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
	<script src="${pageContext.request.contextPath}/js/willesPlay.js" type="text/javascript" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/js/common.js"></script>
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
		$(window).load(function(){
			var pic_dis_left = $('.my-pic').offset().left;
			var pic_width = $('.my-pic').width();
			var pic_height = $('.my-pic').height();
			var pic_top = $('.my-pic').offset().top;
			$('.my-pic1-dot').css('top', pic_top);
			$('.my-pic1-dot').css('left', pic_dis_left);
			$('.my-pic1-dot').css('height', pic_height / 2);
			$('.my-pic1-dot').css('width', pic_width * 0.4);
			$('.my-pic2-dot').css('top', pic_top + pic_height / 2);
			$('.my-pic2-dot').css('left', pic_dis_left);
			$('.my-pic2-dot').css('height', pic_height / 2);
			$('.my-pic2-dot').css('width', pic_width * 0.4);
		});
		$(window).resize(function(){
			var pic_dis_left = $('.my-pic').offset().left;
			var pic_width = $('.my-pic').width();
			var pic_height = $('.my-pic').height();
			var pic_top = $('.my-pic').offset().top;
			$('.my-pic1-dot').css('top', pic_top);
			$('.my-pic1-dot').css('left', pic_dis_left);
			$('.my-pic1-dot').css('height', pic_height / 2);
			$('.my-pic1-dot').css('width', pic_width * 0.4);
			$('.my-pic2-dot').css('top', pic_top + pic_height / 2);
			$('.my-pic2-dot').css('left', pic_dis_left);
			$('.my-pic2-dot').css('height', pic_height / 2);
			$('.my-pic2-dot').css('width', pic_width * 0.4);
		});
	
		var sensor_temp = 25; //传感器温度
		var sensor_humid = 50;	//传感器湿度
		var temp = 20; //外界温度
		var humid = 40;	//外界湿度
		var wind_dir = "东风";	//风向
		var wind_power = 3; //风力
		var dgt_level = 5;	//干旱等级
		var code_str = "<p class='my-font'>测点土壤传感器温度："+sensor_temp+"摄氏度</p><p class='my-font'>测点土壤传感器湿度："+sensor_humid
			+"%</p><p class='my-font'>外界温度："+temp+"摄氏度</p><p class='my-font'>外界湿度："+humid+"%</p><p class='my-font'>外界风向："+wind_dir+"</p><p class='my-font'>外界风力："
			+wind_power+"</p><p class='my-font'>判定干旱等级："+dgt_level+"</p>";
		var main_code = "<div><div class='col-md-9 col-sm-6'><img alt='图片' src='${pageContext.request.contextPath}/img/farmland1.png' class='img-responsive'></div><div class='col-md-3 col-sm-6'>" + code_str + "</div></div>";
    	
		function myAjax(classStr, pointId){	
			var url = "../point/" + pointId;
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
			url = "../modelRes/" + pointId;
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
			    	code_str = "<p class='my-font'>测点土壤传感器温度："+sensor_temp+"摄氏度</p><p class='my-font'>测点土壤传感器湿度："+sensor_humid
					+"%</p><p class='my-font'>外界温度："+temp+"摄氏度</p><p class='my-font'>外界湿度："+humid+"%</p><p class='my-font'>外界风向："+wind_dir+"</p><p class='my-font'>外界风力："
					+wind_power+"</p><p class='my-font'>判定干旱等级："+dgt_level+"</p>";
					if(pointId == '005')
						main_code = "<div><div class='col-md-9 col-sm-6'><img alt='图片' src='${pageContext.request.contextPath}/img/farmland1.png' class='img-responsive'></div><div class='col-md-3 col-sm-6'>" + code_str + "</div></div>";
					else
						main_code = "<div><div class='col-md-9 col-sm-6'><img alt='图片' src='${pageContext.request.contextPath}/img/farmland2.png' class='img-responsive'></div><div class='col-md-3 col-sm-6'>" + code_str + "</div></div>";
					$(classStr).attr("data-content",main_code);
			    }
			});
		}
		
		$('.my-pic1-dot').popover();
		$('.my-pic1-dot').on('show.bs.popover', function () {
			myAjax('.my-pic1-dot', '005');
		});
		$('.my-pic1-dot').on('shown.bs.popover', function () {
			var width = $(window).width();
			if(width > 1200)
				$('.my-font').css('font-size', '16px');
			else if(width > 900)
				$('.my-font').css('font-size', '10px');
			else if(width > 700)
				$('.my-font').css('font-size', '5px');
			else
				$('.my-font').css('font-size', '3px');
		});
		$('.my-pic2-dot').popover();
		$('.my-pic2-dot').on('show.bs.popover', function () {
			myAjax('.my-pic2-dot', '006');
		});
		$('.my-pic2-dot').on('shown.bs.popover', function () {
			var width = $(window).width();
			if(width > 1200)
				$('.my-font').css('font-size', '16px');
			else if(width > 900)
				$('.my-font').css('font-size', '10px');
			else if(width > 700)
				$('.my-font').css('font-size', '5px');
			else
				$('.my-font').css('font-size', '3px');
		});
		
	</script>
</body>
</html>