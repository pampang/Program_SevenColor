<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>\

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
				<li><a href="index.html">商家管理平台</a></li>
				<li class="active">重置密码</li>
			</ol>
		</div>
		
		<form class="form-horizontal" action="/MSCMS/merchantResetPasswordApplyAction.action" method="post">
			<fieldset class="col-md-offset-3 col-md-6">

				<div class="form-group">
					<label for="reset-account" class="control-label col-md-3">重置账号：</label>
					<div class="col-md-9">
						<input type="text" class="form-control" name="account" id="reset-account" placeholder="请输入需要重置的账号">
					</div>
				</div>
			
				<div class="form-group">
					<div class="col-md-offset-3 col-md-6">
						<button type="submit" class="btn btn-success btn-lg btn-block">点我提交</button>
						<p class="help-block hide">重置链接已发送到您绑定的邮箱中，请注意查收！</p>
					</div>
				</div>

			</fieldset>
		</form>
	</div>

	<%@ include file="footer.jsp" %>

</body>
</html>