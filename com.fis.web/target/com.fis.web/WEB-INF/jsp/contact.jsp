<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>联系我们</title>

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
						<li class="dropdown my-li">
							<a href="javascript;void(0)" data-toggle="dropdown">信息建设<i class="caret"></i></a>
							<ul class="dropdown-menu">
								<li><a href="${pageContext.request.contextPath}/page/tech_show">图像采集展示</a></li>
								<li><a href="${pageContext.request.contextPath}/page/weather">气象信息</a></li>
							</ul>
						</li>
						<li class="my-li"><a href="${pageContext.request.contextPath}/page/model_display">模型展示</a></li>
						<li class="my-li active"><a href="${pageContext.request.contextPath}/page/contact">联系我们</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
	<div class="my-bg">
		<div class="container">
			<div class="ContactPage" style="margin: 30px 10px 50px 10px">
				<h4><strong>产品优势:</strong></h4>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;基于BIM技术的灌区信息管理系统是我们团队结合软硬件两方面的知识共同努力的产品。
					在开发此系统之前，我们了解到普通的农田灌溉方式一般可分为传统的地面灌溉、普通喷灌以及微灌。这类灌溉方式往往耗水量大、水的利用率较低，是一类很不合理、科学的农业灌溉方式。
					另外，普通喷灌技术是中国农业生产中较普遍的灌溉方式，但普通喷灌技术的水的利用效率也不高。
					现代农业微灌溉技术一般节水性能好、水的利用率较传统灌溉模式高。<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在今后，若我们的系统产品开发成功投入使用中，可以利用智能灌溉系统来节约资源，提高普遍的的农业生产效率。</p>			
				<div class="ContactPage-para">
					<strong>团队名称：智联队</strong><br/>
				    </br>
				</div>
				<h4><strong>请通过以下方式与我们取得联系：</strong></h4>
				<br>
				<strong>地址：</strong>河南省郑州市华北水利水电大学龙子湖校区S5号楼<br/>
				<div class="ContactPage-para">
					<strong>电话：</strong>13613842139
				</div>
				<div class="ContactPage-para">
					<strong>品牌合作：</strong><a href="#">bd@fis.com</a>
				</div>
				<div class="ContactPage-para">
					<strong>广告投放：</strong><a href="#">ad@fis.com</a>
				</div>
				<div class="ContactPage-para">
					<strong>媒体垂询：</strong><a href="#">media@fis.com</a>
				</div>
				<div class="ContactPage-para">
					<strong>违法和不良信息举报：</strong>13613842139
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
	</script>
</body>
</html>