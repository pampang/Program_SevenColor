<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>	子账号管理-七彩云欢迎您</title>
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/bs/css/bootstrap.min.css">
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/assets/css/dropdown-submenu.css">
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/assets/css/normal.css"/>

	<!-- 2015.7.11-19:34-->
	<!-- include normal.css, gathering the special style setting -->
	<!-- adding new icon to navbar, only for the very first list -->

</head>
<body>
	
	<%@ include file="header.jsp" %>

	<h2 class="container">子账号管理</h2>
	<div class="container">

		<div>
			<ol class="breadcrumb">
				<li><a href="/MSCMS/merchantHomePageAction.action">商家管理平台</a></li>
				<li class="active">子账号管理</li>
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
						<a class="btn btn-success btn" href="JSP/merchant/subaccount_register.jsp"><span class="glyphicon glyphicon-plus"></span>添加子账号</a>
				</div>
			</div>
		</form>

		<table class="table table-striped table-bordered">
			<thead>
				<tr>
					<th class="text-center">子账号<a href="javascript:;"><span class="glyphicon glyphicon-resize-vertical"></span></a></th>
					<th class="text-center">账号类型<a href="javascript:;"><span class="glyphicon glyphicon-resize-vertical"></span></a></th>
					<th class="text-center">是否启用<a href="javascript:;"><span class="glyphicon glyphicon-resize-vertical"></span></a></th>
					<th class="text-center">操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${merchantAccountList }" var="account">
					<tr>
						<td class="text-center">
							${account.account }
							<input type="hidden" value="${account.id }" class="id">
						</td>
						<td class="text-center">
							<select name="account.type" class="type">
								<option value="前台">前台</option>
								<option value="客户经理">客户经理</option>
								<option value="管理员" disabled>管理员</option>
							</select>
							<input type="hidden" value="${account.type }">
							
						</td>
						<td class="text-center">
							<select name="account.state" class="state">
								<option value="启用">启用</option>
								<option value="停用">停用</option>
							</select>
							<input type="hidden" value="${account.state }">
						</td>
						<td class="text-center">
							<a class="btn btn-primary btn-xs password">重置密码</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<!-- <div class="btn-group form-group btn-group-sm center">
			<button type="button" class="btn btn-default"><span class="glyphicon glyphicon-fast-backward"></span></button>
			<button type="button" class="btn btn-default active">1</button>
			<button type="button" class="btn btn-default">2</button>
			<button type="button" class="btn btn-default">3</button>
			<button type="button" class="btn btn-default"><span class="glyphicon glyphicon-fast-forward"></span></button>
		</div> -->

	</div>

	<%@ include file="footer.jsp" %>

	<!-- js -->
	<script src="/MSCMS/JSP/merchant/assets/js/jquery.min.js"></script>
    <script src="/MSCMS/JSP/merchant/bs/js/bootstrap.min.js"></script>
    <script src="/MSCMS/JSP/merchant/assets/js/jquery.tools.min.js"></script>
    <script src="/MSCMS/JSP/merchant/assets/js/sidebar.js"></script>
    <script>
    	$("select").each(function(){$(this).val($(this).next().val());});
    </script>
    <script>
    	$(".type").change(function(){
    		var that = this;
    		$.ajax({
    			url: "merchantSubAccountChangeTypeAction.action",
    			type: "POST",
    			data: {
    				type: $(that).val(),
    				merchantAccountId: $(that).parent().parent().find(".id").val()
    			},
    			error: function(){
    				alert("连接服务器失败，请稍候再尝试更改哦~");
    				$(that).val("");
    			}
    		})
    	});
    	$(".state").change(function(){
    		var that = this;
    		$.ajax({
    			url: "merchantSubAccountChangeStateAction.action",
    			type: "POST",
    			data: {
    				state: $(that).val(),
    				merchantAccountId: $(that).parent().parent().find(".id").val()
    			},
    			error: function(){
    				alert("连接服务器失败，请稍候再尝试更改哦~");
    				$(that).val("");
    			}
    		})
    	});
    	$(".password").click(function(){
    		var that = this;
    		$.ajax({
    			url: "merchantSubAccountResetPasswordAction.action",
    			type: "POST",
    			data: {
    				merchantAccountId: $(that).parent().parent().find(".id").val()
    			},
    			error: function(){
    				alert("连接服务器失败，请稍候再尝试更改哦~");
    			}
    		})
    	});
    </script>
</body>
</html>