<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>农田智联灌溉首页</title>

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
.my-bg .container{
	margin-top: 0px;
}
#myCarousel{
	margin:150px 0 0 0;
}
.carousel-inner img{
	margin:0 auto;
}
.tab-h2{
	font-size: 20px;
	color: #0059B2;
	text-align: center;
	letter-spacing: 1px;
	margin-top: 40px;
}
.tab-p{
	font-size: 15px;
	color:#999;
	text-align: center;
	letter-spacing: 1px;
	margin: 20px 0 40px 0;
}
.media-heading{
	margin: 5px 0 20px 0;
	font-size: small;
}
.text-muted0{
	color: #999;
	text-decoration: line-through;
	font-size: x-small;
}
.text-muted1{
	color: #999;
	font-size: x-small;
}
.tab2{
	padding: 30px 20px; 
	text-align: center;
	margin-bottom: 30px;
}
.tab3{
	/* background-color: #eee; */
	padding: 30px 20px; 
	text-align: center;
	margin-bottom: 40px;
}
/* 这里的图片大小配置看实际情况 */
.tab2 img{
	width:50%;
	height:50%;
}
.tab3 img{
	width:50%;
	height:50%;
}
.text h3{
	font-size: 20px;
}
.text p{
	font-size: 14px;
}
/*没有小于768px,是因为Bootstrap以移动端为优先设计  */
/* 小屏幕(pad,大于等于768px) */
@media (min-width: 768px){
	.tab-h2{
		font-size: 26px;
	}
	.tab-p{
		font-size: 16px;
	}
	.media-heading{
		font-size: medium;
	}
	.text-muted0{
		font-size: small;
	}
	.text-muted1{
		font-size: small;
	}
	.text h3{
		font-size: 22px;
	}
	.text p{
		font-size: 15px;
	}
	.tab2-text{
		float: left;
	}
	.tab2-img{
		float: right;
	}
}

/* 中屏幕(桌面显示器,大于等于992px) */
@media (min-width: 992px){
	.tab-h2{
		font-size: 28px;
	}
	.tab-p{
		font-size: 17px;
	}
	.my-p{
		font-size: small;
	}
	.text h3{
		font-size: 24px;
	}
	.text p{
		font-size: 16px;
	}
}

/* 大屏幕(大桌面显示器,大于等于1200px) */
@media (min-width: 1200px){
	.tab-h2{
		font-size: 30px;
	}
	.tab-p{
		font-size: 18px;
	}
	.media-heading{
		font-size: large;
	}
	.text-muted0{
		font-size: 15px;
	}
	.text-muted1{
		font-size: 15px;
	}
	.text h3{
		font-size: 26px;
	}
	.text p{
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
						<li class="active my-li"><a>首页</a></li>
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
						<li class="my-li"><a href="${pageContext.request.contextPath}/page/model_display">模型展示</a></li>
						<li class="my-li"><a href="${pageContext.request.contextPath}/page/contact">联系我们</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
	<div class="my-bg">
		<!--轮播图  -->
		<div class="carousel slide" id="myCarousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
				<li data-target="#myCarousel" data-slide-to="4"></li>
				<li data-target="#myCarousel" data-slide-to="5"></li>
			</ol>
			<div class="carousel-inner">
				<!--先把图片两端进行模糊化处理再取模糊后的颜色置于background中  -->
				<div class="item active" style="background: #133359">
					<img alt="图片" src="${pageContext.request.contextPath}/images/show1.png">
	
				</div>
				<div class="item" style="background: #030629">
					<img alt="图片" src="${pageContext.request.contextPath}/images/show2.png">
				</div>
				<div class="item" style="background: #016839">
					<img alt="图片" src="${pageContext.request.contextPath}/images/show3.png">
				</div>
				<div class="item" style="background: #FFFFFF">
					<img alt="图片" src="${pageContext.request.contextPath}/images/show4.png">
				</div>
				<div class="item" style="background: #1577E4">
					<img alt="图片" src="${pageContext.request.contextPath}/images/show5.png">
				</div>
				<div class="item" style="background: #FFFFFF">
					<img alt="图片" src="${pageContext.request.contextPath}/images/show6.png">
				</div>
			</div>
			<a href="#myCarousel" data-slide="prev" class="carousel-control left">
				<span class="glyphicon glyphicon-chevron-left" style="left: 30px"></span>
			</a> <a href="#myCarousel" data-slide="next"
				class="carousel-control right"> <span
				class="glyphicon glyphicon-chevron-right" style="right: 30px"></span>
			</a>
		</div>
		<div class="container">	
			<h2 class="tab-h2">「为什么选择智联灌溉平台」</h2>
			<p class="tab-p">多功能分区,信息化与智能的结合,淘汰以往的灌溉方式使得灌溉效率显著提升!</p>
			<div class="row">
				<div class="col-md-6" style="margin-bottom: 20px;">
					<div class="media">
						<div class="media-left">
							<a href="#"><img alt="图片" src="${pageContext.request.contextPath}/img/car.jpg"
								class="media-object"></a>
						</div>
						<div class="media-body">
							<h4 class="media-heading">无人车信息采集</h4>
							<p class="text-muted0">其他:采用耗费人力物力的人工信息数据采集</p>
							<p class="text-muted1">我们:采用无人车信息拍摄采集,低廉 便捷 高效</p>
						</div>
					</div>
				</div>
				<div class="col-md-6" style="margin-bottom: 20px;">
					<div class="media">
						<div class="media-left">
							<a href="#"><img alt="图片" src="${pageContext.request.contextPath}/img/ai.jpg"
								class="media-object"></a>
						</div>
						<div class="media-body">
							<h4 class="media-heading">人工智能算法预测</h4>
							<p class="text-muted0">其他:凭借个人经验,高误差 低效率</p>
							<p class="text-muted1">我们:采用机器学习算法给出大数据下的灌溉预测判断 准确 高效</p>
						</div>
					</div>
				</div>
				<div class="col-md-6" style="margin-bottom: 20px;">
					<div class="media">
						<div class="media-left">
							<a href="#"><img alt="图片" src="${pageContext.request.contextPath}/img/info.jpg"
								class="media-object"></a>
						</div>
						<div class="media-body">
							<h4 class="media-heading">综合信息展示</h4>
							<p class="text-muted0">其他:传统信息展示内容缺乏 生硬</p>
							<p class="text-muted1">我们:将各种实时数据以图形化形式展示出来 直观 灵活</p>
						</div>
					</div>
				</div>
				<div class="col-md-6" style="margin-bottom: 20px;">
					<div class="media">
						<div class="media-left">
							<a href="#"><img alt="图片" src="${pageContext.request.contextPath}/img/tf.jpg"
								class="media-object"></a>
						</div>
						<div class="media-body">
							<h4 class="media-heading">TensorFlow技术</h4>
							<p class="text-muted0">其他:对灌溉传统的数据进行人工经验分析</p>
							<p class="text-muted1">我们:在TensorFlow下对灌溉数据进行模型分析处理</p>
						</div>
					</div>
				</div>
			</div>
			<div class="row tab2" style="background-image:url(${pageContext.request.contextPath}/images/index_bg2.png);">
				<div class="col-md-5 col-sm-6 tab2-img">
					<img alt="图片" src="${pageContext.request.contextPath}/images/trans.png"
						class="auto img-responsive center-block">
					<!-- 图片设置为响应式 center-block设置图片居中 -->
				</div>
				<div class="col-md-7 col-sm-6 text tab2-text">
					<h3>信息与智能</h3>
					<p>海量数据云端分析处理，智能决策灌溉方案...</p>
				</div>
			</div>
			<div class="row tab3" style="background-image:url(${pageContext.request.contextPath}/images/index_bg1.png);">
				<div class="col-md-5 col-sm-6">
					<img alt="图片" src="${pageContext.request.contextPath}/images/info_ai.png"
						class="auto img-responsive center-block">
				</div>
				<div class="col-md-7 col-sm-6 text">
					<h3>科技与现代</h3>
					<p>改变传统的低效灌溉模式，致力于减轻人工生产负担，让农业与科技紧密联系，展现出现代化农产气息...</p>
				</div>
			</div>
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
	<script src="${pageContext.request.contextPath}/js/common.js"></script>
	<script>
		var global_user =  "${user}";
		if(global_user === ""){
			$('.my-header-login').html('亲，没<a id="header-login" href="" data-toggle="modal" data-target="#loginModal">登录</a>先登陆吧!');
		}
		else{
			$('.my-header-login').html('尊敬的管理员：<a>'+"${user.name}"+'</a>,欢迎您！<a href="${pageContext.request.contextPath}/logOff">退出登录</a>');
		}
	//设置轮播时间间隔
		$('#myCarousel').carousel({
	   		interval : 3000,
	   	});
		//解决谷歌浏览器的问题
       	$(window).load(function(){
       		$('.text').eq(0).css('margin-top',($('.auto').eq(0).height()-$('.text').eq(0).height())/2);
           	$('.text').eq(1).css('margin-top',($('.auto').eq(1).height()-$('.text').eq(1).height())/2);
       	});
       	
       	$(window).resize(function(){
       		$('.text').eq(0).css('margin-top',($('.auto').eq(0).height()-$('.text').eq(0).height())/2);
           	$('.text').eq(1).css('margin-top',($('.auto').eq(1).height()-$('.text').eq(1).height())/2);
       	});
	</script>
</body>
</html>