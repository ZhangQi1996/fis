<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>团队简介</title>

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
	.profile_b, .profile_t{
		border-radius:10px;
		padding: 10px;
		background-color:#3AB4FF;
	}
	.profile_b img, .profile_g img{
		width: 100px;
		height: 100px;
		border-radius:50px;
	}
	.profile_g{
		border-radius:10px;
		padding: 10px;
		background-color:#FEC7DE;
	}
	.profile_t img{
		width: 100px;
		height: 100px;
		border-radius:50px;
	}
	.my-h3{
		margin-top: 5px;
	}
	.media-middle{
		padding-left: 10px !important;
	}
	@media (min-width: 768px){
		.media-middle{
			padding-left: 30px !important;
		}
	}
	@media (min-width: 992px){
		.profile_b img, .profile_g img{
			width: 200px;
			height: 200px;
			border-radius:100px;
		}
		.profile_t img{
			width: 300px;
			height: 300px;
			border-radius:150px;
		}
		.media-middle{
			padding-left: 60px !important;
		}
	}
	@media (min-width: 1200px){
		.media-middle{
			padding-left: 80px !important;
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
						<li class="dropdown my-li active">
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
		<div class="container">
			<div class="row" style="margin-top:40px; margin-bottom: 20px;">
				<div style="background-color:#F8F8F6; border-radius: 4px;">
					<!-- 路径组件-面包屑导航 -->
					<ol class="breadcrumb"><!--也可用ul  -->
						<li><a>团队项目概况</a></li>
						<li class="active">团队简介</li>
					</ol>
				</div>
				<div>
					<h3><em>团队资料</em></h3>
					<hr style="margin-top:0px; border-top-width: 3px">
					<div class="media profile_t">
						<div class="media-left"><!-- 可用media-top,bottom,middle,来调整相对位置 -->
							<img alt="图片" src="${pageContext.request.contextPath}/img/team.jpg">
						</div>
						<div class="media-body media-middle" style="padding-left:100px">
							<p class="media-heading my-h3">团队名称:智联队</p>
							<p class="my-h5"><label>团队介绍:</label>这是一个软件与硬件相结合而展现创作出基于图像识别的农田信息可视化及智能灌溉系统的队伍。
								团队组建于2019年2月，在老师的带领下，团队中的每个人都发挥自己的特点，合理的分工与合作。在课余时间内，
								共同努力做好此开发系统，这对每一个队员来说是一个挑战，因为之前都没接触过。
								在开发过程中中，每一位同学都表现出了强烈的学习欲望，这既是一个有挑战性的地方，
								也是一个体现团队精神的地方。加油，我们的团队是最棒的！</p>
						</div>
					</div>
				</div>
				<div>
					<h3><em>团队成员</em></h3>
					<hr style="margin-top:0px; border-top-width: 3px">
				</div>
	
					<div class="media profile_g">
					<div class="media-left"><!-- 可用media-top,bottom,middle,来调整相对位置 -->
						<img alt="图片" src="${pageContext.request.contextPath}/img/xmy.jpg" width="200" heigh="200">
					</div>
					<div class="media-body media-middle" style="padding-left:50px">
						<p class="media-heading my-h3">姓名:邢梦妍      专业:电子信息工程</p>
						<p class="my-h5"><label>团队角色：</label>队长</p>
						<p class="my-h5"><label>联系方式：</label>18567709618</p>
						<p class="my-h5"><label>基本介绍：</label>性格开朗，积极向上，大学期间想参与更多的竞赛和锻炼，不断提升自己，在比赛自我激励和不断学习。</p>
					</div>
				</div>
							
				<div class="media profile_b">
					<div class="media-left"><!-- 可用media-top,bottom,middle,来调整相对位置 -->
						<img alt="图片" src="${pageContext.request.contextPath}/img/cj.jpg" width="200" heigh="200">
					</div>
					<div class="media-body media-middle" style="padding-left:50px">
						<p class="media-heading my-h3">姓名:陈 健   专业:软件工程</p>
						<p class="my-h5"><label>团队角色：</label>第一参与人</p>
						<p class="my-h5"><label>联系方式：</label>13027520906</p>
						<p class="my-h5"><label>基本介绍：</label>我喜欢计算机编程，喜欢设计有个性的网站，喜欢在实践中锻炼自己，提升自己的计算机软件设计能力。</p>
					</div>
				</div>
				
				<div class="media profile_b">
					<div class="media-left"><!-- 可用media-top,bottom,middle,来调整相对位置 -->
						<img alt="图片" src="${pageContext.request.contextPath}/img/sjh.jpg" width="200" heigh="200">
					</div>
					<div class="media-body media-middle" style="padding-left:50px">
						<p class="media-heading my-h3">姓名:宋金翰       专业:电子信息工程</p>
						<p class="my-h5"><label>团队角色：</label>第一参与者</p>
						<p class="my-h5"><label>联系方式：</label>15333828453</p>
						<p class="my-h5"><label>基本介绍：</label>喜欢接触新的知识领域，对于未知的世界充满好奇，探索欲很强。平时会散步，听歌和看电影。最喜欢的事是和同学一起做实验。</p>
					</div>
				</div>
				
				<div class="media profile_b">
					<div class="media-left"><!-- 可用media-top,bottom,middle,来调整相对位置 -->
						<img alt="图片" src="${pageContext.request.contextPath}/img/zhy.jpg" width="200" heigh="200">
					</div>
					<div class="media-body media-middle" style="padding-left:50px">
						<p class="media-heading my-h3">姓名:郑海颖      专业:计算机应用技术</p>
						<p class="my-h5"><label>团队角色：</label>第一参与人</p>
						<p class="my-h5"><label>联系方式：</label>15537177559 </p>
						<p class="my-h5"><label>基本介绍：</label>学习上，喜欢研究学习新的知识和方法，对于编程始终保持热情；生活上，积极乐观，喜欢运动。希望每一天都过的有意义。</p>
					</div>
				</div>
				
				<div class="media profile_b">
					<div class="media-left"><!-- 可用media-top,bottom,middle,来调整相对位置 -->
						<img alt="图片" src="${pageContext.request.contextPath}/img/qzn.jpg" width="200" heigh="200">
					</div>
					<div class="media-body media-middle" style="padding-left:50px">
						<p class="media-heading my-h3">姓名:秦泽宁        专业:计算机应用技术</p>
						<p class="my-h5"><label>团队角色：</label>队员</p>
						<p class="my-h5"><label>联系方式：</label>13255657229 </p>
						<p class="my-h5"><label>基本介绍：</label>工作上，我相信有一个良好的工作态度和一颗责任心才能够高效的完成任务。生活中，喜欢挑战新鲜的事物，自己热爱的就会不知疲倦的去追求。</p>
					</div>
				</div>
	
				<div class="media profile_b">
					<div class="media-left"><!-- 可用media-top,bottom,middle,来调整相对位置 -->
						<img alt="图片" src="${pageContext.request.contextPath}/img/yk.jpg" width="200" heigh="200">
					</div>
					<div class="media-body media-middle" style="padding-left:50px">
						<p class="media-heading my-h3">姓名:闫  宽        专业:电子信息科学与技术</p>
						<p class="my-h5"><label>团队角色：</label>队员</p>
						<p class="my-h5"><label>联系方式：</label>15515768049 </p>
						<p class="my-h5"><label>基本介绍：</label>大学期间热爱挑战，专业知识扎实，对于课外拓展内容积极参与，是一个所学即精通的人。</p>
					</div>
				</div>
				
				<div class="media profile_g">
					<div class="media-left"><!-- 可用media-top,bottom,middle,来调整相对位置 -->
						<img alt="图片" src="${pageContext.request.contextPath}/img/nwt.jpg" width="200" heigh="200">
					</div>
					<div class="media-body media-middle" style="padding-left:50px">
						<p class="media-heading my-h3">姓名:牛玮婷   专业:电子科学与技术</p>
						<p class="my-h5"><label>团队角色：</label>队员</p>
						<p class="my-h5"><label>联系方式：</label>18638920694</p>
						<p class="my-h5"><label>基本介绍：</label>学习成绩优异，积极上进，性格开朗，对待事情认真负责。参加过一些科技创新的比赛并获得奖励，
						生活中喜欢阅读科技类书刊，喜欢健身，相信努力就能不断超越自己。</p>
					</div>
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
		var global_user =  "${user}";
		if(global_user === ""){
			$('.my-header-login').html('亲，没<a id="header-login" href="" data-toggle="modal" data-target="#loginModal">登录</a>先登陆吧!');
		}
		else{
			$('.my-header-login').html('尊敬的管理员：<a>'+"${user.name}"+'</a>,欢迎您！<a href="${pageContext.request.contextPath}/logOff">退出登录</a>');
		}
	</script>
</body>
</html>