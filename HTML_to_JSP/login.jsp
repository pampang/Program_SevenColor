<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>	登录-七彩云欢迎您</title>
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/bs/css/bootstrap.min.css">
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/assets/css/dropdown-submenu.css">
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/assets/css/normal.css"/>

	<!-- 2015.7.11-19:34-->
	<!-- include normal.css, gathering the special style setting -->
	<!-- adding new icon to navbar, only for the very first list -->

</head>
<body>
	
	<%@ include file="header1.jsp" %>

	<h2 class="container">登录</h2>

	<div class="container">

		<form class="form-horizontal" role="form" action="/MSCMS/merchantLoginAction.action" method="post">
			<fieldset class="col-md-offset-3 col-md-6">

				<div class="form-wrap col-md-12">
					<div class="form-group">
						<label class="col-md-3 control-label" for="user-name">用户名：</label>
						<div class="col-md-9">
							<input type="text" class="form-control" name="account" id="user-name" placeholder="请输入您的账号">
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-md-3 control-label" for="user-pwd">密码：</label>
						<div class="col-md-9">
							<input type="password" class="form-control" name="password" id="user-pwd" placeholder="请输入您的密码">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label" for="verification-code">验证码：</label>
						<div class="col-md-6">
							<input type="text" class="form-control" name="verificationCode" id="verification-code" placeholder="请输入验证码">
						</div>
						<div class="col-md-3">
							<a href="javascript:;" onclick="myReload()"><img id="code-img" src="/MSCMS/verificationCode" width="100%"></a>
						</div>
					</div>
				</div>

				<div class="form-group">
					<div class="col-md-offset-3 col-md-6 text-center">
						<button type="submit" class="btn btn-success btn-lg btn-block">GO!</button>
						<div>
							<input class="text-warning" type="checkbox">记住我
							<span style="width: 1px;">|</span>
							<a href="/MSCMS/JSP/merchant/register.jsp">商家注册</a>
							<span style="width: 1px;">|</span>
							<a href="/MSCMS/JSP/merchant/reset.jsp">找回密码</a>
						</div>
					</div>
				</div>
			</fieldset>
		</form>
	</div>

	<%@ include file="footer.jsp" %>

<script language="javascript">  
function myReload() {  
    document.getElementById("code-img").src = document.getElementById("code-img").src.split("?")[0]  + "?nocache=" + new Date().getTime();  

}  
</script>  
</body>
</html>