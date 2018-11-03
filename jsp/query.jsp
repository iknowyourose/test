<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>客户服务界面</title>
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/css.css"/>
<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" />
<script src="<%=basePath%>js/js1.js"></script>
<script src="<%=basePath%>js/jquery-3.2.1.js"></script>
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<script type="text/javascript">
			function addshopping(userid,id){
				if(confirm('确实要将该图书加入购物车吗?')) {
				$.post("<%=basePath%>book/addshopping.action",{"userid":userid,"id":id},
				function(data){
	           			 if(data =="OK"){
	             		   alert("加入购物车成功！");
	               		 window.location.reload();
	         		   }else{
	              		  alert("加入购物车失败！");
	               		 window.location.reload();
	           		 }
	       		 });
			}
		}
			function deleteshopping(id) {
	           if(confirm('确实要删除该图书吗?')) {
				$.post("<%=basePath%>book/deletebook.action",{"id":id},
				function(data){
	           			 if(data =="OK"){
	             		   alert("图书删除成功！");
	               		 window.location.reload();
	         		   }else{
	              		  alert("删除图书失败！");
	               		 window.location.reload();
	           		 }
	       		 });
	 		  }
	 		}
	 		function shoppingcard(id){
	 			$.post("<%=basePath%>book/shopcardlist.action",{"id":id});
	 		}
		</script>	
		
</head>
<body>
<div id="welcome">
		<p>欢迎来到柏屮书屋!</p>
		<p> 
			<a href="${ pageContext.request.contextPath}/logout.action ">退出登录</a>
			
		</p>
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
			<li><a href="${pageContext.request.contextPath}/book/shopcardlist.action">购物车</a></li>
			<li><a href="#">我的订单</a></li>
			<li><a href="#">个人中心</a></li>
		</ul>
		</div>
	</div>

<!-- 图书列表查询部分  start-->
	<div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h2 class="page-header">图书列表</h2>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="panel panel-default">
			<div class="panel-body">
			
				<ul class="nav navbar-top-links">
					<li>
						<div class="form-group">
							<input type="checkbox" id="all" value="全选" onclick="allchange()" class=""/>全选
						</div>
					</li>
					<li>
						<form class="form-inline" method="get" 
				     		 action="${pageContext.request.contextPath }/query/list.action">
							<div class="form-group">
								<select	class="form-control" id="customerFrom" name="custSource">
									<option value="bookname">书名</option>
									<option value="author">作者</option>
									<option value="pubdate">出版时间</option>
									<option value="booktype">图书类型</option>
								</select>
							</div>
							<div class="form-group">
								<input type="text" class="form-control" id="customerName" name="custName"  placeholder="请输入搜索关键字"/>
							</div>
							<button type="submit" class="btn btn-primary">搜索</button>
						</form>
					</li>
					<li>
						<button type="submit" class="btn btn-primary" onclick="deleteAll()">批量删除</button>
					</li>		
				</ul>
			</div>
		</div>
		
	
</div><div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<!-- /.panel-heading -->
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>ID</th>
								<th>书名</th>
								<th>作者</th>
								<th>出版时间</th>
								<th>图书类型</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${book}" var="book">
								<tr>
									<td>
										<input type="checkbox" name="shu" onclick="changes()" value="${book.bookid}">
										${book.bookid}
									</td>
									<td>${book.bookname}</td>
									<td>${book.author}</td>
									<td>${book.pubdate}</td>
									<td>${book.booktype}</td>					    
									<td>
										<a href="#" data-toggle="modal" data-target="#updatecustomer" class="btn btn-danger btn-xs" onclick="addshopping(${USER_SESSION.userId},${book.bookid})">加入购物车</a>
										<a href="#" class="btn btn-danger btn-xs" onclick="deleteshopping(${book.bookid})">删除</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>		
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->
		</div>

		</body>
</html>