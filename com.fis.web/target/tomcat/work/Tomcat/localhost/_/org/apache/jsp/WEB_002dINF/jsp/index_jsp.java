/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2019-07-20 11:03:28 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html lang=\"zh-CN\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"utf-8\">\r\n");
      out.write("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->\r\n");
      out.write("<title>农田智联灌溉首页</title>\r\n");
      out.write("\r\n");
      out.write("<!-- Bootstrap -->\r\n");
      out.write("<link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("<link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/css/style.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->\r\n");
      out.write("<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\r\n");
      out.write("<!--[if lt IE 9]>\r\n");
      out.write("      <script src=\"https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js\"></script>\r\n");
      out.write("      <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\r\n");
      out.write("    <![endif]-->\r\n");
      out.write("</head>\r\n");
      out.write("<style>\r\n");
      out.write(".my-bg .container{\r\n");
      out.write("\tmargin-top: 0px;\r\n");
      out.write("}\r\n");
      out.write("#myCarousel{\r\n");
      out.write("\tmargin:150px 0 0 0;\r\n");
      out.write("}\r\n");
      out.write(".carousel-inner img{\r\n");
      out.write("\tmargin:0 auto;\r\n");
      out.write("}\r\n");
      out.write(".tab-h2{\r\n");
      out.write("\tfont-size: 20px;\r\n");
      out.write("\tcolor: #0059B2;\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("\tletter-spacing: 1px;\r\n");
      out.write("\tmargin-top: 40px;\r\n");
      out.write("}\r\n");
      out.write(".tab-p{\r\n");
      out.write("\tfont-size: 15px;\r\n");
      out.write("\tcolor:#999;\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("\tletter-spacing: 1px;\r\n");
      out.write("\tmargin: 20px 0 40px 0;\r\n");
      out.write("}\r\n");
      out.write(".media-heading{\r\n");
      out.write("\tmargin: 5px 0 20px 0;\r\n");
      out.write("\tfont-size: small;\r\n");
      out.write("}\r\n");
      out.write(".text-muted0{\r\n");
      out.write("\tcolor: #999;\r\n");
      out.write("\ttext-decoration: line-through;\r\n");
      out.write("\tfont-size: x-small;\r\n");
      out.write("}\r\n");
      out.write(".text-muted1{\r\n");
      out.write("\tcolor: #999;\r\n");
      out.write("\tfont-size: x-small;\r\n");
      out.write("}\r\n");
      out.write(".tab2{\r\n");
      out.write("\tpadding: 30px 20px; \r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("\tmargin-bottom: 30px;\r\n");
      out.write("}\r\n");
      out.write(".tab3{\r\n");
      out.write("\t/* background-color: #eee; */\r\n");
      out.write("\tpadding: 30px 20px; \r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("\tmargin-bottom: 40px;\r\n");
      out.write("}\r\n");
      out.write("/* 这里的图片大小配置看实际情况 */\r\n");
      out.write(".tab2 img{\r\n");
      out.write("\twidth:50%;\r\n");
      out.write("\theight:50%;\r\n");
      out.write("}\r\n");
      out.write(".tab3 img{\r\n");
      out.write("\twidth:50%;\r\n");
      out.write("\theight:50%;\r\n");
      out.write("}\r\n");
      out.write(".text h3{\r\n");
      out.write("\tfont-size: 20px;\r\n");
      out.write("}\r\n");
      out.write(".text p{\r\n");
      out.write("\tfont-size: 14px;\r\n");
      out.write("}\r\n");
      out.write("/*没有小于768px,是因为Bootstrap以移动端为优先设计  */\r\n");
      out.write("/* 小屏幕(pad,大于等于768px) */\r\n");
      out.write("@media (min-width: 768px){\r\n");
      out.write("\t.tab-h2{\r\n");
      out.write("\t\tfont-size: 26px;\r\n");
      out.write("\t}\r\n");
      out.write("\t.tab-p{\r\n");
      out.write("\t\tfont-size: 16px;\r\n");
      out.write("\t}\r\n");
      out.write("\t.media-heading{\r\n");
      out.write("\t\tfont-size: medium;\r\n");
      out.write("\t}\r\n");
      out.write("\t.text-muted0{\r\n");
      out.write("\t\tfont-size: small;\r\n");
      out.write("\t}\r\n");
      out.write("\t.text-muted1{\r\n");
      out.write("\t\tfont-size: small;\r\n");
      out.write("\t}\r\n");
      out.write("\t.text h3{\r\n");
      out.write("\t\tfont-size: 22px;\r\n");
      out.write("\t}\r\n");
      out.write("\t.text p{\r\n");
      out.write("\t\tfont-size: 15px;\r\n");
      out.write("\t}\r\n");
      out.write("\t.tab2-text{\r\n");
      out.write("\t\tfloat: left;\r\n");
      out.write("\t}\r\n");
      out.write("\t.tab2-img{\r\n");
      out.write("\t\tfloat: right;\r\n");
      out.write("\t}\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* 中屏幕(桌面显示器,大于等于992px) */\r\n");
      out.write("@media (min-width: 992px){\r\n");
      out.write("\t.tab-h2{\r\n");
      out.write("\t\tfont-size: 28px;\r\n");
      out.write("\t}\r\n");
      out.write("\t.tab-p{\r\n");
      out.write("\t\tfont-size: 17px;\r\n");
      out.write("\t}\r\n");
      out.write("\t.my-p{\r\n");
      out.write("\t\tfont-size: small;\r\n");
      out.write("\t}\r\n");
      out.write("\t.text h3{\r\n");
      out.write("\t\tfont-size: 24px;\r\n");
      out.write("\t}\r\n");
      out.write("\t.text p{\r\n");
      out.write("\t\tfont-size: 16px;\r\n");
      out.write("\t}\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* 大屏幕(大桌面显示器,大于等于1200px) */\r\n");
      out.write("@media (min-width: 1200px){\r\n");
      out.write("\t.tab-h2{\r\n");
      out.write("\t\tfont-size: 30px;\r\n");
      out.write("\t}\r\n");
      out.write("\t.tab-p{\r\n");
      out.write("\t\tfont-size: 18px;\r\n");
      out.write("\t}\r\n");
      out.write("\t.media-heading{\r\n");
      out.write("\t\tfont-size: large;\r\n");
      out.write("\t}\r\n");
      out.write("\t.text-muted0{\r\n");
      out.write("\t\tfont-size: 15px;\r\n");
      out.write("\t}\r\n");
      out.write("\t.text-muted1{\r\n");
      out.write("\t\tfont-size: 15px;\r\n");
      out.write("\t}\r\n");
      out.write("\t.text h3{\r\n");
      out.write("\t\tfont-size: 26px;\r\n");
      out.write("\t}\r\n");
      out.write("\t.text p{\r\n");
      out.write("\t\tfont-size: 18px;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("<body>\r\n");
      out.write("\t<!-- 置顶导航条 -->\r\n");
      out.write("\t<div class=\"navbar-fixed-top\"> \r\n");
      out.write("\t\t<div class=\"my-header\">\r\n");
      out.write("\t\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t\t<img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/img/logo.gif\">\r\n");
      out.write("\t\t\t\t<div class=\"my-header-se\">\r\n");
      out.write("\t\t\t\t\t<form action=\"\" class=\"navbar-form navbar-right\"><!--navbar-right让输入框居右  -->\r\n");
      out.write("\t\t\t\t\t\t<div class=\"input-group\">\r\n");
      out.write("\t\t\t\t\t\t\t<input type=\"text\" class=\"form-control\" placeholder=\"站内搜索..\">\r\n");
      out.write("\t\t\t\t\t\t\t<span class=\"input-group-btn\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<button class=\"btn btn-default\">搜索</button>\r\n");
      out.write("\t\t\t\t\t\t\t</span>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<!--登陆-->\r\n");
      out.write("\t\t\t\t<p class=\"my-header-login\">亲，没<a id=\"header-login\" href=\"\" data-toggle=\"modal\" data-target=\"#loginModal\">登录</a>先登陆吧!</p>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<nav class=\"navbar navbar-default my-navbar\" ><!--navbar-fixed-bottom  navbar-inverse让导航条变成黑色-->\r\n");
      out.write("\t\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t\t<div class=\"navbar-header\" >\r\n");
      out.write("\t\t\t\t\t<!-- 大屏时按钮隐藏小屏幕时出现按按钮出现折叠 -->\r\n");
      out.write("\t\t\t\t\t<button class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#navbar-collapse\">\r\n");
      out.write("\t\t\t\t\t\t<span class=\"icon-bar\"></span>\r\n");
      out.write("\t\t\t\t\t\t<span class=\"icon-bar\"></span>\r\n");
      out.write("\t\t\t\t\t\t<span class=\"icon-bar\"></span>\r\n");
      out.write("\t\t\t\t\t</button>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"collapse navbar-collapse\" id=\"navbar-collapse\">\r\n");
      out.write("\t\t\t\t\t<ul class=\"nav nav-pills nav-justified my-nav-pills\">\r\n");
      out.write("\t\t\t\t\t\t<li class=\"active my-li\"><a>首页</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li class=\"dropdown my-li\">\r\n");
      out.write("\t\t\t\t\t\t\t<a href=\"javascript;void(0)\" data-toggle=\"dropdown\">团队项目概况<i class=\"caret\"></i></a>\r\n");
      out.write("\t\t\t\t\t\t\t<ul class=\"dropdown-menu\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/page/team_profile\">团队简介</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"#\">项目概况</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t<li class=\"dropdown my-li\">\r\n");
      out.write("\t\t\t\t\t\t\t<a href=\"javascript;void(0)\" data-toggle=\"dropdown\">产品说明<i class=\"caret\"></i></a>\r\n");
      out.write("\t\t\t\t\t\t\t<ul class=\"dropdown-menu\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/page/product\">产品简介</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/page/product_tech\">产品技术概要</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t<li class=\"my-li\"><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/page/irrig_strategy\">灌溉策略</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li class=\"dropdown my-li\">\r\n");
      out.write("\t\t\t\t\t\t\t<a href=\"javascript;void(0)\" data-toggle=\"dropdown\">信息建设<i class=\"caret\"></i></a>\r\n");
      out.write("\t\t\t\t\t\t\t<ul class=\"dropdown-menu\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/page/tech_show\">图像采集展示</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/page/weather\">气象信息</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t<li class=\"my-li\"><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/page/model_display\">模型展示</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li class=\"my-li\"><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/page/contact\">联系我们</a></li>\r\n");
      out.write("\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</nav>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div class=\"my-bg\">\r\n");
      out.write("\t\t<!--轮播图  -->\r\n");
      out.write("\t\t<div class=\"carousel slide\" id=\"myCarousel\">\r\n");
      out.write("\t\t\t<ol class=\"carousel-indicators\">\r\n");
      out.write("\t\t\t\t<li data-target=\"#myCarousel\" data-slide-to=\"0\" class=\"active\"></li>\r\n");
      out.write("\t\t\t\t<li data-target=\"#myCarousel\" data-slide-to=\"1\"></li>\r\n");
      out.write("\t\t\t\t<li data-target=\"#myCarousel\" data-slide-to=\"2\"></li>\r\n");
      out.write("\t\t\t\t<li data-target=\"#myCarousel\" data-slide-to=\"3\"></li>\r\n");
      out.write("\t\t\t\t<li data-target=\"#myCarousel\" data-slide-to=\"4\"></li>\r\n");
      out.write("\t\t\t\t<li data-target=\"#myCarousel\" data-slide-to=\"5\"></li>\r\n");
      out.write("\t\t\t</ol>\r\n");
      out.write("\t\t\t<div class=\"carousel-inner\">\r\n");
      out.write("\t\t\t\t<!--先把图片两端进行模糊化处理再取模糊后的颜色置于background中  -->\r\n");
      out.write("\t\t\t\t<div class=\"item active\" style=\"background: #133359\">\r\n");
      out.write("\t\t\t\t\t<img alt=\"图片\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/images/show1.png\">\r\n");
      out.write("\t\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"item\" style=\"background: #030629\">\r\n");
      out.write("\t\t\t\t\t<img alt=\"图片\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/images/show2.png\">\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"item\" style=\"background: #016839\">\r\n");
      out.write("\t\t\t\t\t<img alt=\"图片\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/images/show3.png\">\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"item\" style=\"background: #FFFFFF\">\r\n");
      out.write("\t\t\t\t\t<img alt=\"图片\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/images/show4.png\">\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"item\" style=\"background: #1577E4\">\r\n");
      out.write("\t\t\t\t\t<img alt=\"图片\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/images/show5.png\">\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"item\" style=\"background: #FFFFFF\">\r\n");
      out.write("\t\t\t\t\t<img alt=\"图片\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/images/show6.png\">\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<a href=\"#myCarousel\" data-slide=\"prev\" class=\"carousel-control left\">\r\n");
      out.write("\t\t\t\t<span class=\"glyphicon glyphicon-chevron-left\" style=\"left: 30px\"></span>\r\n");
      out.write("\t\t\t</a> <a href=\"#myCarousel\" data-slide=\"next\"\r\n");
      out.write("\t\t\t\tclass=\"carousel-control right\"> <span\r\n");
      out.write("\t\t\t\tclass=\"glyphicon glyphicon-chevron-right\" style=\"right: 30px\"></span>\r\n");
      out.write("\t\t\t</a>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"container\">\t\r\n");
      out.write("\t\t\t<h2 class=\"tab-h2\">「为什么选择智联灌溉平台」</h2>\r\n");
      out.write("\t\t\t<p class=\"tab-p\">多功能分区,信息化与智能的结合,淘汰以往的灌溉方式使得灌溉效率显著提升!</p>\r\n");
      out.write("\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t\t<div class=\"col-md-6\" style=\"margin-bottom: 20px;\">\r\n");
      out.write("\t\t\t\t\t<div class=\"media\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"media-left\">\r\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\"><img alt=\"图片\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/img/car.jpg\"\r\n");
      out.write("\t\t\t\t\t\t\t\tclass=\"media-object\"></a>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"media-body\">\r\n");
      out.write("\t\t\t\t\t\t\t<h4 class=\"media-heading\">无人车信息采集</h4>\r\n");
      out.write("\t\t\t\t\t\t\t<p class=\"text-muted0\">其他:采用耗费人力物力的人工信息数据采集</p>\r\n");
      out.write("\t\t\t\t\t\t\t<p class=\"text-muted1\">我们:采用无人车信息拍摄采集,低廉 便捷 高效</p>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"col-md-6\" style=\"margin-bottom: 20px;\">\r\n");
      out.write("\t\t\t\t\t<div class=\"media\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"media-left\">\r\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\"><img alt=\"图片\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/img/ai.jpg\"\r\n");
      out.write("\t\t\t\t\t\t\t\tclass=\"media-object\"></a>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"media-body\">\r\n");
      out.write("\t\t\t\t\t\t\t<h4 class=\"media-heading\">人工智能算法预测</h4>\r\n");
      out.write("\t\t\t\t\t\t\t<p class=\"text-muted0\">其他:凭借个人经验,高误差 低效率</p>\r\n");
      out.write("\t\t\t\t\t\t\t<p class=\"text-muted1\">我们:采用机器学习算法给出大数据下的灌溉预测判断 准确 高效</p>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"col-md-6\" style=\"margin-bottom: 20px;\">\r\n");
      out.write("\t\t\t\t\t<div class=\"media\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"media-left\">\r\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\"><img alt=\"图片\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/img/info.jpg\"\r\n");
      out.write("\t\t\t\t\t\t\t\tclass=\"media-object\"></a>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"media-body\">\r\n");
      out.write("\t\t\t\t\t\t\t<h4 class=\"media-heading\">综合信息展示</h4>\r\n");
      out.write("\t\t\t\t\t\t\t<p class=\"text-muted0\">其他:传统信息展示内容缺乏 生硬</p>\r\n");
      out.write("\t\t\t\t\t\t\t<p class=\"text-muted1\">我们:将各种实时数据以图形化形式展示出来 直观 灵活</p>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"col-md-6\" style=\"margin-bottom: 20px;\">\r\n");
      out.write("\t\t\t\t\t<div class=\"media\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"media-left\">\r\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\"><img alt=\"图片\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/img/tf.jpg\"\r\n");
      out.write("\t\t\t\t\t\t\t\tclass=\"media-object\"></a>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"media-body\">\r\n");
      out.write("\t\t\t\t\t\t\t<h4 class=\"media-heading\">TensorFlow技术</h4>\r\n");
      out.write("\t\t\t\t\t\t\t<p class=\"text-muted0\">其他:对灌溉传统的数据进行人工经验分析</p>\r\n");
      out.write("\t\t\t\t\t\t\t<p class=\"text-muted1\">我们:在TensorFlow下对灌溉数据进行模型分析处理</p>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"row tab2\" style=\"background-image:url(");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/images/index_bg2.png);\">\r\n");
      out.write("\t\t\t\t<div class=\"col-md-5 col-sm-6 tab2-img\">\r\n");
      out.write("\t\t\t\t\t<img alt=\"图片\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/images/trans.png\"\r\n");
      out.write("\t\t\t\t\t\tclass=\"auto img-responsive center-block\">\r\n");
      out.write("\t\t\t\t\t<!-- 图片设置为响应式 center-block设置图片居中 -->\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"col-md-7 col-sm-6 text tab2-text\">\r\n");
      out.write("\t\t\t\t\t<h3>信息与智能</h3>\r\n");
      out.write("\t\t\t\t\t<p>海量数据云端分析处理，智能决策灌溉方案...</p>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"row tab3\" style=\"background-image:url(");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/images/index_bg1.png);\">\r\n");
      out.write("\t\t\t\t<div class=\"col-md-5 col-sm-6\">\r\n");
      out.write("\t\t\t\t\t<img alt=\"图片\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/images/info_ai.png\"\r\n");
      out.write("\t\t\t\t\t\tclass=\"auto img-responsive center-block\">\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"col-md-7 col-sm-6 text\">\r\n");
      out.write("\t\t\t\t\t<h3>科技与现代</h3>\r\n");
      out.write("\t\t\t\t\t<p>改变传统的低效灌溉模式，致力于减轻人工生产负担，让农业与科技紧密联系，展现出现代化农产气息...</p>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\t   \r\n");
      out.write("\t\t   \r\n");
      out.write("\t<footer id=\"footer\" class=\"text-muted\" style=\"background-color:#292929; border-top: 6px solid #3F3F3F\";>\r\n");
      out.write("\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t<div class=\"col-xs-6\" style=\"border-right:1px solid #C1C1C1; padding-bottom: 10px\">\r\n");
      out.write("\t\t\t\t<div class=\"col-md-8 my-footer-left\">\r\n");
      out.write("\t\t\t\t\t<a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/page/team_profile\"><img alt=\"team_logo\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/img/team_logo.png\"></img></a>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"col-md-4\">\r\n");
      out.write("\t\t\t\t\t<ul class=\"my-footer-ul\">\r\n");
      out.write("\t\t\t\t\t\t<li style=\"margin-bottom: 3px;\"><a href=\"#\" class=\"h4\" style=\"color:#777777;\">关于我们</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li style=\"margin-bottom: 3px;\"><a href=\"#\" style=\"color:white;\">问题反馈</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li style=\"margin-bottom: 3px;\"><a href=\"contact.html\" style=\"color:white;\">联系我们</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li style=\"margin-bottom: 3px;\"><a href=\"#\" style=\"color:white;\">加入我们</a></li>\r\n");
      out.write("\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t<div class=\"col-xs-6 my-footer-right\" style=\"color:white;\">\r\n");
      out.write("\t\t\t\t<div style=\"padding-left:10%;\">\r\n");
      out.write("\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t<p class=\"text-left my-h5\">联系人：邢梦妍&nbsp;&nbsp;&nbsp;&nbsp;手机：185 6770 9618</p>\r\n");
      out.write("\t\t\t\t\t<p class=\"text-left my-h5\">邮箱：942102585@qq.com</p>\r\n");
      out.write("\t\t\t\t\t<p class=\"text-left my-h5\">地址：华北水利水电大学龙子湖校区</p>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<p class=\"text-center my-h5 my-footer-hidder\"><a href=\"#\">关于我们</a>&nbsp;|&nbsp;<a href=\"#\">问题反馈</a>&nbsp;|&nbsp;<a href=\"#\">联系我们</a>&nbsp;|&nbsp;<a href=\"#\">加入我们</a></p>\r\n");
      out.write("\t\t<p class=\"text-center my-h5\" style=\"margin-top: 10px; color:#777777;\"><font color=\"#22B26D\">豫 ICP备12345678. </font>© 2018 BIM信息化灌溉. Powered by Infinity Group</p>\r\n");
      out.write("\t</footer>\r\n");
      out.write("\t<!--登录  -->\r\n");
      out.write("\t<div class=\"modal fade\" id=\"loginModal\" tabindex=\"-1\">\r\n");
      out.write("\t\t<!-- class中加show直接设置为显示 -->\r\n");
      out.write("\t\t<!--tabindex焦点的设置  -->\r\n");
      out.write("\t\t<!--可设置淡入淡出效果fade  -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t<!-- 窗口声明 -->\r\n");
      out.write("\t\t<!--可以添加modal-sm modal-lg  -->\r\n");
      out.write("\t\t<div class=\"modal-dialog modal-sm my-modal\">\r\n");
      out.write("\t\t\t<form action=\"javascript:void(0);\" method=\"post\">\r\n");
      out.write("\t\t\t\t<div class=\"modal-content\">\r\n");
      out.write("\t\t\t\t\t<div class=\"modal-header\">\r\n");
      out.write("\t\t\t\t\t\t<button class=\"close\" data-dismiss=\"modal\">\r\n");
      out.write("\t\t\t\t\t\t\t<i>&times;</i>\r\n");
      out.write("\t\t\t\t\t\t</button>\r\n");
      out.write("\t\t\t\t\t\t<h4 class=\"modal-title\">管理员登录</h4>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<!-- 内容体 -->\r\n");
      out.write("\t\t\t\t\t<div class=\"modal-body\">\r\n");
      out.write("\t\t\t\t\t\t<!--可以加入流体栅格  -->\r\n");
      out.write("\t\t\t\t\t\t<div class=\"container-fluid\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"row\" style=\"margin: 3px 0px\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"col-xs-3\" style=\"padding: 0px\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<p class=\"text-right\" style=\"padding-top: 8px\">账号:</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"col-xs-9\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" class=\"form-control\" name=\"id\" id=\"login-id\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tplaceholder=\"输入您的账号\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"row\" style=\"margin: 3px 0px\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"col-xs-3\" style=\"padding: 0px\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<p class=\"text-right\" style=\"padding-top: 8px\">密码:</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"col-xs-9\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"password\" class=\"form-control\" name=\"password\" id=\"login-pw\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tplaceholder=\"输入您账号的密码\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"modal-footer\">\r\n");
      out.write("\t\t\t\t\t\t<input type=\"submit\" class=\"btn btn-primary my-center-block\" value=\"登录\" id=\"login-btn\" style=\"width:100px;\">\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</form>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\r\n");
      out.write("\t<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/js/jquery.min.js\"></script>\r\n");
      out.write("\t<!-- Include all compiled plugins (below), or include individual files as needed -->\r\n");
      out.write("\t<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/js/bootstrap.min.js\"></script>\r\n");
      out.write("\t<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/js/common.js\"></script>\r\n");
      out.write("\t<script>\r\n");
      out.write("\t\tvar global_user =  \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${user}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\";\r\n");
      out.write("\t\tif(global_user === \"\"){\r\n");
      out.write("\t\t\t$('.my-header-login').html('亲，没<a id=\"header-login\" href=\"\" data-toggle=\"modal\" data-target=\"#loginModal\">登录</a>先登陆吧!');\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse{\r\n");
      out.write("\t\t\t$('.my-header-login').html('尊敬的管理员：<a>'+\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${user.name}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\"+'</a>,欢迎您！<a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/logOff\">退出登录</a>');\r\n");
      out.write("\t\t}\r\n");
      out.write("\t//设置轮播时间间隔\r\n");
      out.write("\t\t$('#myCarousel').carousel({\r\n");
      out.write("\t   \t\tinterval : 3000,\r\n");
      out.write("\t   \t});\r\n");
      out.write("\t\t//解决谷歌浏览器的问题\r\n");
      out.write("       \t$(window).load(function(){\r\n");
      out.write("       \t\t$('.text').eq(0).css('margin-top',($('.auto').eq(0).height()-$('.text').eq(0).height())/2);\r\n");
      out.write("           \t$('.text').eq(1).css('margin-top',($('.auto').eq(1).height()-$('.text').eq(1).height())/2);\r\n");
      out.write("       \t});\r\n");
      out.write("       \t\r\n");
      out.write("       \t$(window).resize(function(){\r\n");
      out.write("       \t\t$('.text').eq(0).css('margin-top',($('.auto').eq(0).height()-$('.text').eq(0).height())/2);\r\n");
      out.write("           \t$('.text').eq(1).css('margin-top',($('.auto').eq(1).height()-$('.text').eq(1).height())/2);\r\n");
      out.write("       \t});\r\n");
      out.write("\t</script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}