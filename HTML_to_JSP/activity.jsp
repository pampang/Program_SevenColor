<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>	活动列表-七彩云欢迎您</title>
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/bs/css/bootstrap.min.css">
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/assets/css/dropdown-submenu.css">
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/assets/css/normal.css"/>

<style>
	.pop{
		background: rgba(60, 60, 60, .6);
		position: fixed;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
		margin: auto;
		z-index: 10000;
		overflow: hidden;
		display: none;
	}

	.pop-wrap{
		background: #ffefad;
		width: 60%;
		min-height: 30%;
		margin: 0 auto;
		margin-top: 10%;
		border-radius: 2%;
		padding: 0 5px 10px;
	}

	.pop h3{
		padding: 5px;
		color: #808000;
		border-bottom: 4px double black;
		font-weight: bold;
	}

	.pop p{
		font-size: 18px;
		color: #808000;
	}
</style>

	<!-- 2015.7.11-19:34-->
	<!-- include normal.css, gathering the special style setting -->
	<!-- adding new icon to navbar, only for the very first list -->

</head>
<body>
	
	<%@ include file="header.jsp" %>

	<h2 class="container">活动列表</h2>
	<div class="container">

		<div>
			<ol class="breadcrumb">
				<li><a href="/MSCMS/merchantHomePageAction.action">商家管理平台</a></li>
				<li class="active">活动列表</li>
			</ol>
		</div>

		<form class="form-horizontal col-md-12">
			<div class="form-group">
				<div class="col-md-offset-4 col-md-3">
					<div class="col-md-10">
						<input class="form-control" type="text" name="query" id="query" placeholder="请输入查询条件">
					</div>
					<div class="col-md-2">
						<button class="btn btn-primary"><span class="glyphicon glyphicon-search"></span></button>
					</div>
				</div>
				<div class="col-md-1">
						<a href="/MSCMS/JSP/merchant/activity_add.jsp" class="btn btn-success btn"><span class="glyphicon glyphicon-plus"></span>添加活动</a>
				</div>
			</div>
		</form>

		

		<table class="table table-striped table-bordered">
			<thead>
				<tr class="text-center">
					<th class="text-center">活动名称<a href="javascript:;"><span class="glyphicon glyphicon-resize-vertical"></span></a></th>
					<th class="text-center">创建时间<a href="javascript:;"><span class="glyphicon glyphicon-resize-vertical"></span></a></th>
					<th class="text-center">结束时间<a href="javascript:;"><span class="glyphicon glyphicon-resize-vertical"></span></a></th>
					<th class="text-center">活动图片</th>
					<th class="text-center">操作</th>
				</tr>
			</thead>
			<tbody>
				
				<c:forEach items="${activityPagination.resultList}" var="activity">
					<tr>
						<td class="text-center">
							<a href="javascript:;" class="pop-link">${activity.name }</a>
							<div class="pop">
								<div class="pop-wrap text-center">
									<h3>活动详情</h3>
									<p id="pop-msg-show" class="center text-left">${activity.description }</p>
									<button class="detail-confirm" class="btn btn-primary">确定</button>
								</div>
							</div>
						</td>
						<td class="text-center">${activity.dateCreated }</td>
						<td class="text-center">${activity.dateFinished }</td>
						<td class="text-center">
							<div id="merchant-picture">
								<img src="${activity.picture}" alt="">
							</div>
						</td>
						<td class="text-center col-md-2">
							<form class="col-md-6" action="initActivityModifyAction.action" method="post">
								<input type="hidden" value="${activity.id}" name="activity.id">
								<button type="submit" class="btn btn-primary btn-sm">编辑</button>
							</form>
							<form class="col-md-6" action="activityDeleteAction.action" method="post">
								<input type="hidden" value="${activity.id}" name="activity.id">
								<button type="submit" class="btn btn-primary btn-sm" onclick="confirm('是否确认删除？')">删除</button>
							</form>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		 <div class="btn-group form-group btn-group-sm center">
			<a href="activityListAction.action?activityPagination.pageNum=1" class="btn btn-default"><span class="glyphicon glyphicon-fast-backward"></span></a>
			<c:forEach var="pageNum" begin="1" end="${ activityPagination.pageCount}" > 
				<a href="activityListAction.action?activityPagination.pageNum=${pageNum}" class="btn btn-default">${pageNum}</a>
			</c:forEach>
			<a href="activityListAction.action?activityPagination.pageNum=${ pagination.pageCount}" class="btn btn-default"><span class="glyphicon glyphicon-fast-forward"></span></a>
		</div>

	</div>

	<%@ include file="footer.jsp" %>

	<script src="/MSCMS/JSP/merchant/assets/js/jquery.min.js"></script>
    <script src="/MSCMS/JSP/merchant/bs/js/bootstrap.min.js"></script>
    <script src="/MSCMS/JSP/merchant/assets/js/jquery.tools.min.js"></script>
    <script src="/MSCMS/JSP/merchant/assets/js/sidebar.js"></script>
    <script>
    	$(".pop-link").click(function(){
    		$(this).next().show();
    	})
		$(".detail-confirm").click(function(){
			$(this).parent().parent().hide();
		});
	</script>
</body>
</html>