<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>操作成功-七彩云欢迎您</title>
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/bs/css/bootstrap.min.css">
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/assets/css/dropdown-submenu.css">
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/assets/css/normal.css"/>
	<style>
		#countdown{
			display: inline-block;
			border-radius: 100%;
			background: #008000;
			color: #fff;
			font-size: 30px;
			line-height: 40px;
			width: 40px;
		}
		h2{
			color: orange;
			font-weight: 800;
		}
	</style>

	<!-- 2015.7.11-19:34-->
	<!-- include normal.css, gathering the special style setting -->
	<!-- adding new icon to navbar, only for the very first list -->

</head>
<body>
	
	<%@ include file="header.jsp" %>

	<div class="container text-center">
		<h2>${error }</h2>
		<h3><span id="countdown">6</span>秒后将返回登录页！</h3>
		<h5><a href="/MSCMS/merchantHomePageAction.action">如无反应，请点击这里返回登录页</a></h5>
	</div>



	<%@ include file="footer.jsp" %>

	<script src="/MSCMS/JSP/merchant/assets/js/jquery.min.js"></script>
    <script src="/MSCMS/JSP/merchant/bs/js/bootstrap.min.js"></script>
    <script src="/MSCMS/JSP/merchant/assets/js/jquery.tools.min.js"></script>
    <script src="/MSCMS/JSP/merchant/assets/js/sidebar.js"></script>
    <script>
    	var countdown = document.getElementById("countdown");
    	var count = 6;	
    	var counting = function(){
   			countdown.innerHTML = count;
   			count--;
   			if(count == 0){
   				window.location.href = "/MSCMS/merchantHomePageAction.action";
   			}
   		};
   		setInterval("counting()", 1000);
    </script>
</body>
</html>