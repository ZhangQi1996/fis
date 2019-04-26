<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>产品简介</title>
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
</style>
<body data-spy="scroll" data-target="#myScrollspy">
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
						<li class="dropdown my-li active">
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
			<div class="row" style="margin-top: 40px;">
				<!--occupy 3 columns  -->
				<div class="col-xs-3" id="myScrollspy">
					<!-- nav-stacked:纵向排列  data-offset-top="150"值应保持与上面那个height相同-->
					<ul class="nav nav-pills nav-stacked" data-spy="affix" data-offset-top="200"><!--data-spy="affix" data-offset-top="150"可以放入jq配置先加一个id="myAffix"  -->
						<li class="active"><a href="#section-1">无人车技术</a></li>
						<li ><a href="#section-2">传感器技术</a></li>
						<li ><a href="#section-3">软件技术</a></li>
					</ul>
				</div>
				<div class="col-xs-9">
					<!-- 路径组件-面包屑导航 -->
					<ol class="breadcrumb"><!--也可用ul-->
						<li><a>产品说明</a></li>
						<li class="active">产品简介</li>
					</ol>
					<h2 id="section-1">无人车技术</h2>
					<p style="line-height: 2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							无人车是一种由无线电遥控设备或自身程序控制装置操纵的无人驾驶行驶器。
							无人车用途广泛，成本低，效费比好；无人员伤亡风险；生存能力强，机动性能好，使用方便，在现代战争中有极其重要的作用，在民用领域更有广阔的前景。<br/>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在军事领域无人车分为侦察机和靶机：<br/>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;侦察机：可用于完成战场侦察和监视、定位校射、毁伤评估、电子战等；<br/>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;靶  机：可作为火炮、导弹的靶标等。<br/>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在民用领域：可用于地图测绘、地质勘测、灾害监测、气象探测、空中交通管制、
							边境巡逻监控、通信中继、农药喷洒等。像昆明劲鹰无人车，在航测、航拍、航飞服务、遥感等方面做的比较好<br/>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;无人车行驶时，地面、舰艇上或母机遥控站人员通过雷达等设备，对其进行跟踪、定位、遥控、遥测和数字传输。</p>
					<h4>四轴行驶器</h4>
					<p style="line-height: 2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;四轴行驶器的基本组成主要是由电机、电调、电池、浆叶、机架、遥控器、驾控组成。下面我们以市场上常见的 DIY 大四轴来介绍这些部件。<br/>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;电机:电机分为有刷电机和无刷电机两类  空心杯电机  无刷电机有刷电机体积小价格便宜而且控制简单，比较适用于做微型四轴。无刷电机体积稍大，载重能力强，比较适用于 DIY 大四轴。<br/>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MOS管和电调:微型四轴和大四轴一般分别使用MOS管和电调驱动电机。电调:即为电子调速器，控制电机转动、停止及转速。有刷电机电调通常只需要一个 MOS 管，驾控输出 PWM 即可控制电机。无刷电机电调模块内部通常由一个 MCU 和三相桥电路组成，MCU通过控制三相桥来实现无刷电机换相。同样，无刷电机电调模块也只需驾控输出 PWM 即可控制电机。<br/>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;航模电池:电池容量 mAh：锂电池的容量，如 2000mAh 的电池，以 2000mA 放电，可持续放电 1小时；以 1000mA 放电，可持续放电 2 小时。
						电池节数： 电池 2S、3S、4S 代表锂电池节数。锂电池 1 节的标准电压为 3.7V，3S 代表有 3 节 3.7V 的电池在里面，电压为 11.1V。
						电池放电倍率 C：四轴一般使用的动力锂电池，也是放电倍率 C较大。普通锂电池放电倍率通常为 1C或者 0.5C，动力电池则为十几二十 C。如标250mAh 20C 的电池，它的放电电流为 250ma×20，即为 5A 放电电流。<br/>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;正反桨：四轴行驶器需要正反浆叶，浆叶旋转时会产生自旋力导致四轴自旋，为了抵消自旋力相隔电机的浆叶旋转方向要不一样，但是浆的风都是要往下吹，这就出现了正反浆的说法。通常顺时针转的叫正浆，逆时针转的是反浆。<br/>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;四轴机架：机架一般采用质轻、硬度好的材料，大四轴常采用碳纤维材质或尼龙材质作为机架。小四轴使用硬塑料材质或 PCB 都可以。直接采用 PCB 作为支架，集成控制电路一体不仅小巧美观而且功能齐全。DIY大四轴常用碳纤维支架。<br/>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;四轴遥控器：遥控器用于发送各种控制指令，常用通信频段为 2.4G。四轴行驶器的控制至少需要 4个通道，功能越多需要的通道数越多。遥控器按操作习惯可分为美国手和日本手两种。<br/>
						通道就是可以遥控器控制的动作路数。四轴在控制过程中需要控制的动作路数有：上下、左右、前后、旋转。所以最低得 有4 通道遥控器。油门摇杆在左边、方向摇杆在右边是美国手；相反，油门摇杆在右边、方向摇杆在左边是日本手。
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;四轴驾控：驾控是四轴行驶器的核心部件，主要由 MCU、陀螺仪、加速度计、磁力计、气压计、无线接收模块等组成。驾控采集各路传感器数据，经过姿态解算求出姿态，然后对比遥控器发过来的控制命令数据，再经过 PID 计算出控制量，最后将控制量转换成 PWM 信号，分别控制各个电机。遥控器接收机是接收遥控信号的，它与遥控器是配套的。<br/>								    
					</p>
					<h2 id="section-2">传感器技术</h2>
					<h4>定义</h4>
					<p style="line-height: 2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						传感器(英文名称：Transducer/Sensor)是一种检测装置，能感受到被测量的信息，并能将感受到的信息，按一定规律变换成为电信号或其他所需形式的信息输出，以满足信息的传输、处理、存储、显示、记录和控制等要求。<br/>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;传感器的特点包括:微型化、数字化、智能化、多功能化、系统化、网络化。它是实现自动检测和自动控制的首要环节。传感器的存在和发展，让物体有了触觉、味觉和嗅觉等感官，让物体慢慢变得活了起来。
						通常根据其基本感知功能分为热敏元件、光敏元件、气敏元件、力敏元件、磁敏元件、湿敏元件、声敏元件、放射线敏感元件、色敏元件和味敏元件等十大类。</p>
					<h4>传感器作用</h4>
					<p style="line-height: 2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						  传感器广泛应用于社会发展及人类生活的各个领域，如工业自动化、农业现代化、航天技术、军事工程、机器人技术、资源开发、海洋探测、环境监测、安全保卫、医疗诊断、交通运输、家用电器等。<br/>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 新技术革命的到来，世界开始进入信息时代。在利用信息的过程中，首先要解决的就是要获取准确可靠的信息，而传感器是获取自然和生产领域中信息的主要途径与手段。的粒子世界，纵向上要观察长达数十万年的天体演化，短到 s的瞬间反应。
						 此外，还出现了对深化物质认识、开拓新能源、新材料等具有重要作用的各种极端技术研究，如超高温、超低温、超高压、超高真空、超强磁场、超弱磁场等等。显然，要获取大量人类感官无法直接获取的信息，没有相适应的传感器是不可能的。许多基础科学研究的障碍，
						 首先就在于对象信息的获取存在困难，而一些新机理和高灵敏度的检测传感器的出现，往往会导致该领域内的突破。一些传感器的发展，往往是一些边缘学科开发的先驱。<br/>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;传感器早已渗透到诸如工业生产、宇宙开发、海洋探测、环境保护、资源调查、医学诊断、生物工程、甚至文物保护等等极其之泛的领域。可以毫不夸张地说，从茫茫的太空，到浩瀚的海洋，以至各种复杂的工程系统，几乎每一个现代化项目，都离不开各种各样的传感器。[2]
														由此可见，传感器技术在发展经济、推动社会进步方面的重要作用，是十分明显的。世界各国都十分重视这一领域的发展。相信不久的将来，传感器技术将会出现一个飞跃，达到与其重要地位相称的新水平。</p>
					<h2 id="section-3">软件技术</h2>
					<h4>系统网站技术</h4>
					<p style="line-height: 2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;网站制作通俗的来说就是网站通过页面结构定位，合理布局，图片文字处理，程序设计，数据库设计等一系列工作的总和，
						也是将网站设计师的图片用HTML(标准通用标记语言下的一个应用)方式展示出来。
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;网页设计(Web design)，是根据需求向浏览者传递的信息(包括产品、服务、理念、文化)，进行网站功能策划，然后进行的页面设计美化工作。
								 作为企业对外宣传物料的其中一种，精美的网页设计，对于提升企业的互联网品牌形象至关重要。<br/>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;网页设计一般分为三种大类:功能型网页设计(服务网站&B/S软件用户端)、形象型网页设计(品牌形象站)、信息型网页设计(门户站)。设计网页的目的不同，应选择不同的网页策划与设计方案。
						网页设计的工作目标，是通过使用更合理的颜色、字体、图片、样式进行页面设计美化，在功能限定的情况下，尽可能给予用户完美的视觉体验。高级的网页设计甚至会考虑到通过声光、交互等来实现更好的视听感受。
						网页设计主要以Adobe产品为主，常见的工具包括FW、PS、FL、DW、CDR、AI等，其中DW是代码工具，其他是图形图像和FL动画工具。还有最近几年Adobe新出的EdgeReflow、EdgeCode、Muse。
					</p>					
					<h4>Mysql</h4>
					<p style="line-height: 2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MySQL是一个精巧的SQL数据库管理系统，虽然它不是开放源代码的产品，但在某些情况下你可以自由使用。由于它的强大功能、灵活性、
							   丰富的应用编程接口（API）以及精巧的系统结构，受到了广大自由软件爱好者甚至是商业软件用户的青睐，特别是与Apache和PHP/PERL结合，为建立基于数据库的动态网站提供了强大动力。<br/>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MySQL是一个真正的多用户、多线程SQL数据库服务器。SQL（结构化查询语言）是世界上最流行的和标准化的数据库语言。MySQL是以一个客户机/服务器结构的实现，
						它由一个服务器守护程序mysqld和很多不同的客户程序和库组成。SQL是一种标准化的语言，它使得存储、更新和存取信息更容易。
						例如，你能用SQL语言为一个网站检索产品信息及存储顾客信息，同时MySQL也足够快和灵活以允许你存储记录文件和图像。<br/></p>
				
					<h4>CAD</h4>
					<p style="line-height: 2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CAD制图软件是计算机辅助设计领域最流行的CAD软件包，此软件功能强大、使用方便、价格合理，在国内外广泛应用于诸多行业，拥有广大的用户群。
					CAD制图软件具有良好的用户界面，通过交互菜单或命令行方式便可以进行各种操作。它的多文档设计环境，让非计算机专业人员也能很快地学会使用。在不断实践的过程中更好地掌握它的各种应用和开发技巧，从而不断提高工作效率。
					它可以在各种操作系统支持的微型计算机和工作站上运行。在此系统开发中，我们利用CAD创建出建筑物模型，显示出信息可视化。
					</p>
					
					<h4>MatLab</h4>
					<p style="line-height: 2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MATLAB（Matrix Laboratory）是三大数学软件之一。在数学类科技应用软件中在数值计算方面首屈一指。MATLAB可以进行矩阵运算、绘制函数和数据、实现算法，
					       尤其具有完备的图形处理功能，计算结果的实现。<br/>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;数字图像处理是对图像进行去除噪声、增强、复原、分割、提取特征等处理的方法和技术。提取图像中所包含的某些特征或特殊信息，这些被提取的特征或信息往往为计算机分析图像提供便利。
						图像分割:图像分割是数字图像处理中的关键技术之一。图像分割是将图像中有意义的特征部分提取出来，其有意义的特征有图像中的边缘、区域等，这是进一步进行图像识别、分析和理解的基础。图像特征的提取：它指的是使用计算机提取图像信息，
						决定每个图像的点是否属于一个图像特征，特征提取的结果是把图像上的点分为不同的子集。<br/>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;利用Matlab对拍摄的图像进行图像分割处理和图像特征的提取。根据物体特征提取和检测的结果对目标位置进行识别，使整个农田灌溉系统得以正常工作。以下是对农田中玉米和大棚处理的结果。
					</p>
					
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