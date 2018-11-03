<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>注册界面</title>

	<link  rel="stylesheet" type="text/css" href="css/css2.css" >
	
	<script src= "${pageContext.request.contextPath}/js/jquery-3.2.1.js"></script>
<script language="javascript">  
function isValid()  
{  	
	var username = $("#user_name").val();
    var password = $("#user_pwd").val();
    var password2 = $("#pwd2").val();
	if (username==""||password=="")  
		{  
			alert("用户名或密码不能为空");  
			return false;  
		}  
	if (password!=password2)  
	{  
		alert("两次输入的密码不一致，请重新输入！");  
		return false;  
	  
	}else {
		alert(username);
		alert(password);
		return true;  
	}
} 


</script>  
	
	
</head>
<body>
<!-- 头部横条：注册信息 -->
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="2" ></td>
    </tr>
  <tr>
    <td width="75" height="23" bgcolor="#deedf8">&nbsp;</td>
    <td width="958" align="left" bgcolor="#deedf8" class="text_cray1">当前位置:注册信息　</td>
    </tr>
</table>
<!-- 标题的：注册信息 -->
    <table width="835" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="30" colspan="2" align="center">&nbsp;</td>
      </tr>
      <tr>
        <td width="41" height="7" align="center">&nbsp;</td>
        <td width="794" height="30" align="left" valign="top"><span class="text_blod_title">注册信息</span></td>
      </tr>
      <tr>
        <td height="15" colspan="2" align="center"><img src="images/line1.jpg" width="835" height="6"></td>
      </tr>
      <tr>
        <td colspan="2">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="5%">&nbsp;</td>
            <td width="95%" align="left" class="text_cray">注：标有 <span class="text_red">*</span> 处，均为必填项</td>
          </tr>
          <tr>
            <td height="15" colspan="2">&nbsp;</td>
          </tr>
		</table>
		</td>
	</tr>
    </table>   
     <!-- 注册信息提交的表单-->
	<form action="${pageContext.request.contextPath }/register.action" method="post" onsubmit="return isValid()">
         <table width="700" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td height="30" colspan="4" align="left" class="text_red1"><span class="text_title">登录信息</span></td>
          </tr>
          
          <tr>
            <td width="19" align="center" class="text_red">*</td>
                  <td width="98" height="40" align="left" class="text_cray1">用户名：</td>
                  <td width="160" align="left" class="text_cray1">
                  
                  
                  <input name="user_name" type="text" class="text_cray" id="username" onblur="processRequest();" /></td>
                  <td width="423" height="35" align="left" class="text_cray"><span id="res" style="color: red"></span>  由字母、数字或“_”组成，长度不少于6位，不多于30位</td>
          </tr>
          <tr>
            <td width="19" align="center" class="text_red1"><span class="text_red">*</span></td>
                  <td width="98" height="40" align="left" class="text_cray1">密码：</td>
                  
                  <td align="left" class="text_cray1"><input name="user_pwd" type="password" class="text_cray" id="password" /></td>
                  
                  <td height="35" align="left" class="text_cray">不少于6位字符</td>
           </tr>
          <tr>
            <td width="19" align="center" class="text_red1"><span class="text_red">*</span></td>
                  <td width="98" height="40" align="left" class="text_cray1">确认密码：</td>
                  
                  <td align="left" class="text_cray1"><input name="pwd2" type="password" class="text_cray" id="password2" /></td>
                  
                  <td height="35" align="left" class="text_cray">请再次输入密码</td>  	
          </tr>
          
          <tr>
          	<td width="19" align="center" class="text_red1">  
          		<td width="98" height="40" align="left" class="text_cray1"></td>
          		<td>
          			<input type="submit" value="提交"   />   
          		</td>
          	</td>
          </tr>
        </table>
	</form>
</body>
</html>