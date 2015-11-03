<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
	<div class="navbar navbar-default" role="navigation">
	    <div class="container-fluid">

	        <div class="navbar-header">
	            <a href="/MSCMS/merchantHomePageAction.action"><img src="/MSCMS/JSP/merchant/logo.png" alt="" height="50px"></a>
	        </div>

	        <div id="index-navbar" aria-expanded="false">
	            <ul class="nav navbar-nav navbar-right">

	              <li class="dropdown">
	              	<a class="dropdown-toggle" data-toggle="dropdown" role="button" href="javascript:;">
	              		<i class="glyphicon glyphicon-user"></i> 会员管理<span class="caret"></span>
	              	</a>
	              	<ul class="dropdown-menu">
	              		<li class="dropdown-submenu">
	              			<a tabindex="-1" href="javascript:;">充值管理</a>
	              			<ul class="dropdown-menu">
	              				<li><a href="/MSCMS/JSP/merchant/member_charge.jsp">会员充值</a></li>
	              				<li><a href="/MSCMS/JSP/merchant/statics_member_charge_one.jsp">会员充值统计</a></li>
	              			</ul>
	              		</li>
	              		<li class="dropdown-submenu">
	              			<a tabindex="-1" href="javascript:;">消费管理</a>
	              			<ul class="dropdown-menu">
	              				<li><a href="/MSCMS/JSP/merchant/member_consume.jsp">会员消费</a></li>
	              				<li><a href="/MSCMS/JSP/merchant/statics_member_consume_one.jsp">会员消费统计</a></li>
	              			</ul>
	              		</li>
	              		<li><a href="/MSCMS/merchantQueryCommentAction.action">点评总览</a></li>
	              		<li><a href="/MSCMS/allListAction.action">会员卡信息统计</a></li>
	              		<li><a href="/MSCMS/JSP/merchant/member_register.jsp">会员注册</a></li>
	              	</ul>
	              </li>

	              <li class="dropdown">
	              	<a class="dropdown-toggle" data-toggle="dropdown" role="button" href="javascript:;">
	              		<span class="glyphicon glyphicon-briefcase"></span> 商家中心<span class="caret"></span>
	              	</a>
	              	<ul class="dropdown-menu">
						<li class="dropdown-submenu">
							<a href="javascript:;">信息维护</a>
							<ul class="dropdown-menu">
								<li><a href="/MSCMS/initMerchantInfoModifyAction.action">基本资料修改</a></li>
								<li><a href="/MSCMS/productListAction.action">产品列表</a></li>
								<li><a href="/MSCMS/activityListAction.action">活动列表</a></li>
							</ul>
						</li>
						<li><a href="/MSCMS/merchantQueryCommentAction.action">站内消息</a></li>
	              	</ul>
	              </li>

	              <li class="dropdown">
	              	<a class="dropdown-toggle" data-toggle="dropdown" role="button" href="javascript:;">
	              		<span class="glyphicon glyphicon-wrench"></span> 账户管理<span class="caret"></span>
	              	</a>
	              	<ul class="dropdown-menu">
	              		<li><a href="/MSCMS/merchantSubAccountManageAction.action">子账号管理</a></li>
	              		<li><a href="/MSCMS/JSP/merchant/pwd_change.jsp">修改密码</a></li>
	              	</ul>
	              </li>
	              <li>
	              	<a href="/MSCMS/merchantLogoutAction.action"> <!--返回主页。-->
	              		<span class="glyphicon glyphicon-remove"></span> 注销
	              	</a>
	              </li>
	            </ul>
	        </div>
	    </div>
	</div>