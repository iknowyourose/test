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
			<li><a href="customer.jsp">首页</a></li>
			
			<li><a href="temp.jsp">客户服务</a></li>
			<li><a href="#">购物车</a></li>
			<li><a href="#">我的订单</a></li>
			<li><a href="#">个人中心</a></li>
			<li><a href="#">关于我们</a></li>
		</ul>
		</div>
	</div>
	<hr>
	<!-- 内容部分 -->
	<div id="main">
		<!-- 内容左边部分 -->
		<div id="content_left">
			<h2 style="margin-left:70px; font-size:26px; ">&nbsp;&nbsp;图&nbsp;&nbsp;&nbsp;书&nbsp;&nbsp;分&nbsp;&nbsp;类</h2>
			<hr style="width:300px; color:#cccccc;">
			<ul>
					
			<li><a href="">童&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;书</a></li>
			<li><a href="">教&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;辅</a></li>
			<li><a href="">小&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;说</a></li>
			<li><a href="">文&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;学</a></li>
			<li><a href="">传&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;记</a></li>
			<li><a href="">管&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;理</a></li>
			<li><a href="">励&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;志</a></li>
			<li><a href="">考&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;试</a></li>
			<li><a href="">科&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;技</a></li>
			<li><a href="">哲学宗教</a></li>
			<li><a href="">亲子家教</a></li>
			<li><a href="">保健养生</a></li>
			<li><a href="">进口原版</a></li>
			<li><a href="">电&nbsp;子&nbsp;书</a></li>
			<li><a href="">网络文学</a></li>
			</ul>
		</div>
	</div>
		
		<!-- 内容右边部分 -->
		<div id="content_right">
			<!-- 右边列的左边部分 ：即图片轮播及新书推荐 -->
			<div id="content_right_01">
				<!-- 轮播图片部分 -->
				<div id="turns_pic">
					<img src="<%=basePath%>/images/pic_04.jpg" alt="" id="pic" width="900px" height="300px"/>
				</div>
				
				<!-- 新书上架 -->
			<div class="new_title">
				<img src="<%=basePath%>/images/new_title.jpg" width="900px" height="90px"/>
			</div>	
				<!-- 新书推荐的排列 -->
				<div id="type_setting">
					<ul>
					
					<li>
						<img alt="" src="<%=basePath%>/images/book_02.jpg" title="天长地久：给美君的信">
					<!-- ul li标签嵌套ul -->
						<ul>
							<li class="type_01">
								<a href="#" class="bookname" onclick="showbook(1)">天长地久：给美君的信</a>  </br>
								<a href="#" style="color:#cccccc;">龙应台  著</a>    </br>
								<a href="#"style="color:red;">￥43.00</a>
								<a href="#" style="color:#cccccc;"> <s>￥58.80</s> </a>
							</li>
						</ul>
					</li>
					
					<li>
						<img alt="" src="<%=basePath%>/images/book_04.jpg" title="时间的历史">
						<!-- ul li标签嵌套ul -->
						<ul>
							<li class="type_01">
								<a href="#" onclick="showbook(2)">时间的历史</a>  </br>
								<a href="#" style="color:#cccccc;">歪歪兔  童书馆</a>    </br>
								<a href="#"style="color:red;">￥58.90</a>
								<a href="#" style="color:#cccccc;"> <s>￥68.00</s> </a>
							</li>
						</ul>
					</li>
					<li>
						<img alt="" src="<%=basePath%>/images/book_05.jpg" title="少时读书(书读完了)">
						<!-- ul li标签嵌套ul -->
						<ul>
							<li class="type_01">
								<a href="#" onclick="showbook(3)">少时读书(书读完了)</a>  </br>
								<a href="#" style="color:#cccccc;">废名</a>    </br>
								<a href="#"style="color:red;">￥34.90</a>
								<a href="#" style="color:#cccccc;"> <s>￥58.10</s> </a>
							</li>
						</ul>
					</li>
					<li>
						<img alt="" src="<%=basePath%>/images/book_06.jpg" title="谁的青春不迷茫">
						<!-- ul li标签嵌套ul -->
						<ul>
							<li class="type_01">
								<a href="#" onclick="showbook(4)">谁的青春不迷茫</a>  </br>
								<a href="#" style="color:#cccccc;">刘同</a>    </br>
								<a href="#"style="color:red;">￥31.00</a>
								<a href="#" style="color:#cccccc;"> <s>￥45.00</s> </a>
							</li>
						</ul>
					</li>
					<li>
						<img alt="" src="<%=basePath%>/images/book_07.jpg" title="复乐园">
						<!-- ul li标签嵌套ul -->
						<ul>
							<li class="type_01">
								<a href="#" onclick="showbook(5)">复乐园</a>  </br>
								<a href="#" style="color:#cccccc;">渡边淳一</a>    </br>
								<a href="#"style="color:red;">￥19.50</a>
								<a href="#" style="color:#cccccc;"> <s>￥31.00</s> </a>
							</li>
						</ul>
					</li>
					
				</ul>
				</div>
			</div>
			
			<!-- 右边列的右边部分 ：即搜索和畅销排行榜 -->
			<div id="content_right_02">
			<!-- 搜索框 -->
			<div id="refer">
				<form action="${pageContext.request.contextPath}/query/list.action">
					<input type="text" placeholder="请输入书名或作者"/>
					<button type="submit"></button>			
				</form>
			</div>
			<div class="clear"> 
			</div>
			<!-- 畅销 -->
			<div id="hot">
				<!-- 新书热卖 -->
				<img src="<%=basePath%>/images/hot.jpg"  style="width:300px; height:50px;"/>
				<div class="content_books">
					<ol class="hot_books">
					    <li>
						<h3><a href="#">给孩子立界限</a></h3>
					  
                                              <p >  <img src="<%=basePath%>/images/book_02.jpg" >
                                                <span>￥43.00&nbsp;&nbsp;<s>￥58.80</s></span>
                                             </p>
					    </li>
					    <li>
						<h3><a href="#" >半小时漫画中国史</a></h3>
					           <p> 
                                                <img src="<%=basePath%>/images/book_04.jpg" >
                                                <span>￥58.90&nbsp;&nbsp;<s>￥68.00</s></span>
                                         </p>    
					    </li>
					    <li>
						<h3><a href="#">灵魂有香气的女子</a></h3>
					      <p>
                                                <img src="<%=basePath%>/images/book_05.jpg" >
                                                <span>￥34.90&nbsp;&nbsp;<s>￥58.10</s></span>
                                               </p>
					    </li>
					    <li>
						<h3><a href="#">十九岁的时差</a></h3>
					       <p>
                                                <img src="<%=basePath%>/images/book_06.jpg" >
                                                <span>￥31.00&nbsp;&nbsp;<s>￥45.00</s></span>
                                        </p>
					    </li>
					    <li>
						<h3><a href="#">掌控情绪从来都不靠忍</a></h3>
					      <p>
                                                <img src="<%=basePath%>/images/book_07.jpg" >
                                                <span>￥19.50&nbsp;&nbsp;<s>￥31.00</s></span>
                                              </p>
					    </li>
                                        </ol>

			</div>
<!-- 用户登录模态框 -->
<div class="modal fade" id="loginUser" tabindex="-1" role="dialog" >
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myUserlogin">用户登录</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="myUserform">
					<div class="form-group">
						<label for="edit_customerName" class="col-sm-2 control-label">账号</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="usercode" placeholder="账号" name="usercode" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_linkMan" class="col-sm-2 control-label">密码</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="password" placeholder="密码" name="password" />
						</div>
					</div>		
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="">登录</button>
			</div>
		</div>
	</div>
</div> 
<!-- 用户注册模态框 -->
<div class="modal fade" id="UserRegister" tabindex="-1" role="dialog" aria-labelledby="myUserlogin">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myUserlogin">用户登录</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="myUserform">
					<div class="form-group">
						<label for="edit_customerName" class="col-sm-2 control-label">用户名</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_customerName" placeholder="用户名" name="old_pwd" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_linkMan" class="col-sm-2 control-label">密码</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_linkMan" placeholder="密码" name="user_password" />
						</div>
					</div>		
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="">登录</button>
			</div>
		</div>
	</div>
</div>    

			<script>
              $('.content_books ol li').hover(function(){
	 $(this).addClass('tx').siblings().removeClass('tx')},function(){});
            </script>
            <script type="text/javascript">
            	var picsArry=new Array();
 	picsArry[0]="<%=basePath%>/images/pic_04.jpg";
 	picsArry[1]="<%=basePath%>/images/pic_02.jpg";
 	picsArry[2]="<%=basePath%>/images/pic_03.jpg";
 	picsArry[3]="<%=basePath%>/images/pic_01.jpg";
 	
 	var timer,index=0;
 	 window.onload=showpic;
 	 
 	 function showpic(){
 		 document.getElementById("pic").src=picsArry[index];
 		 if(index<(picsArry.length-1)){
 			 
 			 index++;
 		 }
 		 else{
 			 index=(index+1)%picsArry.length;
 			  }
 			 timer=setTimeout("showpic()",2000);
 
 		 }
            </script>
            <script type="text/javascript">
           		function showbook(id){
           			$.post("<%=basePath%>book/showbook.action",{"id":id});
           		}	
           	</script>
			</div>
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
