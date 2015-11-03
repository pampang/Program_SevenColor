<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>	活动添加-七彩云欢迎您</title>
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/bs/css/bootstrap.min.css">
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/assets/css/dropdown-submenu.css">
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/assets/css/normal.css"/>

	<!-- 2015.7.11-19:34-->
	<!-- include normal.css, gathering the special style setting -->
	<!-- adding new icon to navbar, only for the very first list -->

</head>
<body>
	
	<%@ include file="header.jsp" %>

	<h2 class="container">活动添加</h2>
	<div class="container">

		<div>
			<ol class="breadcrumb">
				<li><a href="/MSCMS/merchantHomePageAction.action">商家管理平台</a></li>
				<li class="active">活动添加</li>
			</ol>
		</div>

		<form class="form-horizontal" role="form" action="/MSCMS/activityAddAction.action" method="post" enctype="multipart/form-data">

			<fieldset class="col-md-offset-3 col-md-6">

				<div class="form-wrap col-md-12">

					<div class="form-group">
						<label class="col-md-3 control-label" for="activity-name"><em>*</em>活动名称：</label>
						<div class="col-md-9">
							<input class="form-control" type="text" name="activity.name" id="activity-name" placeholder="请输入活动名称">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label" for="activity-introduction">活动简介：</label>
						<div class="col-md-9">
							<textarea class="form-control" name="activity.description" rows="3" id="activity-introduction"></textarea>
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label" for="merchant-picture">活动图片：</label>
						<div class="col-md-9" id="merchant-picture">
							<img id="img" src="null" alt="">
							<div class="btn btn-default">
								<span class="glyphicon glyphicon-edit">
									修改
								</span>
								<input id="file" type="file" name="file" class="file" onchange="ProcessFile()">
							</div>
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-md-3 control-label" for="activity-date"><em>*</em>结束时间：</label>
						<div class="col-md-9">
							<input type="text" class="Wdate form-control" name="activity.dateFinished" id="activity-date" onClick="WdatePicker({lang:'zh-cn',dateFmt:'yyyy-MM-dd'})">
						</div>
					</div>
				</div>
				
				<input type="hidden" name="activity.id">

				<div class="form-group">
					<div class="col-md-offset-3 col-md-6 text-center">
						<button type="submit" class="btn btn-success btn-lg btn-block">确认无误,我要添加！</button>
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
    <!-- 图片添加 -->
    <script type="text/javascript">
		function ProcessFile(e){ 
		    var file = document.getElementById('file').files[0];
		    if(file){
		        var reader = new FileReader();
		        reader.onload = function(event){ 
		        	var txt = event.target.result;
		        	if(txt.split("/")[0].split(":")[1] == "image"){
		        		img = document.getElementById("img");
		        		img.src = txt;
			    	} else {
			    		alert("格式错误！");
			    	}
			    };
			}

			reader.readAsDataURL(file);
		}
	</script>
	<script src="/MSCMS/JSP/merchant/assets/js/date/WdatePicker.js" type="text/javascript"></script>
</body>
</html>