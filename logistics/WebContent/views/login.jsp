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
<script type="text/javascript" src="resources/js/login.js"></script>
<title>Insert title here</title>
</head>
<body>
	
	<div style="margin-left: auto;margin-right:auto; width: 400px;margin-top: 50px">
		<form id="loginForm">
			<div class="easyui-panel" title="用户登录" id="tip" style="width:400px;padding:30px 60px">
				<div style="margin-bottom:20px">
					<div>用户账号:</div>
					<input class="easyui-textbox" name="loginAccount" data-options="prompt:'请输入用户账号'" style="width:100%;height:32px">
				</div>
				<div style="margin-bottom:20px">
					<div>用户密码:</div>
					<input class="easyui-textbox" name="loginPwd" data-options="prompt:'请输入用户密码'" style="width:100%;height:32px">
				</div>

				<div>
					<a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-ok" id="login" style="width:100%;height:32px">登录</a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>