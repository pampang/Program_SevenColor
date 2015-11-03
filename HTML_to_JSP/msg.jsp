<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>站内信息-七彩云欢迎您</title>
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/bs/css/bootstrap.min.css">
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/assets/css/dropdown-submenu.css">
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/assets/css/normal.css"/>

	<!-- 2015.7.11-19:34-->
	<!-- include normal.css, gathering the special style setting -->
	<!-- adding new icon to navbar, only for the very first list -->

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

</head>
<body>

	<%@ include file="header.jsp" %>

	<h2 class="container">站内信息</h2>
	<div class="container">

		<div>
			<ol class="breadcrumb">
				<li><a href="/MSCMS/merchantHomePageAction.action">商家管理平台</a></li>
				<li class="active">站内信息</li>
			</ol>
		</div>

		<form class="form-horizontal col-md-offset-4 col-md-4">
			<div class="form-group">
				<div class="col-md-9">
					<input class="form-control" type="text" name="query" id="query" placeholder="请输入查询条件">
				</div>
				<div class="col-md-3">
					<button class="btn btn-primary">查询</button>
				</div>
			</div>
		</form>

	    <table class="table table-striped  table-bordered">
	    	<thead>
	    		<tr>
	    			<th class="text-center">发件人<a href="javascript:;"><span class="glyphicon glyphicon-resize-vertical"></span></a></th>
	    			<th class="text-center">标题<a href="javascript:;"><span class="glyphicon glyphicon-resize-vertical"></span></a></th>
	    			<th class="text-center">时间<a href="javascript:;"><span class="glyphicon glyphicon-resize-vertical"></span></a></th>
	    			<th class="text-center">状态<a href="javascript:;"><span class="glyphicon glyphicon-resize-vertical"></span></a></th>
	    		</tr>
	    	</thead>
	    	<tbody>
	    		<c:forEach items="${ pagination.resultList}" var="webMessage">
					<tr>
						<td class="text-center">${webMessage.sender }</td>
						<td class="text-center">
		    				<a class="pop-link" href="javascript:;">${webMessage.title }</a>
		    				<p class="detail-msg hide">${webMessage.content }</p>
		    				<p class="msg-id hide">${webMessage.id }</p>
		    			</td>
						<td class="text-center">${webMessage.dateCreated }</td>
						<td class="text-center state">${webMessage.state }</td>
					</tr>
				</c:forEach>
	    	</tbody>
	    </table>

	    <div class="btn-group form-group btn-group-sm center">
			<a href="/MSCMS/merchantQueryWebMessageAction.action?pagination.pageNum=1" class="btn btn-default"><span class="glyphicon glyphicon-fast-backward"></span></a>
			<c:forEach var="pageNum" begin="1" end="${ pagination.pageCount}" > 
				<a href="/MSCMS/merchantQueryWebMessageAction.action?pagination.pageNum=${pageNum}" class="btn btn-default">${pageNum}</a>
			</c:forEach>
			<a href="/MSCMS/merchantQueryWebMessageAction.action?pagination.pageNum=${ pagination.pageCount}" class="btn btn-default"><span class="glyphicon glyphicon-fast-forward"></span></a>
		</div>
	</div>

	<%@ include file="footer.jsp" %>

	<!-- 弹出窗口  -->
	<div id="pop" class="pop">
		<div class="pop-wrap text-center">
			<h3>详细信息</h3>
			<p id="pop-msg-show" class="center text-left"></p>
			<button id="detail-confirm" class="btn btn-primary">确定</button>
		</div>
	</div>


	
	<script src="/MSCMS/JSP/merchant/assets/js/jquery.min.js"></script>
    <script src="/MSCMS/JSP/merchant/bs/js/bootstrap.min.js"></script>
    <script src="/MSCMS/JSP/merchant/assets/js/jquery.tools.min.js"></script>
    <script src="/MSCMS/JSP/merchant/assets/js/sidebar.js"></script>
    <script>
		document.getElementById("detail-confirm").onclick = function(){
			document.getElementById("pop").style.display = "none";
		};

		$(".pop-link").click(function(){
			var that = this;
			$("#pop-msg-show").text($(this).next().text());
			$("#pop").show();
			$.post("merchantReadWebMessageAction.action", "webMessageId=" + $(this).next().next().text(), function(result){
				if(result){
					$(that).parent().nextAll().filter(".state").text("已读");
				};
			});
		});
	</script>
</body>
</html>