<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>	产品添加-七彩云欢迎您</title>
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/bs/css/bootstrap.min.css">
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/assets/css/dropdown-submenu.css">
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/assets/css/normal.css"/>

	<!-- 2015.7.11-19:34-->
	<!-- include normal.css, gathering the special style setting -->
	<!-- adding new icon to navbar, only for the very first list -->

</head>
<body>
	
	<%@ include file="header.jsp" %>

	<h2 class="container">产品添加</h2>
	<div class="container">

		<div>
			<ol class="breadcrumb">
				<li><a href="/MSCMS/merchantHomePageAction.action">商家管理平台</a></li>
				<li class="active">产品添加</li>
			</ol>
		</div>

		<form class="form-horizontal" role="form" action="/MSCMS/productAddAction.action" method="post" enctype="multipart/form-data">

			<fieldset class="col-md-offset-3 col-md-6">

				<div class="form-wrap col-md-12">

					<div class="form-group">
						<label class="col-md-3 control-label" for="product-name"><em>*</em>产品名称：</label>
						<div class="col-md-9">
							<input class="form-control" type="text" name="product.name" id="product-name" placeholder="请输入产品名称">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label" for="product-price"><em>*</em>产品价格：</label>
						<div class="col-md-9">
							<input class="form-control" type="text" name="product.price" id="product-price" placeholder="请输入产品价格">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label" for="product-introduction">产品简介：</label>
						<div class="col-md-9">
							<textarea class="form-control" name="product.introduction" rows="3" id="product-introduction"></textarea>
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label" for="merchant-picture">产品图片：</label>
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
				</div>

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
</body>
</html>