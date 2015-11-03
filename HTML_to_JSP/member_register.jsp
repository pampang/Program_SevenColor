<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>	会员注册-七彩云欢迎您</title>
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/bs/css/bootstrap.min.css">
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/assets/css/dropdown-submenu.css">
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/assets/css/normal.css"/>

	<!-- 2015.7.11-19:34-->
	<!-- include normal.css, gathering the special style setting -->
	<!-- adding new icon to navbar, only for the very first list -->

</head>
<body>

	<%@ include file="header.jsp" %>

	<h2 class="container">会员注册</h2>
	<div class="container">

		<div>
			<ol class="breadcrumb">
				<li><a href="/MSCMS/merchantHomePageAction.action">商家管理平台</a></li>
				<li class="active">会员注册</li>
			</ol>
		</div>

		<form class="form-horizontal" role="form" action="/MSCMS/submitRegisterAction.action" method="post">
			<input type="hidden" name="id" value="${param.id }" />
			<fieldset class="col-md-offset-3 col-md-6">

				<div class="form-wrap col-md-12">

					<div class="form-group">
						<label class="col-md-3 control-label" for="member-account">会员账号：</label>
						<div class="col-md-9">
							<input type="text" class="form-control" name="member.account" id="member-account" placeholder="请输入会员账号">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label" for="member-pwd">会员密码：</label>
						<div class="col-md-9">
							<input type="password" class="form-control" name="member.password" id="member-pwd" placeholder="请输入会员密码">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label" for="member-pwd-confirm">确认会员密码：</label>
						<div class="col-md-9">
							<input type="password" class="form-control" name="secondPassword" id="member-pwd-confirm" placeholder="请确认会员密码">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label" for="member-name">会员姓名：</label>
						<div class="col-md-9">
							<input type="text" class="form-control" name="member.name" id="member-name" placeholder="请输入会员姓名">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label" style="padding-top: 0;" for="member-gender"><em>*</em>性别：</label>
						<div class="col-md-2">
							<input type="radio" name="member.gender" value="male">男
						</div>
						<div class="col-md-2">
							<input type="radio" name="member.gender" value="female">女
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label" for="member-birthday">生日：</label>
						<div class="col-md-9">
							<input type="text" class="Wdate form-control" name="member.birthday" onClick="WdatePicker({lang:'zh-cn',dateFmt:'yyyy-MM-dd'})">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label" for="member-phone">手机：</label>
						<div class="col-md-9">
							<input type="text" class="form-control" name="member.phone" id="member-phone" placeholder="请输入会员手机">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label" for="member-email">电子邮箱：</label>
						<div class="col-md-9">
							<input type="text" class="form-control" name="member.email" id="member-email" placeholder="请输入会员电子邮箱">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label" for="member-address">会员地址：</label>
						<div class="col-md-9">
							<input type="text" class="form-control" name="member.address" id="member-address" placeholder="请输入会员地址">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label" for="member-id-type">证件类型：</label>
						<div class="col-md-9">
							<select class="form-control" name="member.documentType" id="member-id-type">
			                    <option value="id_card" selected>身份证</option>
			                    <option value="stu_card">学生证</option>
			                    <option value="license">驾驶证</option>
			                    <option value="passport">护照</option>
			                </select>
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label" for="member-id">证件号码：</label>
						<div class="col-md-9">
							<input type="text" class="form-control" name="member.documentNumber" id="member-id" placeholder="请输入证件号码">
						</div>
					</div>

					<hr>

					<div class="form-group">
						<label class="col-md-3 control-label" for="member-card">会员卡号：</label>
						<div class="col-md-9">
							<input type="text" class="form-control" name="cardNumber" id="member-card" placeholder="请输入绑定的会员卡号">
						</div>
					</div>
					
				</div>

				<!-- 这里放按钮和其他小部件。一般居中显示。按钮以长条形态出现。 -->
				<div class="form-group">
					<div class="col-md-offset-3 col-md-6 text-center">
						<button type="submit" class="btn btn-success btn-lg btn-block">确认无误，我要注册！</button>
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
    <script src="/MSCMS/JSP/merchant/assets/js/date/WdatePicker.js" type="text/javascript"></script>
</body>
</html>