<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>柏屮书屋--我的购物车</title>

<link rel="stylesheet" type="text/css" href="<%=basePath%>css/css.css"/>
<script src="<%=basePath%>js/js1.js"></script>
<script src="<%=basePath%>js/jquery-3.2.1.js"></script>

<script type="text/javascript">
function sum(){
	
	var add=document.getElementById("Price").value();
	
	
	alert("您的总价为"+add);
}


</script>
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
	<!--中间购物车部分-->
	<div class="shopping">
        		<h2 style="text-align: center; color: red;">购物车</h2><br/>
    <table class="shopping_car" align="center">
      <thead>
        <tr>
          <th>商品</th>
          <th>单价(元)</th>
          <th>数量</th>
        </tr>
      </thead>
      <tbody id="goods">
      </tbody>
      <tfoot>
        <c:forEach items="${books}" var="books">
								<tr>
									<td>
										${books.bookname}
									</td>
									<td id="Price" value="${books.price}">${books.price}</td>
									<td>1</td>					    
								</tr>
							</c:forEach>
      </tfoot>
    
    </table>
 	<div align="center">
 		 <input  type="button" value="合计" onclick="sum()">
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
