<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>产品技术概要</title>

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
						<li class="active"><a href="#section-1">TensorFlow技术</a></li>
						<li ><a href="#section-2">无人车的运用</a></li>
						<li ><a href="#section-3">灌区监管与系统设计</a></li>
						<li ><a href="#section-4">ZigBee技术</a></li>
						<li ><a href="#section-5">传感器智能节水灌溉</a></li>
					</ul>
				</div>
				<div class="col-xs-9">
					<!-- 路径组件-面包屑导航 -->
					<ol class="breadcrumb"><!--也可用ul  -->
						<li><a>产品说明</a></li>
						<li class="active">产品技术概要</li>
					</ol>
					<h2 id="section-1">TensorFlow技术</h2>
					<h3>关于TensorFlow</h3>
					<p style="line-height: 2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TensorFlow™是一个基于数据流编程（dataflow programming）的符号数学系统，被广泛应用于各类机器学习（machine learning）算法的编程实现，其前身是谷歌的神经网络算法库DistBelief [1]  。
Tensorflow拥有多层级结构，可部署于各类服务器、PC终端和网页并支持GPU和TPU高性能数值计算，被广泛应用于谷歌内部的产品开发和各领域的科学研究 [1-2]  。
TensorFlow由谷歌人工智能团队谷歌大脑（Google Brain）开发和维护，拥有包括TensorFlow Hub、TensorFlow Lite、TensorFlow Research Cloud在内的多个项目以及各类应用程序接口（Application Programming Interface, API） [2]  。自2015年11月9日起，TensorFlow依据阿帕奇授权协议（Apache 2.0 open source license）开放源代码 [2]  。</p>
					<h3>定义</h3>
					<p style="line-height: 2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;谷歌大脑自2011年成立起开展了面向科学研究和谷歌产品开发的大规模深度学习应用研究，其早期工作即是TensorFlow的前身DistBelief [1]  。DistBelief的功能是构建各尺度下的神经网络分布式学习和交互系统，也被称为“第一代机器学习系统” [1]  。DistBelief在谷歌和Alphabet旗下其它公司的产品开发中被改进和广泛使用 [3-4]  。2015年11月，在DistBelief的基础上，谷歌大脑完成了对“第二代机器学习系统”TensorFlow的开发并对代码开源。相比于前作，TensorFlow在性能上有显著改进、构架灵活性和可移植性也得到增强 [1]  。此后TensorFlow快速发展，截至稳定API版本1.12，已拥有包含各类开发和研究项目的完整生态系统。在2018年4月的TensorFlow开发者峰会中，有21个TensorFlow有关主题得到展示 [2]  。
					
					<h2 id="section-2">无人车的运用</h2>
					<p style="line-height: 2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;受人口增长、经济社会发展方式粗放以及气候变化等因素的影响，全国大部分地区面临工程性缺水、资源性缺水和水质性缺水等问题，
					       抗旱、防洪减灾形势更加严峻，开发利用与保护的关系更加复杂，水利的发展进入了一个十分关键的时期。严峻的形势和艰巨的任务对水利高新科技的应用及研发提出了更高的要求。
					       江河湖泊整治与水利工程建设需要从更宏观层面去整体把握和科学实施，也需要对具体局部环节开展技术创新。<br/>
					    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国家大型水利工程，大型水库建设范围广、地形复杂、多种建筑物交织。由于其特殊性，常规大型航测很少应用于水库航测，一直以来基本成为航测领域的一项空白。
					      而传统人工测量模式存在作业周期长、人力投入大、成本高等问题，甚至会出现困难地区无法施测，无法满足高难度、快节奏测量生产的需要。与有人驾驶驾驶机测量相比，以无人车为代表的低空遥感系统可在小区域范围内低成本、
					      快速获取高分辨率遥感影像，产品精度满足大比例尺航空摄影测量精度要求，在使用成本、耗费资源、作业环境要求等方面，都更有优势。<br/>
	                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;无人车作为一项空间数据获取的重要手段，凭借其自身机动灵活、高效快速、困难地区探测的航片获取技术，以及精准的后处理技术，大大降低了作业成本和生产周期。
	                                   面对各地高山水利建设面临的各种新的挑战，必须提高数据快速获取、分析和共享能力，而低空无人车数据获取、应用和共享技术的研发，将在很大程度上促进和满足此要求，为新时期水利建设提供强有力的技术手段。</p>				
					<h2 id="section-3">灌区监管与系统设计</h2>
					<h4>摘要</h4>
					<p style="line-height: 2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;灌区管理即信息化管理是灌区发展的主要因素，是一项重要的非工程措
						施。灌区信息化就是充分利用现代信息技术，深入开展和广泛利用灌区管理的信息资源，提高信息采集和加工的准确性以及传输的时效性，做出及时、
						准确的反馈和预测，为灌区管理部门提供科学的决策依据，提升灌区管理的效能，促进灌区管理工作的健康发展。因而建立一个功能完善、实用性强、
						运行可靠的灌区信息系统，对于提高灌区管理的效率和决策水平，具有极其重要的作用。本文通过对国内外资源管理信息系统研究发展状况的详细分析，阐述了
						管理信息系统的基本理论。结合实际情况，设计出从数据采集到用户查看等一系列功能的灌区管理信息系统。灌区管理信息系统建设包括灌区信息自动采集与传输网络系统和灌区综合数据库及基于的灌区信息管理系统。
						整个系统通过雨量计、水位计等采集数据通过终端、网络和一无线通信服务软件协同完成数据传输、入库通过整编数据建立综合数据库通过采用技术，实现用户利用浏览器终端对信息平台的访问、信息查询、
						打印报表等系统还实现了地理信息系统的查询功能。						
					</p>
					<h4>灌区管理信息系统</h4>
					<p style="line-height: 2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;管理信息系统，是一个不断发展的概念。广义的管理信息系统是指对企业、组织或个人的信息进行管理和运用的系统。
						狭义的管理信息系统是指一个收集、传输、存储、加工、输出、维护、管理和使用信息的人机系统，它利用计算机、数学、经济、管理等多种模型，以及数据库
						或数据仓库对信息进行收集、转换、分类、统计、加工、存储、传输、维护和使用，以支持企业或组织内部的作业、管理、分析和决策。<br/>
					    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;灌区管理信息系统是一个为灌溉水利服务的，集水雨情信息、水利工程信息、运行控
						制、水资源配置与调度、行政事务管理于一体的、完整的、复杂的管理信息系统，旨在实现灌区信息的采集、处理、加工、存储、传输、反馈的一体化和自动化。灌溉管理是灌区
						管理信息系统的基础和中心内容，合理灌溉、科学用水、提高灌溉效益的一切措施均取决于准确、可靠、及时的灌溉用水管理信息。<br/> </p>
					<h3>管理系统需求分析</h3>
					<p style="line-height: 2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					在工程措施和管理体制基本完善之后，灌区面临的问题是管理措施的建设与提高相对滞后。长期以来，灌区灌溉管理部门花费了大量的时间、人力、物力和财力，获得了许多珍贵的数
					据和图文资料，但是由于长期采用手工绘制，档案积压、无法进行信息的查询与变更，更不能实时进行水资源的动态管理、方案调整和信息共享，造成了管理滞后于现实的局面。
					因此，急需建立相应的管理信息系统，可以使各级水利行业主管部门做到及时、准确和全面了解掌握灌区及行业发展的状况及变化趋势并且通过系统的运行，不断地充实完善，
					逐渐实现灌溉管理部门办公自动化。<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;灌区信息化管理是灌区发展的主要因素，是一项重要的非工程措施。灌区信息
					化就是充分利用现代信息技术，深入开发和广泛利用灌区管理的信息资源，提高信息采集和加工的准确性以及传输的时效性，做出及时、准确的反馈和预测，为灌区管理部门提供
					科学的决策依据，提升灌区管理的效能，促进灌区管理工作的健康发展。灌区信息化建设最主要的任务是实现水管理的信息化、科学化，达到节水、水资源高
					效利用的目的。为此建设淮涟灌区自动化监控和管理信息系统。灌区管理信息系统是一类规模较大的软件系统。对其进行需求分析的重点是调查、收
					集和分析用户在数据管理中的信息要求、处理要求、安全性与完整性要求。灌区的管理工作客观上是由一些存在着一定独立性的具体管理业务组成的。灌区管理信息系统模块结构
					化的客观基础是灌区管理信息系统的功能具有可划分性。在进行灌区管理信息系统的功能模块结构化设计时，必须对灌区的管理业务做全面的研究分析。对灌区的各项管理业务进
					行分门别类，把灌区的整体管理业务划分成一系列有较高独立性的子业务，以便在此基础上设计出独立性强的模块体系脚。</p>					
					<h2 id="section-4">ZigBee技术</h2>
					<p style="line-height: 2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;随着网络技术、无线通信技术和计算机技术的驾驶速发展，手机、互联网等高
						科技产品正在逐渐的改变人们的生活方式。在享受这些新技术给我们带来的喜悦的同时，人们不断的研究，能否采用一种技术将这些新技术应用到我们的生活中，
						将客观上的物质世界与逻辑上的信息世界结合在一起，周围的设备可以通过我们的手指一动就能控制；我们坐在电脑前就能远程的监控农田灌溉等
						。这一想法，产生了将传感器技术与无线通信技术相结合，集传感技术、嵌入式计算技术、网络及无线通信技术于一体的综合性、交叉性的无线传感网络理论。<br/> 
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;近年来对于集成电路、传感器、无线通信等技术研究的提高，使得越来越多
						的无线传感网络具有很低的功耗，比较低的安装成本，并且可以处理许多的事情。许多可以采集数据的节点相互的合作组成了无线传感网络，具有数据采集和处理、
						无线通信、协同合作等功能，并且能够相互的合作以获取周围环境的信息以完成
						特定任务。劳动者能够在应用无线传感网络的工农业中，进行安全性和劳动强度
						度低的工作，这将能够大大的降低生产成本和提高生产效率。 <br/>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Zig Bee 作为一种复杂度低、通信距离短、数据传输率低、功耗低的双向无线
						通信技术，目前被众多无线传感器网络广泛使用。在现代高效农业和科学技术的
						不断发展中，人们逐渐认识到自动化控制技术在农业现代过程中的地位和作用是
						不可替代的。在经济全球化的过程中，农产品的进出口越来越频繁，这使得市场
						竞争的压力逐渐的增大，因此要使现代农业得到生存必须使产品品质和生产率得
						到进一步的提高、生产成本得到进一步的降低。为了满足农业在新形势下的要
						求，现代农业生产必须具有高精度的机械化、自动化和高效率。无线传感器网
						络技术在农业生产中的使用，使得农业生产渐渐的转向以计算机和数据为中心并
						能进行远程自动控制现代农业生产模式，在这种模式中农民的工作量得到减轻并且农产品产量得到提高。 
						传统的灌溉，没有使土壤始终保持疏松和最佳含水状态，这样农作物的生长
						必然会受到影响，导致农作物的产量不能达到最大。所以设计一套智能的灌溉监
						控系统，能根据农作物的需要，进行合理的灌溉，对提高农作物的产量和节约水
						资源具有重要的意义。</p>
					<h2 id="section-5">智能节水传感器灌溉</h2>
					<p style="line-height: 2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;21世纪水资源正在变成一种宝贵的稀缺资源，水资源问题已不仅仅是资源问题，更
					      是关系到国家经济、社会可持续发展和长治久安的重大战略问题。基于此，采用节水、节能的灌溉方法己成为全世界灌溉技术发展的总趋势，推广节水灌溉也已成为世界各国
						为缓解水资源危机和实现农业现代化的必然选择。目前，美国，以色列等发达国家使用先进的节水灌溉技术大大提高了水资源的利用效率美国加州更是以立法的形式强制要
						求新公司必须使用智能灌溉系统。在我国，农业用水约占用水总量的左右，由于多年来采取传统的大水漫灌方式，目前我国农业用水的有效利用率仅为左右，远低于
						美国等发达国家至的水平。采用先进的节水灌溉技术，提高水资源的利用率对缓解我国水资源紧张、改善生态环境、提高经济效益、实现可持续发展具有重要意义。
						无线传感器网络勺刀技术起源于上世纪年代。<br/>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在近年的发展中己经取得了显著的成绩。随着无线通信技术、信号处理技术、微电子技术
						以及网络技术的迅猛发展，无线传感器网络正在从单一化模式向微型化、集成化、智能化、网络化方向发展，逐渐成为获取信息的重要技术之一。而作为无线传感器网络中的
						一种协议标准，技术更是以其优良的性能为众多的近距离无线通信应用领域提供了低成本、低功耗、高可靠性的解决方案。将
						无线传感器网络、现代移动通信网、以太网三网结合，由无线传感器网络实现对农田土壤湿度进行实时监测，利用移动通信网与光纤以太网来实现系统与远程监控人
						员的信息交互。主要讨论了无线传感器网络的拓扑结构设计、定向扩散路由协议的改进以及底层数据融合算法的实现。并经实验验证了该设计方案的可行性。							
					</p>
					<h3 id="section-5">智能节水灌溉的无线传感器</h3>
					<p style="line-height: 2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我们要面对这样一个事实无线传感器网络目前还没有取得比较广泛的商业应
												用，甚至有些人开始质疑的应用价值。我们可以从以下实例的侧面看到的巨大应用潜力，同时也可以预见的良好的商业应用前景。<br/>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目标跟踪：支持的项目一直在探索如何将无线技术应用到军事领域来
												实现所谓的“超视距”战场监测。其中的子项目，原理性的验证了应用
												进行战场目标跟踪技术的可行性。机翼下携带传感器节点的无人车在驾驶到目标区
												域后抛下节点，最终随机布撒在被监测区域，利用安装在节点上的地震波传感器可以探
												测到外部目标，如坦克、装甲车等，并根据信号的强度与特征，估算出车辆类型与距离，
												综合多个节点的数据后，对车辆进行定位。虽然目前该系统的定位精度还不足以应用到
												实战中去，但随着相关技术的不断发展，这种技术一定会应用到战场中去。<br/>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;医疗健康：哈佛大学的一个研究小组利用无线传感器网络构建了一个医疗检测平台。在传统
												的模式下，病人必须躺在病床上，才能通过各种传感器来监测身体的各项指标，病人无
												法自由活动，很不方便。将无线传感器网络技术应用到对病人的监护中就可以很好的解
												决这个问题，病人通过安装在身上的无线传感器件，实时将信息传递给医生，医生还可
												以通过无线传感器网络对病人进行定位，在出现状况时可以及时找到病人。
												电子牧场，在牛脖子上套上无线传感器网络节点，当牛接近围栏时，套在牛脖子上的传感器会
												检测到牛向牛栏靠近，并发出一种可以驱赶牛的声音，防止牛离开所划定的牧区。<br/>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;火山观测：哈佛大学的一个研究小组利用对火山进行了持续的观测，通过安装在无线传
												感器网络节点上的次声波传感器实时采集监测数据，并且研究人员还可以控制个网络节
												智能节水灌溉系统的无线传感器网络设计点，进行监测调整。在传统的观测模式下，只能事先放置好监测节点，而且不能实时传
												回数据，只能在火山爆发后一段时间里取回传感器，读出里面的参数。相比之下，采用
												这种特殊的监测火山数据不仅更加安全，而且大大提高了研究的效率。<p/>	
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