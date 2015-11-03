<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>	会员卡信息统计-七彩云欢迎您</title>
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/bs/css/bootstrap.min.css">
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/assets/css/dropdown-submenu.css">
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/assets/css/normal.css"/>

	<!-- 2015.7.11-19:34-->
	<!-- include normal.css, gathering the special style setting -->
	<!-- adding new icon to navbar, only for the very first list -->

</head>
<body>

	<%@ include file="header.jsp" %>

	<h2 class="container">会员卡信息统计</h2>

	<div class="container">

		<div>
			<ol class="breadcrumb">
				<li><a href="/MSCMS/merchantHomePageAction.action">商家管理平台</a></li>
				<li class="active">会员卡信息统计</li>
			</ol>
		</div>

		<div class="col-md-6">
			<div class="col-md-3">
				<a href="/MSCMS/allListAction.action" class="btn btn-default btn-block">全部</a>
			</div>
			<div class="col-md-3">
				<a href="/MSCMS/usedListAction.action" class="btn btn-default btn-block">已发</a>
			</div>
			<div class="col-md-3">
				<a href="/MSCMS/unusedListAction.action" class="btn btn-success btn-block active">未发</a>
			</div>
		</div>

		<form class="form-horizontal col-md-offset-2 col-md-4">
			<div class="form-group">
				<div class="col-md-9">
					<input class="form-control" type="text" name="query" id="query" placeholder="请输入查询条件">
				</div>
				<div class="col-md-3">
					<button class="btn btn-primary">查询</button>
				</div>
			</div>
		</form>

		<table class="table table-striped table-bordered">
			<thead>
				<tr>
					<th class="text-center">会员卡卡号<a href="javascript:;"><span class="glyphicon glyphicon-resize-vertical"></span></a></th>
					<th class="text-center">领卡时间<a href="javascript:;"><span class="glyphicon glyphicon-resize-vertical"></span></a></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ pagination.resultList}" var="cardRegisterRecord">
					<tr>
						<td class="text-center">${cardRegisterRecord.card.cardNumber }</td>
						<td class="text-center">${cardRegisterRecord.dateMerchantReceived } </td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<div class="btn-group form-group btn-group-sm center">
			<a href="/MSCMS/unusedListAction.action?pagination.pageNum=1" class="btn btn-default"><span class="glyphicon glyphicon-fast-backward"></span></a>
			<c:forEach var="pageNum" begin="1" end="${ pagination.pageCount}" > 
				<a href="/MSCMS/unusedListAction.action?pagination.pageNum=${pageNum}" class="btn btn-default">${pageNum}</a>
			</c:forEach>
			<a href="/MSCMS/unusedListAction.action?pagination.pageNum=${ pagination.pageCount}" class="btn btn-default"><span class="glyphicon glyphicon-fast-forward"></span></a>
		</div>
		
	</div>
	
	<%@ include file="footer.jsp" %>

	<script src="/MSCMS/JSP/merchant/assets/js/jquery.min.js"></script>
    <script src="/MSCMS/JSP/merchant/bs/js/bootstrap.min.js"></script>
    <script src="/MSCMS/JSP/merchant/assets/js/jquery.tools.min.js"></script>
    <script src="/MSCMS/JSP/merchant/assets/js/sidebar.js"></script>
</body>
</html>