<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>重置密码-七彩云欢迎您</title>
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/bs/css/bootstrap.min.css">
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/assets/css/dropdown-submenu.css">
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/assets/css/normal.css"/>

	<!-- 2015.7.11-19:34-->
	<!-- include normal.css, gathering the special style setting -->
	<!-- adding new icon to navbar, only for the very first list -->

</head>
<body>
	
	<%@ include file="header1.jsp" %>

	<h2 class="container">重置密码</h2>

	<div class="container">
		<div>
			<ol class="breadcrumb">
				<li><a href="/MSCMS/JSP/merchant/login.jsp">商家管理平台</a></li>
				<li class="active">重置密码</li>
			</ol>
		</div>

		<form class="form-horizontal"role="form" action="/MSCMS/resetPasswordAction.action" method="post">
			<fieldset  class="col-md-offset-3 col-md-6">
				<input type="hidden" name="id" value="${ param.id}" />
				<div class="control-group">
				
					<div class="form-group">
						<label class="col-md-3 control-label" for="user-name">新密码：</label>
						<div class="col-md-9">
							<input type="password" class="form-control" name="newPassword1" id="user-name" placeholder="请输入您的新密码">
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-md-3 control-label" for="user-pwd">确认新密码：</label>
						<div class="col-md-9">
							<input type="password" class="form-control" name="newPassword2" id="user-pwd" placeholder="请确认您的新密码">
						</div>
					</div>
				</div>

				<div class="form-group">
					<div class="col-md-offset-3 col-md-6">
						<button type="submit" class="btn btn-success btn-lg btn-block">点我重置</button>
					</div>
				</div>
			</fieldset>			

		</form>
	</div>

	<%@ include file="footer.jsp" %>

</body>
</html>