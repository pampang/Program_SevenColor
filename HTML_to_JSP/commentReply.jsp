<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%  int count = 1;%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title> 点评总览-七彩云欢迎您</title>
    <link rel="stylesheet" href="/MSCMS/JSP/merchant/bs/css/bootstrap.min.css">
    <link rel="stylesheet" href="/MSCMS/JSP/merchant/assets/css/dropdown-submenu.css">
    <link rel="stylesheet" href="/MSCMS/JSP/merchant/assets/css/normal.css"/>

    <!-- 2015.7.11-19:34-->
    <!-- include normal.css, gathering the special style setting -->
    <!-- adding new icon to navbar, only for the very first list -->


<style>
	.no{
		display: block;
		width: 24px;
		line-height: 24px;
		background: #ff9236;
		color: #000;
		text-align: center;
		border-radius: 100%;
		position: absolute;
		top: -12px;
		left: 0;
	}
</style>

</head>
<body>
    
    <%@ include file="header.jsp" %>

	<h2 class="container">点评总览</h2>
	<div class="container">

		<div>
			<ol class="breadcrumb">
				<li><a href="/MSCMS/merchantHomePageAction.action">商家管理平台</a></li>
				<li class="active">点评总览</li>
			</ol>
		</div>
		
		<div class="col-md-6">
			<div class="col-md-3">
				<a href="/MSCMS/merchantQueryCommentAction.action" class="btn btn-success btn-block active">全部</a>
			</div>
			<div class="col-md-3">
				<a href="/MSCMS/merchantQueryCommentNotReplyAction.action" class="btn btn-default btn-block">未回评</a>
			</div>
			<div class="col-md-3">
				<a href="/MSCMS/merchantQueryCommentAlreadyReplyAction.action" class="btn btn-default btn-block">已回评</a>
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
		
		<div class="form-group col-md-12">
			<c:forEach items="${ pagination.resultList}" var="comment">
				<c:if test="${comment.state == '已回评' }">
					<div class="col-md-offset-1 col-md-10">
						<span class="no"><%=count%></span>
				        <table class="table table-bordered">
				        	<tbody>
				        		<tr>
				        			<td class="text-left">
				        				<label>点评：</label><span>${comment.dateComment }</span>
				        				<p>${comment.content }</p>
				        			</td>
				        		</tr>
				        		<tr>
				        			<td class="text-left">
				        				<label>回评：</label><span>${comment.dateReplied }</span>
				        				<p>${comment.reply }</p>
				        			</td>
				        		</tr>
				        	</tbody>
				        </table>
				    </div>
				</c:if>

				<c:if test="${comment.state == '未回评' }">
					<div class="col-md-offset-1 col-md-10">
						<span class="no"><%=count%></span>
				        <table class="table table-bordered">
				        	<tbody>
				        		<tr>
				        			<td class="text-left">
				        				<label>点评：</label><span>${comment.dateComment }</span>
				        				<p>${comment.content }</p>
				        			</td>
				        		</tr>
				        		<tr>
				        			<td class="text-left">
				                        <label>回评：</label>
				                        <form>
				                            <div class="col-md-10">
				                            	<input type="hidden" name="commentId" class="commentId" value="${comment.id }">
				                                <input type="text" name="reply" class="form-control reply">
				                            </div>
				                            <div>
				                                <button class="btn btn-primary reply-button" type="button">点我回评！</button>
				                            </div>
				                        </form>
				        			</td>
				        		</tr>
				        	</tbody>
				        </table>
			        </div>
			    </c:if>
			<%count++;%>	
			</c:forEach>
		</div>
		
	    <div class="btn-group form-group btn-group-sm center">
			<a href="/MSCMS/merchantQueryCommentAction.action?pagination.pageNum=1" class="btn btn-default"><span class="glyphicon glyphicon-fast-backward"></span></a>
			<c:forEach var="pageNum" begin="1" end="${ pagination.pageCount}" > 
				<a href="/MSCMS/merchantQueryCommentAction.action?pagination.pageNum=${pageNum}" class="btn btn-default">${pageNum}</a>
			</c:forEach>
			<a href="/MSCMS/merchantQueryCommentAction.action?pagination.pageNum=${ pagination.pageCount}" class="btn btn-default"><span class="glyphicon glyphicon-fast-forward"></span></a>
		</div>

	</div>

    <%@ include file="footer.jsp" %>

	<script src="/MSCMS/JSP/merchant/assets/js/jquery.min.js"></script>
    <script src="/MSCMS/JSP/merchant/bs/js/bootstrap.min.js"></script>
    <script src="/MSCMS/JSP/merchant/assets/js/jquery.tools.min.js"></script>
    <script src="/MSCMS/JSP/merchant/assets/js/sidebar.js"></script>
    <script>
		$(".reply-button").click(function(){
			var $dataParent = $(this).parent().prev();
			var reply_msg = $dataParent.find(".reply").val();
			if(reply_msg){
				$.post("merchantReplyCommentAction.action", {
					commentId: $dataParent.find(".commentId").val(),
					reply: reply_msg
				}, function(result){
					console.log($dataParent.parentsUntil("td"));
					$dataParent.parent().hide();
					$dataParent.parent().parent()
						.append($("<span>" + result + "</span>"))
						.append($("<p>" + $dataParent.find(".reply").val() + "</p>"));
				});
			}else{
				alert("回评信息不能为空！");
			};
		});
	</script>
</body>
</html>