<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/css.css"/>
<!-- 引入css样式文件 -->
	<!-- Bootstrap Core CSS -->
	<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" />
	<!-- MetisMenu CSS -->
	<link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet" />
	<!-- DataTables CSS -->
	<link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet" />
	<!-- Custom CSS -->
	<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet" />
	<!-- Custom Fonts -->
	<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath%>css/boot-crm.css" rel="stylesheet" type="text/css" />
	
</head>
<!-- 引入js文件 -->
<!-- jQuery -->
<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script src="<%=basePath%>js/metisMenu.min.js"></script>
<!-- DataTables JavaScript -->
<script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
<script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>
<!-- Custom Theme JavaScript -->
<script src="<%=basePath%>js/sb-admin-2.js"></script>
<!-- 编写js代码 -->
<script type="text/javascript">
//清空新建管理员窗口中的数据
	function clearBook() {
	    $("#new_bookName").val("");
	    $("#new_bookType").val("");
	    $("#new_bookAuthor").val("");
	    $("#new_bookPrice").val("");
	    
	}
	// 创建管理员
	function createBook() {
	$.post("<%=basePath%>book/create.action",
	$("#new_book_form").serialize(),function(data){
	        if(data =="OK"){
	            alert("图书上架成功！");
	            window.location.reload();
	        }else{
	            alert("图书上架失败！");
	            window.location.reload();
	        }
	    });
	}
</script>
<body>
<div id="wrapper">
	<!-- 左侧显示列表部分 start-->
	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<ul class="nav" id="side-menu">
				<li class="sidebar-search">
					<div class="input-group custom-search-form">
							<h3 style="padding-left:50px">菜单列表</h3>						
					</div> 
				</li>
				<li>
				    <a>
				      <i class="fa fa-dashboard fa-fw"></i> 图书管理
				    </a>
				  <ul class="nav">
				  	<li >
				  		<a href="${pageContext.request.contextPath }/customer/list.action" class="active">图书上新</a>
				  	</li>
				  	<li>
				  		<a href="${pageContext.request.contextPath }/downlist.action" class="active">图书下架</a>
				  	</li>
				  	
				  </ul>
				</li>
				
	
				<li>
				    <a href="#">
				      <i class="fa fa-dashboard fa-fw" ></i> 系统管理
				    </a>
				    <ul class="nav">
				  	<li >
				  		<a>密码管理</a>
				  	</li>
				  	<li>
				  		<a>权限管理</a>
				  	</li>
				  	<li>
				  		<a>登陆管理</a>
				  	</li>
				  </ul>
				</li>
			</ul>
		</div>
	</div>
	<!-- 左侧显示列表部分 end--> 
	
	    <!-- 客户列表查询部分  start-->
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
						<button type="submit" class="btn btn-primary" onclick="deleteAll()">批量删除</button>
					</li>	
					<li>
						<div >
						<a href="#"  data-toggle="modal" 
		           data-target="#newBookDialog" onclick="clearBook()" >新建图书信息</a>
					</div>
					</li>	
				</ul>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<!-- /.panel-heading -->
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>ID</th>
								<th>书名</th>
								<th>作者</th>
								<th>价格</th>
								<th>出版社</th>
								<th>类型</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${book}" var="book">
								<tr>
									<td>
										<input type="checkbox" name="shu" onclick="changes()" value="${book.bookid}"/>
										${book.bookid}
									</td>
									<td>${book.bookname}</td>
									<td>${book.author}</td>
									<td>${book.price}</td>
									
									<td>${book.booktype}</td>
								    							    
									<td>
										<a href="#"  data-toggle="modal" 
		           data-target="#updatecustomer" class="btn btn-danger btn-xs" onclick= "editCustomer(${customer.cust_id})">修改</a>
										<a href="#" class="btn btn-danger btn-xs" onclick="deleteCustomer(${customer.cust_id})">删除</a>
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
	</div>

<!-- 创建图书模态框 -->
<div class="modal fade" id="newBookDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">新建图书信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="new_book_form">
					<div class="form-group">
						<label for="new_bookName" class="col-sm-2 control-label">
						    名称
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_bookname" placeholder="书名" name="bookname" />
						</div>
					</div>
						<div class="form-group">
						<label for="new_bookType" style="float:left;padding:7px 15px 0 27px;">类型</label> 
						<div class="col-sm-10">
							<select	class="form-control" id="new_bookType" name="booktype">
								<option value="">--请选择--</option>
								<option value="文学">文学</option>
								<option value="小说">小说</option>
								<option value="童书">童书</option>
								<option value="励志">励志</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="new_bookAuthor" class="col-sm-2 control-label">
						    作者
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_bookauthor" placeholder="作者" name="author" />
						</div>
					</div>
					
					<div class="form-group">
						<label for="new_bookPrice" class="col-sm-2 control-label">
						    价格
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_bookprice" placeholder="价格" name="price" />
						</div>
					</div>	
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="createBook()">创建</button>
			</div>
		</div>
	</div>
</div>
	
		
</div>	
</body>
</html>