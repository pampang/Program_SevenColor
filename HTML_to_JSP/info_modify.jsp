<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>基本信息修改-七彩云欢迎您</title>
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/bs/css/bootstrap.min.css">
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/assets/css/dropdown-submenu.css">
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/assets/css/normal.css"/>

	<!-- 2015.7.11-19:34-->
	<!-- include normal.css, gathering the special style setting -->
	<!-- adding new icon to navbar, only for the very first list -->

</head>
<body>
	
	<%@ include file="header.jsp" %>

	<h2 class="container">基本信息修改</h2>
	<div class="container">

		<div>
			<ol class="breadcrumb">
				<li><a href="/MSCMS/merchantHomePageAction.action">商家管理平台</a></li>
				<li class="active">基本信息修改</li>
			</ol>
		</div>

		<form class="form-horizontal" role="form" action="/MSCMS/merchantInfoModifyAction.action" method="post" enctype="multipart/form-data">

		<fieldset>

			<fieldset class="col-md-offset-3 col-md-6">

				<div class="form-wrap col-md-12">

					<div class="form-group">
						<label class="col-md-3 control-label" for="merchant-name"><em>*</em>商家名称：</label>
						<div class="col-md-9">
							<input class="form-control" type="text" name="merchant.name" value="${merchant.name }" id="merchant-name" placeholder="请输入商家名称" disabled="disabled">
						</div>
					</div>

					<div class="form-group">
	                    <label class="col-md-3 control-label" for="type"><em>*</em>商家主类型：</label>
	                    <div class="col-md-9">
		                    <select class="form-control" name="merchant.type" id="type" disabled="disabled">
		                    </select>
		                    <input type="hidden" id="type_value" value="${merchant.type }"/>
	                    </div>
	                </div>

	                <div class="form-group">
	                    <label class="col-md-3 control-label" for="subType"><em>*</em>商家次类型：</label>
	                    <div class="col-md-9">
		                    <select class="form-control" name="merchant.subType" id="subType"  disabled="disabled">
		                    </select>
		                    <input type="hidden" id="subType_value" value="${merchant.subType }"/>	
	                    </div>
	                </div>

	                <div class="form-group">
	                	<label class="col-md-3 control-label" for="merchant-address"><em>*</em>所在地区：</label>
	                	<div class="col-md-3">
	                		<select class="form-control" name="merchant.province" id="province">
	                		</select>
	                		<input type="hidden" id="province_value" value="${merchant.province }"/>
	                	</div>
	                	<div class="col-md-3">
	                		<select class="form-control" name="merchant.city" id="city">
	                		</select>
	                		<input type="hidden" id="city_value" value="${merchant.city }"/>
	                	</div>
	                	<div class="col-md-3">
	                		<select class="form-control" name="merchant.district" id="district">
	                		</select>
	                		<input type="hidden" id="district_value" value="${merchant.district }"/>
	                	</div>
	                </div>

	                <div class="form-group">
						<label class="col-md-3 control-label" for="merchant-detail-address"><em>*</em>详细地址：</label>
						<div class="col-md-9">
							<input class="form-control" type="text" name="merchant.address" value="${merchant.address }" id="merchant-detail-address" placeholder="请输入商家地址">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label" for="merchant-number"><em>*</em>商家电话：</label>
						<div class="col-md-9">
							<input type="text" class="form-control" name="merchant.phone" value="${merchant.phone }" id="merchant-number" placeholder="请输入商家电话">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label" for="merchant-email"><em>*</em>电子邮箱：</label>
						<div class="col-md-9">
							<input type="text" class="form-control" name="merchant.email" value="${merchant.email }" id="merchant-email" placeholder="请输入商家电子邮箱" disabled="disabled">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label" for="merchant-website"><em>*</em>网址：</label>
						<div class="col-md-9">
							<input type="text" class="form-control" name="merchant.website" value="${merchant.website }" id="merchant-website" placeholder="请输入商家网址">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label" for="merchant-zipcode"><em>*</em>邮编：</label>
						<div class="col-md-9">
							<input class="form-control" type="text" name="merchant.zipCode" value="${merchant.zipCode }" id="merchant-zipcode" placeholder="请输入当地邮编">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label" for="description"><em>*</em>简介：</label>
						<div class="col-md-9">
							<textarea class="form-control" rows="3" name="merchant.introduction" id="introduction">${merchant.introduction }</textarea>
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label" for="merchant-picture">商家图片：</label>
						<div class="col-md-9" id="merchant-picture">
							<img id="img" src="${merchant.picture }" alt="">
							<button class="btn btn-default" type="button">
								<span class="glyphicon glyphicon-edit">
									修改
								</span>
								<input id="file" type="file" name="file" class="file" onchange="ProcessFile()">
							</button>
						</div>
					</div>

				</div>	

				<!-- 这里放按钮和其他小部件。一般居中显示。按钮以长条形态出现。 -->
				<div class="form-group">
					<div class="col-md-offset-3 col-md-6 text-center">
						<button type="submit" class="btn btn-success btn-lg btn-block">确认无误，我要修改！</button>
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
    <script>
		$("#type").val($("#type_value").val());
		$("#subType").val($("#subType_value").val());
		addressInit('province', 'city', 'district', $("#province_value").val(), $("#city_value").val(), $("#district_value").val());
	</script>
</body>
</html>