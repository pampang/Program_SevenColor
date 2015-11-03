<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
	
	<%@ include file="header.jsp" %>

	<h2 class="container">修改密码</h2>
	<div class="container">

		<div>
			<ol class="breadcrumb">
				<li><a href="/MSCMS/merchantHomePageAction.action">商家管理平台</a></li>
				<li class="active">修改密码</li>
			</ol>
		</div>

		
		<form class="form-horizontal" role="form" action="/MSCMS/merchantChangePasswordAction.action" method="post">
			<fieldset class="col-md-offset-3 col-md-6">
				<div class="form-wrap col-md-12">
					<div class="form-group">
						<label class="col-md-3 control-label" for="current-password">当前密码：</label>
						<div class="col-md-9">
							<input type="password" name="password" class="form-control" id="current-password" placeholder="请输入当前密码">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label" for="new-password">新密码：</label>
						<div class="col-md-9">
							<input type="password" name="newPassword1" class="form-control" id="new-password" placeholder="请输入您的新密码">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label" for="password-confirm">确认新密码：</label>
						<div class="col-md-9">
							<input type="password" name="newPassword2" class="form-control" id="password-confirm" placeholder="请确认您的新密码">
						</div>
					</div>
				</div>

				<div class="form-group">
					<div class="col-md-offset-3 col-md-6 text-center">
						<button type="submit" class="btn btn-success btn-lg btn-block">GO!</button>
					</div>
				</div>
			</fieldset>			
		</form>
	</div>
	
	<%@ include file="footer.jsp" %>

	<!-- js -->
	<script src="/MSCMS/JSP/merchant/assets/js/jquery.min.js"></script>
    <script src="/MSCMS/JSP/merchant/bs/js/bootstrap.min.js"></script>
    <script src="/MSCMS/JSP/merchant/assets/js/jquery.tools.min.js"></script>
    <script src="/MSCMS/JSP/merchant/assets/js/sidebar.js"></script>
</body>
</html>