<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>灌溉策略</title>

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
	canvas{ 
		-moz-user-select: none;
		-webkit-user-select: none;
		-ms-user-select: none;
	}
	#chartjs-tooltip {
		opacity: 1;
		position: absolute;
		background: rgba(0, 0, 0, .7);
		color: white;
		border-radius: 3px;
		-webkit-transition: all .1s ease;
		transition: all .1s ease;
		pointer-events: none;
		-webkit-transform: translate(-50%, 0);
		transform: translate(-50%, 0);
	}

	.chartjs-tooltip-key {
		display: inline-block;
		width: 10px;
		height: 10px;
		margin-right: 10px;
	}
	.irrig-nav{
		position: fixed;
		top: 200px;
		left: 10px;
	}
	.irrig-nav li{
		width: 50px;
	}
	.canvas-holder {
		padding-top: 30px;
	}
	.irrig-nav li{
		font-size: 10px;
		width: 40px;
	}
	.irrig-pred{
		list-style:none;
		margin-top: 30px;
		margin-bottom: 20px;
	}
	#irrig-pred-btn{
		width:80px;
	}
	.irrig-pred-pic{
		width: 200px;
	}
	.irrig-pred li{
		font-size: 11px;
	}
	@media (min-width: 768px){
		.irrig-nav li{
			font-size: 12px;
			width: 50px;
		}
		.irrig-pred-pic{
			width: 300px;
		}
		#irrig-pred-btn{
			width:100px;
		}
		.irrig-pred li{
			font-size: 15px;
		}
	}
	@media (min-width: 992px){
		.irrig-nav li{
			font-size: 14px;
			width: 80px;
		}
		.irrig-pred-pic{
			width: 260px;
		}
		.irrig-pred li{
			font-size: 16px;
		}
	}
	@media (min-width: 1200px){
		.irrig-nav{
			top: 200px;
			left: 80px;
		}
		.irrig-nav li{
			font-size: 16px;
			width: 150px;
		}
		.irrig-pred-pic{
			width: 300px;
		}
		.irrig-pred li{
			font-size: 18px;
		}
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
						<li class="my-li active"><a href="${pageContext.request.contextPath}/page/irrig_strategy">灌溉策略</a></li>
						<li class="dropdown my-li">
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
			<div class="row" style="margin-top:40px; margin-bottom: 50px;">
				<div class="col-xs-1">
					<!-- nav-stacked:纵向排列  data-offset-top="150"值应保持与上面那个height相同-->
				</div>
				<div class="col-xs-11">
					<div style="background-color:#F8F8F6; border-radius: 4px;">
						<!-- 路径组件-面包屑导航 -->
						<ol class="breadcrumb irrig-bread-nav">
							<li><a>灌溉策略</a></li>
							<li class="active">小麦发芽期</li>
						</ol>
					</div>
					<div class="irrig-info">
						<h3><strong>种植区视图</strong></h3>
						<hr style="margin-top:0px; border-top-width: 3px">
						<img alt="图片" src="${pageContext.request.contextPath}/image/wheat1.jpg" width="100%" class="irrig-show-pic" value="0">
						<h3><strong>种植区详情</strong></h3>
						<hr style="margin-top:0px; border-top-width: 3px">
						<div class="row">
							<div class="col-md-6 col-sm-12">
								<div class="canvas-holder center-block">
									<canvas id="my-chart1"/>
								</div>
							</div>
							<div class="col-md-6 col-sm-12">
								<div class="canvas-holder center-block">
									<canvas id="my-chart2"/>
								</div>
							</div>
							<div class="col-md-6 col-sm-12">
								<div class="canvas-holder center-block">
									<canvas id="my-chart3"/>
								</div>
							</div>
							<div class="col-md-6 col-sm-12">
								<div class="canvas-holder">
									<p class="h4 text-center"><strong>灌溉预测</strong></p>
									<p class="h5 text-center"><em>--采用深度学习算法训练灌溉预测和干旱等级判定模型,通过模型来给出灌溉方案!--</em></p>
									<div class="col-md-7 col-xs-6">
										<img class="irrig-pred-pic" alt="pred_pic" src="${pageContext.request.contextPath}/img/irrig_pred.png"></img>
									</div>
									<div class="col-md-5 col-xs-6">
										<ul class="irrig-pred">
											<li class="irrig-pred-1">干旱等级: 1级</li> <!--等级从1~5级  -->
											<li class="irrig-pred-2">是否灌溉: 否</li><!-- 是   建议   否 -->
											<li class="irrig-pred-3">灌溉方式: 自动</li> <!-- 自动  人工 -->
										</ul>
										<button class="btn btn-primary center-block" id="irrig-pred-btn">开始灌溉</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<ul class="nav nav-pills nav-stacked irrig-nav">
			<li class="active irrig-nav-1 text-center"><a href="">小麦发芽期</a></li>
			<li class="irrig-nav-2 text-center"><a href="${pageContext.request.contextPath}/page/irrig_strategy2">小麦幼苗期</a></li>
			<li class="irrig-nav-3 text-center"><a href="${pageContext.request.contextPath}/page/irrig_strategy3">小麦抽穗期</a></li>
			<li class="irrig-nav-4 text-center"><a href="${pageContext.request.contextPath}/page/irrig_strategy4">小麦成熟期</a></li>
		</ul>
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
		<p class="text-center my-h5" style="margin-top: 10px; color:#777777;"><font color="#22B26D">豫 ICP备12345678. </font>© 2018 BIM信息化灌溉. Powered by Infinity Group</p>
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
	<script src="${pageContext.request.contextPath}/js/Chart.js"></script>
	<script src="${pageContext.request.contextPath}/js/utils.js"></script>
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
	<script>
		var pointId = "001";
		var temp = 0;
		var humid = 0;
		var sensor_temp = 0;
		var sensor_humid = 0;
		var wind_dir = "东风";
		var wind_power = 0;
		var ad1 = 0;
		var ad2 = 0;
		var url = "../point/" + pointId;
		$.ajax({
		    url:url,
		    type:'GET', //GET
		    async:false,    //或false,是否异步
		    timeout:1000,    //超时时间
		    dataType:'json',    //返回的数据格式：json/xml/html/script/jsonp/text
		    beforeSend:function(xhr){
		    },
		    success:function(data,textStatus,jqXHR){
		    	sensor_temp = data.sensor_temp;
		    	sensor_humid = data.sensor_humid;
		    	temp = data.zigbee_temp;
		    	humid = data.zigbee_humid;
		    	wind_dir = data.wind_direct;
		    	wind_power = data.wind_power === "微风" ? "1级" : data.wind_power;
		    	wind_power = parseInt(data.wind_power.split("级")[0]);
		    	ad1 = data.ad0;
		    	ad2 = data.ad1;
		    },
		    error:function(xhr,textStatus){
		        alert("系统忙碌!");
		    }
		});
		var myChart1 = new Chart(document.getElementById("my-chart1").getContext('2d'), {
		    type: 'bar',
		    data: {
		        labels: ["外部温度", "传感器温度", "传感器1电流", "传感器2电流"],
		        datasets: [{
		            label: '温度或电流',
		            data: [temp, sensor_temp, ad1, ad2],
		            backgroundColor: [
		                'rgba(255, 99, 132, 0.2)',
		                'rgba(54, 162, 235, 0.2)',
		                'rgba(255, 206, 86, 0.2)',
		                'rgba(75, 192, 192, 0.2)'
		            ],
		            borderColor: [
		                'rgba(255,99,132,1)',
		                'rgba(54, 162, 235, 1)',
		                'rgba(255, 206, 86, 1)',
		                'rgba(75, 192, 192, 1)'
		            ],
		            borderWidth: 1
		        }]
		    },
		    options: {
		    	title:{
					display:true,
					text:'种植区测点区域温度及传感器电流'
				},
		        scales: {
		            yAxes: [{
		                ticks: {
		                    beginAtZero:true
		                }
		            }]
		        }
		    }
		});
		function myWind(wind_dir, wind_power){
        	var l = [0,0,0,0,0,0,0,0];
        	var index = 0;
        	switch(wind_dir){
        		case "北风": index = 0; break;
        		case "东北风": index = 1; break;
        		case "东风": index = 2; break;
        		case "东南风": index = 3; break;
        		case "南风": index = 4; break;
        		case "西南风": index = 5; break;
        		case "西风": index = 6; break;
        		case "西北风": index = 7; break;
        	}
        	l[index] = wind_power;
        	return l;
        }
		var myChart2 = new Chart(document.getElementById("my-chart2"), {
		    "type": "radar",
		    "data": {
		        "labels": ["北风", "东北风", "东风", "东南风", "南风", "西南风", "西风","西北风"],
		        "datasets": [{
		            "label": "风向及风力",
		            "data": myWind(wind_dir, wind_power),
		            "fill": true,
		            "backgroundColor": "rgba(255, 99, 132, 0.2)",
		            "borderColor": "rgb(255, 99, 132)",
		            "pointBackgroundColor": "rgb(255, 99, 132)",
		            "pointBorderColor": "#fff",
		            "pointHoverBackgroundColor": "#fff",
		            "pointHoverBorderColor": "rgb(255, 99, 132)"
		        }]
		    },
		    "options": {
		    	title:{
					display:true,
					text:'种植区测点区域风向及风力'
				},
		        "elements": {
		            "line": {
		                "tension": 0,
		                "borderWidth": 3
		            }
		        }
		    }
		});
		var myChart3 = new Chart(document.getElementById("my-chart3"), {
		    "type": "polarArea",
		    "data": {
		        "labels": ["外界湿度", "传感器湿度"],
		        "datasets": [{
		            "label": "湿度(%百分比)",
		            "data": [humid, sensor_humid],
		            "backgroundColor": ["rgb(255, 99, 132)", "rgb(75, 192, 192)"]
		        }]
		    },
		    "options": {
		    	title:{
					display:true,
					text:'种植区测点区域温度'
				},
		        "elements": {
		            "line": {
		                "tension": 0,
		                "borderWidth": 3
		            }
		        }
		    }
		});
		var dgt_level = "0级";
		var irrig_prop = "否";
		url = "../modelRes/" + pointId;
		$.ajax({
		    url:url,
		    type:'GET', //GET
		    async:false,    //或false,是否异步
		    timeout:1000,    //超时时间
		    dataType:'json',    //返回的数据格式：json/xml/html/script/jsonp/text
		    beforeSend:function(xhr){
		    },
		    success:function(data,textStatus,jqXHR){
		    	dgt_level = data.drought_level;
		    	irrig_prop = data.irrig_proposal;
		    },
		    error:function(xhr,textStatus){
		        alert("系统忙碌!");
		    }
		});
		$(".irrig-pred-1").html("干旱等级: "+ dgt_level);
		$(".irrig-pred-2").html("是否灌溉: "+ irrig_prop);
		//处理灌溉键按下的事件
		$('#irrig-pred-btn').click(function(){
			//判断是否管理员已登录
			if(global_user !== ""){ //已经登录则开始灌溉
				$('#irrig-pred-btn').text('灌溉中..');
				$('#irrig-pred-btn').addClass('disabled');
				$('.irrig-show-pic').attr('src', "${pageContext.request.contextPath}/image/001i.gif");
				$('.irrig-show-pic').attr('value', '1');
				setTimeout(function(){
					$('.irrig-show-pic').attr('src', "${pageContext.request.contextPath}/image/wheat1.jpg");
					$('.irrig-show-pic').attr('value', '0');
					$('#irrig-pred-btn').removeClass('disabled');
					$('#irrig-pred-btn').text('开始灌溉');
					//如有必要在灌溉结束后更新后台数据库
					//****
				}, 5000);
			}
			else{ //否则，触发登录事件
				alert('请先登陆...');
				$('#header-login').click();
			}
		});
		
		
		
	</script>
</body>
</html>