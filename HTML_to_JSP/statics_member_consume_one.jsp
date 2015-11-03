<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>	会员消费统计-七彩云欢迎您</title>
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/bs/css/bootstrap.min.css">
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/assets/css/dropdown-submenu.css">
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/assets/css/normal.css"/>

	<!-- 2015.7.11-19:34-->
	<!-- include normal.css, gathering the special style setting -->
	<!-- adding new icon to navbar, only for the very first list -->

</head>
<body>
	
	<%@ include file="header.jsp" %>

	<h2 class="container">会员消费统计</h2>
	<div class="container">

		<div>
			<ol class="breadcrumb">
				<li><a href="/MSCMS/merchantHomePageAction.action">商家管理平台</a></li>
				<li class="active">会员消费统计</li>
			</ol>
		</div>

		<form id="request-form" class="form-horizontal" role="form" method="post" action="/MSCMS/consumptionStatisticsAction.action">

			<fieldset class="col-md-12">

				<div class="form-group">
					<div class="col-md-offset-2 col-md-6">
						<div class="form-group">
							<label class="col-md-4 control-label">会员卡号：</label>
							<div class="col-md-8">
								<input id="cardNum" value="${cardNumber }" name="cardNumber" class="form-control" type="text" placeholder="请输入所统计会员，不输入则统计所有会员">
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-4 control-label" for="start-time">开始时间：</label>
							<div class="col-md-8">
								<input type="text" class="Wdate form-control" name="beginDate" onClick="WdatePicker({lang:'zh-cn',dateFmt:'yyyy-MM-dd'})">
								<input type="hidden" id="beginDate" value="<fmt:formatDate value="${beginDate}" type="date"/>">	
							</div>
						</div>
						

						<div class="form-group">
							<label class="col-md-4 control-label" for="end-time">结束时间：</label>
							<div class="col-md-8">
								<input type="text" class="Wdate form-control" name="endDate" onClick="WdatePicker({lang:'zh-cn',dateFmt:'yyyy-MM-dd'})">
								<input type="hidden" id="endDate" value="<fmt:formatDate value="${endDate}" type="date"/>">
							</div>
						</div>
					</div>
					<div class="form-group col-md-2">
						<div class="col-md-8">
						<button type="submit" class="btn btn-success btn-block btn-lg">统计！</button>
						</div>
					</div>
				</div>
			</fieldset>
		</form>

		<table class="table table-striped table-bordered">
			<thead>
				<tr class="text-center">
					<th class="text-center">会员卡编号<a href="javascript:;"><span class="glyphicon glyphicon-resize-vertical"></span></a></th>
					<th class="text-center">会员姓名<a href="javascript:;"><span class="glyphicon glyphicon-resize-vertical"></span></a></th>
					<th class="text-center">消费时间<a href="javascript:;"><span class="glyphicon glyphicon-resize-vertical"></span></a></th>
					<th class="text-center">消费金额<a href="javascript:;"><span class="glyphicon glyphicon-resize-vertical"></span></a></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ pagination.resultList}" var="consumption">
					<tr>
						<td class="text-center">${consumption.card.cardNumber }</td>
						<td class="text-center">${consumption.card.member.name }</td>
						<td class="text-center">${consumption.dateConsumed } </td>
						<td class="text-center money">${consumption.amount }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
		<div class="btn-group form-group btn-group-sm center">
			<a href="/MSCMS/consumptionHistoryAction.action?cardNumber=${cardNumber}&pagination.pageNum=1&beginDate=<fmt:formatDate value="${beginDate}" type="date"/>&endDate=<fmt:formatDate value="${endDate}" type="date" />" class="btn btn-default"><span class="glyphicon glyphicon-fast-backward"></span></a>
			<c:forEach var="pageNum" begin="1" end="${ pagination.pageCount}" > 
				<a href="/MSCMS/consumptionHistoryAction.action?cardNumber=${cardNumber}&pagination.pageNum=${pageNum}&beginDate=<fmt:formatDate value="${beginDate}" type="date"/>&endDate=<fmt:formatDate value="${endDate}" type="date" />" class="btn btn-default">${pageNum}</a>
			</c:forEach>
			<a href="/MSCMS/consumptionHistoryAction.action?cardNumber=${cardNumber}&pagination.pageNum=${ pagination.pageCount}&beginDate=<fmt:formatDate value="${beginDate}" type="date"/>&endDate=<fmt:formatDate value="${endDate}" type="date" />" class="btn btn-default"><span class="glyphicon glyphicon-fast-forward"></span></a>
		</div>

	</div>

	<%@ include file="footer.jsp" %>
	
	<p class="hide" id="error">${error }</p>

	<script>
		var error = document.getElementById("error");
		if(error.innerHTML != ""){
			alert(error.innerHTML);
		}
	</script>
	<!-- js -->
	<script>
	/* 判断会员卡号是否被输入，并转变form的action */
		var form = document.getElementById("request-form");
		form.action = document.getElementById("cardNum").value == "" ? "consumptionStatisticsAction.action" : "consumptionHistoryAction.action";
		document.getElementById("cardNum").onchange = function(){
			form.action = this.value == "" ? "consumptionStatisticsAction.action" : "consumptionHistoryAction.action";
		}
	</script>
	<script type="text/javascript">
	/* 当日期中的月和日不满10时，为其加个0，修整格式。 */
		document.getElementsByName("beginDate")[0].value = dateFormat(document.getElementById("beginDate").value);
		document.getElementsByName("endDate")[0].value = dateFormat(document.getElementById("endDate").value);
		function dateFormat(date){
			date = date.split("-");
			if(date[1] < 10){
				date[1] = "0" + date[1];
			}
			if(date[2] < 10){
				date[2] = "0" + date[2];
			}
			return date.join("-");
		}
	</script>
	<script src="/MSCMS/JSP/merchant/assets/js/jquery.min.js"></script>
    <script src="/MSCMS/JSP/merchant/bs/js/bootstrap.min.js"></script>
    <script src="/MSCMS/JSP/merchant/assets/js/jquery.tools.min.js"></script>
    <script src="/MSCMS/JSP/merchant/assets/js/sidebar.js"></script>
    <script src="/MSCMS/JSP/merchant/assets/js/date/WdatePicker.js" type="text/javascript"></script>
    <script>
    	$(".money").each(function(){
    		$(this).text(new Number($(this).text()));
    	})
    </script>
</body>
</html>