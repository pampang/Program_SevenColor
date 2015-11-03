<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>	商家入盟注册-七彩云欢迎您</title>
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/bs/css/bootstrap.min.css">
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/assets/css/dropdown-submenu.css">
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/assets/css/normal.css"/>

	<!-- 2015.7.11-19:34-->
	<!-- include normal.css, gathering the special style setting -->
	<!-- adding new icon to navbar, only for the very first list -->

</head>
<body>

	<%@ include file="header1.jsp" %>

	<h2 class="container">商家入盟注册</h2>

	<div class="container">

		<div>
			<ol class="breadcrumb">
				<li><a href="/MSCMS/JSP/merchant/login.jsp">商家管理平台</a></li>
				<li class="active">商家入盟注册</li>
			</ol>
		</div>

		<form class="form-horizontal" role="form" action="/MSCMS/merchantSubmitApplyAction.action" method="post">

		<fieldset>

			<fieldset class="col-md-offset-3 col-md-6">
				<div id="legend">
					<legend>商家信息</legend>
				</div>

				<div class="form-wrap col-md-12">

					<div class="form-group">
						<label class="col-md-3 control-label" for="merchant-name"><em>*</em>商家名称：</label>
						<div class="col-md-9">
							<input class="form-control" type="text" name="merchantApplication.name" id="merchant-name" placeholder="请输入商家名称">
						</div>
					</div>

					<div class="form-group">
	                    <label class="col-md-3 control-label" for="type"><em>*</em>商家主类型：</label>
	                    <div class="col-md-9">
		                    <select class="form-control" name="merchantApplication.type" id="type">
		                    </select>
	                    </div>
	                </div>

	                <div class="form-group">
	                    <label class="col-md-3 control-label" for="subType"><em>*</em>商家次类型：</label>
	                    <div class="col-md-9">
		                    <select class="form-control" name="merchantApplication.subType" id="subType">
		                    </select>
	                    </div>
	                </div>

	                <div class="form-group">
	                	<label class="col-md-3 control-label" for="merchant-address"><em>*</em>所在地区：</label>
	                	<div class="col-md-3">
	                		<select class="form-control" name="merchantApplication.province" id="province">
	                		</select>
	                	</div>
	                	<div class="col-md-3">
	                		<select class="form-control" name="merchantApplication.city" id="city">
	                		</select>
	                		<!-- <span>市</span> -->
	                	</div>
	                	<div class="col-md-3">
	                		<select class="form-control" name="merchantApplication.district" id="district">
	                		</select>
	                		<!-- <span>区</span> -->
	                	</div>
	                </div>

	                <div class="form-group">
						<label class="col-md-3 control-label" for="merchant-detail-address"><em>*</em>详细地址：</label>
						<div class="col-md-9">
							<input class="form-control" type="text" name="merchantApplication.address" id="merchant-detail-address" placeholder="请输入商家地址">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label" for="merchant-email"><em>*</em>电子邮箱：</label>
						<div class="col-md-9">
							<input type="text" class="form-control" name="merchantApplication.email" id="merchant-email" placeholder="请输入商家电子邮箱">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label" for="merchant-number"><em>*</em>商家电话：</label>
						<div class="col-md-9">
							<input type="text" class="form-control" name="merchantApplication.phone" id="merchant-number" placeholder="请输入商家电话">
						</div>
					</div>


					<div class="form-group">
						<label class="col-md-3 control-label" for="merchant-zipcode"><em>*</em>邮编：</label>
						<div class="col-md-9">
							<input class="form-control" type="text" name="merchantApplication.zipCode" id="merchant-zipcode" placeholder="请输入当地邮编">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label" for="description"><em>*</em>申请理由：</label>
						<div class="col-md-9">
							<textarea class="form-control" rows="3" name="merchantApplication.description" id="description"></textarea>
						</div>
					</div>

				</div>

			</fieldset>			
			
			<fieldset class="col-md-offset-3 col-md-6">
				<div id="legend">
					<legend>联系人信息</legend>
				</div>
				<!-- 这里放输入栏。	全部集中在一块放。 -->
				<div class="form-wrap col-md-12">
	
					<div class="form-group">
						<label class="col-md-3 control-label" for="name"><em>*</em>姓名：</label>
						<div class="col-md-9">
							<input type="text" class="form-control" name="merchantApplication.contactName" id="name" placeholder="请输入您的姓名">
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-md-3 control-label" style="padding-top: 0;" for="sex"><em>*</em>性别：</label>
						<div class="col-md-2">
							<input type="radio" name="merchantApplication.contactGender" value="male">男
						</div>
						<div class="col-md-2">
							<input type="radio" name="merchantApplication.contactGender" value="female">女
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label" for="phone-number"><em>*</em>手机：</label>
						<div class="col-md-9">
							<input type="text" class="form-control" name="merchantApplication.contactPhone" id="phone-number" placeholder="请输入您的手机号码">
						</div>
					</div>

				</div>

				<!-- 这里放按钮和其他小部件。一般居中显示。按钮以长条形态出现。 -->
				<div class="form-group">
					<div class="col-md-offset-3 col-md-6 text-center">
						<button type="submit" class="btn btn-success btn-lg btn-block">确认无误，我要加盟！</button>
					</div>
				</div>
			</fieldset>
			
		</fieldset>	
		</form>
	</div>

	<%@ include file="footer.jsp" %>

	<script src="/MSCMS/JSP/merchant/assets/js/merchantType.js" type="text/javascript"></script>
	<script type="text/javascript">
		typeInit("type", "subType");
	</script>
	<script src="/MSCMS/JSP/merchant/assets/js/address.js" type="text/javascript"></script>
	<script type="text/javascript">
		addressInit('province', 'city', 'district', '广东', '广州市', '天河区');
	</script>
	<script src="/MSCMS/JSP/merchant/assets/js/jquery.min.js"></script>
    <script src="/MSCMS/JSP/merchant/bs/js/bootstrap.min.js"></script>
    <script src="/MSCMS/JSP/merchant/assets/js/jquery.tools.min.js"></script>
    <script src="/MSCMS/JSP/merchant/assets/js/sidebar.js"></script>
</body>
</html>

