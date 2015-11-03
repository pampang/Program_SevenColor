<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>	会员消费-七彩云欢迎您</title>
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/bs/css/bootstrap.min.css">
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/assets/css/dropdown-submenu.css">
	<link rel="stylesheet" href="/MSCMS/JSP/merchant/assets/css/normal.css"/>

	<!-- 2015.7.11-19:34-->
	<!-- include normal.css, gathering the special style setting -->
	<!-- adding new icon to navbar, only for the very first list -->

</head>
<body>
	
	<%@ include file="header.jsp" %>

	<h2 class="container">会员消费</h2>
	<div class="container">

		<div>
			<ol class="breadcrumb">
				<li><a href="/MSCMS/merchantHomePageAction.action">商家管理平台</a></li>
				<li class="active">会员消费</li>
			</ol>
		</div>

		<form class="form-horizontal" role="form" action="/MSCMS/submitConsumptionAction.action" method="post">
			<fieldset class="col-md-offset-3 col-md-6">
				<div class="form-wrap col-md-12">
					<div class="form-group">
						<label class="col-md-3 control-label" for="member-card">会员卡号：</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="cardNumber" id="cardNum" placeholder="请输入会员卡号">
						</div>
						<div class="col-md-2 text-center">
							<button type="button" id="readCard" class="btn btn-primary btn-block">读卡</button>
						</div>
					</div>

					<div class="control-group text-warning text-center"><!--填写读卡后的资料-->
		                <table class="table table-striped table-bordered">
		                	<thead>
		                		<tr>
		                			<th class="text-center">会员卡编号</th>
		                			<th class="text-center">会员姓名</th>
		                			<th class="text-center">卡内余额</th>
		                		</tr>
		                	</thead>
		                	<tbody>
		                		<tr id="print">
		                			<td class="text-center"></td>
		                			<td class="text-center"></td>
		                			<td class="text-center"></td>
		                		</tr>
		                	</tbody>
		                </table>
		            </div>
					
					<div class="form-group">
						<label class="col-md-3 control-label" for="money">本次消费金额：</label>
						<div class="col-md-9">
							<input type="text" class="form-control" name="consumption.amount" id="money" placeholder="请输入消费金额">
						</div>
					</div>
				</div>

				<!-- 这里放按钮和其他小部件。一般居中显示。按钮以长条形态出现。 -->
				<div class="form-group">
					<div class="col-md-offset-3 col-md-6 text-center">
						<button type="submit" class="btn btn-success btn-lg btn-block">确认无误，消费！</button>
					</div>
				</div>
			</fieldset>			
		</form>


	</div>
	
	<%@ include file="footer.jsp" %>

	<script>
	var readCard = document.getElementById("readCard");
	readCard.onclick = function(){
		var xhr = createXHR();
		xhr.onreadystatechange = function(){
			if(xhr.readyState == 4){
				if((xhr.status >= 200 && xhr.status < 300) || xhr.status == 304){
					var result = xhr.responseText.split(",");
					if(result[0] == "wrong"){
						alert(result[1]);
						return;
					}
					result[2] = new Number(result[2]);
					var printItem = document.getElementById("print").childNodes;
					for(var i = 0, j = 0; i < printItem.length; i++){
						if(printItem[i].nodeType == "1"){
							printItem[i].innerHTML = result[j];
							j++;
						}
					}
				}else{
					alert("Request was unsuccessful:" + xhr.status);
				}
			}
		}
		if(!(/[^0][0-9]{4,8}/.test(document.getElementById("cardNum").value))){
			alert("会员卡号格式错误！");
			return;
		}
		xhr.open("post", "consumptionReadCardAction.action", false);
		xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		xhr.send("cardNumber=" + document.getElementById("cardNum").value);
	}

	function createXHR(){
		if(typeof XMLHttpRequest != "undefined"){
			return new XMLHttpRequest();
		}else if(typeof ActiveXObject != "undefined"){
			if(typeof arguments.callee.activeXString != "string"){
				var versions = ["MSXML2.XMLHttp.6.0", "MSXML2.XMLHttp.3.0", "MSXML2.XMLHttp"], i, len;

				for(i = 0, len = versions.length; i < len; i++){
					try{
						new ActiveXObject(versions[i]);
						arguments.callee.activeXString = versions[i];
						break;
					} catch(ex){
						//skip
					}
				}
			}

			return new ActiveXObject(arguments.callee.activeXString);
		}else{
			throw new Error("NO XHR object available.");
		}
	}

	function addURLParam(url, name, value){
		url += (url.indexOf("?") == -1 ? "?" : "&");
		url += encodeURIComponent(name) + "=" + encodeURIComponent(value);
		return url;
	}
	</script>

	<script src="/MSCMS/JSP/merchant/assets/js/jquery.min.js"></script>
    <script src="/MSCMS/JSP/merchant/bs/js/bootstrap.min.js"></script>
    <script src="/MSCMS/JSP/merchant/assets/js/jquery.tools.min.js"></script>
    <script src="/MSCMS/JSP/merchant/assets/js/sidebar.js"></script>
</body>
</html>