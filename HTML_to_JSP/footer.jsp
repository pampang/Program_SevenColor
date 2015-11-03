<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

	<div class="container text-center bottom-radius">
		©This page is made by <a href="javascript:void();">11 Group-SCAU</a>. <br />All rights reserved. 
	</div>

	<p class="hide" id="error">${error }</p>

	<script>
		var error = document.getElementById("error");
		if(error.innerHTML != ""){
			alert(error.innerHTML);
		}
	</script>

