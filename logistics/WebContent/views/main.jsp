<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<base href="${pageContext.request.contextPath }/">
<script type="text/javascript" src="resources/jquery-easyui-1.6.10/jquery.min.js"></script>
<script type="text/javascript" src="resources/jquery-easyui-1.6.10/jquery.easyui.min.js"></script>
<link rel="stylesheet" href="resources/jquery-easyui-1.6.10/themes/bootstrap/easyui.css">
<script type="text/javascript" src="resources/js/main.js"></script>
<title>主页</title>
</head>
<body>
	<div class="easyui-layout" fit="true" style="width:100%;">
		<div data-options="region:'north'" style="height:100px" >
			<img alt="logo" src="resources/img/logo.jpg" style="display:inline-block;margin-left: 100px">
			<h1 style="display:inline-block">欢迎你使用本系统<br/><br/></h1>
			<div style="float: right;margin-right: 100px">
				${userinfo.realName }
				<a href="#"  class="easyui-linkbutton" >注销</a>
			</div>
		</div>
		<div region="south" split="false"  style="height:50px;">
			copyright&copy;中软国际
		</div>
		<div data-options="region:'west',split:false" title="系统导航菜单" style="width:200px;">
			<div class="easyui-accordion" style="width:500px;height:300px;">
				<div title="用户管理" data-options="iconCls:'icon-ok'" style="overflow:auto;padding:10px;">
					<ul>
						<li><a href="javascript:void(0)" onclick="addTab('普通用户', 'views/user_info.jsp')">普通用户</a></li>
						<li><a href="javascript:void(0)" onclick="addTab('商家用户', 'http://www.baidu.com')">商家用户</a></li>
						<li><a href="#">用户列表</a></li>
						<li><a href="#">用户列表</a></li>
					</ul>
				</div>
				<div title="商品管理" data-options="iconCls:'icon-ok'" style="overflow:auto;padding:10px;">
					
				</div>
				<div title="订单管理" data-options="iconCls:'icon-ok'" style="overflow:auto;padding:10px;">
				
				</div>
			</div>
		
		</div>
		<div data-options="region:'center',iconCls:'icon-ok'">
			<div id="tabs" class="easyui-tabs" style="width:100%;height:100%;" >
				<div title="Home">
				</div>
				
			</div>
		</div>
	</div>
	
</body>
</html>