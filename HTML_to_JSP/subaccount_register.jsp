<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>子账号注册-七彩云欢迎您</title>
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/bs/css/bootstrap.min.css">
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/assets/css/dropdown-submenu.css">
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/assets/css/normal.css"/>

	<!-- 2015.7.11-19:34-->
	<!-- include normal.css, gathering the special style setting -->
	<!-- adding new icon to navbar, only for the very first list -->

</head>
<body>
	
	<%@ include file="header.jsp" %>

	<h2 class="container">子账号添加</h2>
	<div class="container">

		<div>
			<ol class="breadcrumb">
				<li><a href="/MSCMS/merchantHomePageAction.action">商家管理平台</a></li>
				<li class="active">子账号添加</li>
			</ol>
		</div>

		<form class="form-horizontal" role="form" action="/MSCMS/merchantSubAccountRegisterAction.action" method="post">

			<fieldset class="col-md-offset-3 col-md-6">

				<div class="form-wrap col-md-12">

					<div class="form-group">
						<label class="col-md-3 control-label" for="subaccount-name">子账号：</label>
						<div class="col-md-9">
							<input class="form-control" type="text" name="account" id="subaccount-name" placeholder="请输入子账号名称">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label" for="subaccount-password">子账号密码：</label>
						<div class="col-md-9">
							<input class="form-control" type="password" name="password" id="subaccount-password" placeholder="请输入子账号密码">
						</div>
					</div>

<!-- 					<div class="form-group">
						<label class="col-md-3 control-label" for="subaccount-password-confirm">确认密码：</label>
						<div class="col-md-9">
							<input class="form-control" type="password" id="subaccount-password-confirm" placeholder="请确认子账号密码">
						</div>
					</div>
 -->
					<div class="form-group">
						<label class="col-md-3 control-label" for="subaccount-type">账号类型：</label>
						<div class="col-md-9">
							<select class="form-control" name="type" id="subaccount-type">
								<option value="前台">前台</option>
								<option value="客户经理">客户经理</option>
							</select>
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label" style="padding-top: 0" for="subaccount-state">子账号状态：</label>
						<div class="col-md-9">
							<select class="form-control" name="state" id="subaccount-type">
								<option value="启用">启用</option>
								<option value="停用">停用</option>
							</select>
						</div>
					</div>
				</div>

				<div class="form-group">
					<div class="col-md-offset-3 col-md-6 text-center">
						<button type="submit" class="btn btn-success btn-lg btn-block">确认无误，我要添加！</button>
					</div>
				</div>
			</fieldset>
		</form>
	</div>

	<%@ include file="footer.jsp" %>

	<script src="/MSCMS/JSP/merchant/assets/js/jquery.min.js"></script>
    <script src="/MSCMS/JSP/merchant/bs/js/bootstrap.min.js"></script>
    <script src="/MSCMS/JSP/merchant/assets/js/jquery.tools.min.js"></script>
    <script src="/MSCMS/JSP/merchant/assets/js/sidebar.js"></script>
</body>
</html>