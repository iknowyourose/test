<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
<title>柏屮书屋</title>
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/css.css"/>
<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" />
<script src="<%=basePath%>js/js1.js"></script>
<script src="<%=basePath%>js/jquery-3.2.1.js"></script>
<script src="<%=basePath%>js/bootstrap.min.js"></script>
</head>
  
  <body>
	<div id="welcome">
		<p >欢迎来到柏屮书屋</p>
	</div>
<!-- 头部 -->
	<div id="header">
	
		
		
		<!-- logo与标题 -->
		<div >
			<img id="logo" src="<%=basePath%>/images/logo.png" style="height:200px;"/>
			
		</div>
		<!-- 头部导航 -->
		<div id="header_nav">
		   
		<ul>
			<li><a href="#">首页</a></li>
			<li><a href="#">关于我们</a></li>
			<li><a href="#">客户服务</a></li>
			<li><a href="#">购物车</a></li>
			<li><a href="#">我的订单</a></li>
			<li><a href="#">个人中心</a></li>
		</ul>
		</div>
	</div>
	<hr>
	<!--显示图书详细信息-->
	<div class="show_info">
	  <!--左边显示图片-->
	  <div>
	  	<img src="<%=basePath%>/${Book_session.bookpic}" style="width: 400px;height: 400px;">
	  </div>
	  <!--右边显示图书详细信息-->
	  <div class="right_info">
	 
	  	<p><h2>${Book_session.bookname}</h2></p>
	  	<p style="font-size: 19px;">${Book_session.intro}</p>
	  	<p>作者:&nbsp;<span class="letter_color">${Book_session.author}</span> 著,&nbsp;<span class="letter_color">博集天卷</span> 出品 &nbsp; &nbsp; &nbsp;出版社:&nbsp;<span class="letter_color">${Book_session.press}</span> &nbsp; &nbsp; &nbsp;出版时间:&nbsp;2018年08月 </p>
	  	
	  	<br/>
	  	<!--图书价格-->
	  	<div class="price">
	  		<p style="color: red;font-size: 28px; padding-top: 20px;">￥${Book_session.price}  <span style="color: gray;font-size: 16px;">￥58.80</span></p>
	  	</div>
	<!--加入购物车-->
	<span ><img src="<%=basePath%>/images/shopping car.PNG" style="padding-top: 30px;"/></span>

	  </div>
	  </div>
	<!-- 尾部 -->
	<div id="footer">
			<p>
          柏屮书屋&copy;2018-版权所有
      </p>
	</div>
</body>
</html>
