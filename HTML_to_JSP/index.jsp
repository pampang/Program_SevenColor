<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>	商家管理平台-七彩云欢迎您</title>
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/bs/css/bootstrap.min.css">
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/assets/css/dropdown-submenu.css">
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/assets/css/normal.css"/>

	<!-- 2015.7.11-19:34-->
	<!-- include normal.css, gathering the special style setting -->
	<!-- adding new icon to navbar, only for the very first list -->

</head>
<body>
	
	<%@ include file="header.jsp" %>

	<h2 class="container">HI!<br /><span class="merchant-name">${merchant.name }</span></h2>

	<div class="container">
		
		<div class="form-group col-md-offset-2 col-md-8 text-center">
			<div class="col-md-4">
				<a href="/MSCMS/JSP/merchant/member_charge.jsp" class="btn btn-primary btn-lg">充值</a>
			</div>
			<div class="col-md-4">
				<a href="/MSCMS/JSP/merchant/member_consume.jsp" class="btn btn-success btn-lg">消费</a>
			</div>
			<div class="col-md-4">
				<a href="/MSCMS/merchantQueryCommentAction.action" class="btn btn-warning btn-lg">
					点评
					<span class="msg-count">${commentCount }</span>
				</a>
			</div>
		</div>

		<div class="form-group col-md-6">
			<h4>基本资料</h4>
			<table class="table">
				<tr>
					<th>主类型：</th>
					<td>${merchant.type }</td>
				</tr>
				<tr>
					<th>次类型：</th>
					<td>${merchant.subType }</td>
				</tr>
				<tr>
					<th>地址：</th>
					<td>${merchant.province }${merchant.city }${merchant.district }${merchant.address }</td>
				</tr>
				<tr>
					<th>电话：</th>
					<td>${merchant.phone }</td>
				</tr>
				<tr>
					<th>电子邮箱：</th>
					<td>${merchant.email }</td>
				</tr>
				<tr>
					<th>网址：</th>
					<td>${merchant.website }</td>
				</tr>
				<tr>
					<th>邮编：</th>
					<td>${merchant.zipCode }</td>
				</tr>
				<tr>
					<th>简介：</th>
					<td>${merchant.introduction }</td>
				</tr>
				<tr>
					<th>商家图片：</th>
					<td id="merchant-picture"><img src="${merchant.picture }" alt=""></td>
				</tr>
			</table>
		</div>

		<div class="col-md-6">
			<h4>基本统计</h4>
			<table class="table">
				<tr>
					<th>今日充值：</th>
					<td>${rechargeCount }元</td>
				</tr>
				<tr>
					<th>今日消费：</th>
					<td>${consumptionCount }元</td>
				</tr>
				<tr>
					<th>所有活动：</th>
					<td>${activityCount }个</td>
				</tr>
				<tr>
					<th>所有产品：</th>
					<td>${productCount }个</td>
				</tr>
			</table>
		</div>

	</div>
	
	<%@ include file="footer.jsp" %>

	<script src="/MSCMS/JSP/merchant/assets/js/jquery.min.js"></script>
    <script src="/MSCMS/JSP/merchant/bs/js/bootstrap.min.js"></script>
    <script src="/MSCMS/JSP/merchant/assets/js/jquery.tools.min.js"></script>
    <script src="/MSCMS/JSP/merchant/assets/js/sidebar.js"></script>
</body>
</html>