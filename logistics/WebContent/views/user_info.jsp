<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<base href="${pageContext.request.contextPath }/">
<script type="text/javascript" src="resources/jquery-easyui-1.6.10/jquery.min.js"></script>
<script type="text/javascript" src="resources/jquery-easyui-1.6.10/jquery.easyui.min.js"></script>
<link rel="stylesheet" href="resources/jquery-easyui-1.6.10/themes/bootstrap/easyui.css">
<link rel="stylesheet" href="resources/jquery-easyui-1.6.10/themes/icon.css">

<script type="text/javascript" src="resources/js/userinfo.js"></script>
</head>
<body>
	<div class="search">
		<form id="searchform">
			<label>用户名字：</label><input class="easyui-textbox" name="realName">
			<label>用户性别：</label><select class="easyui-combobox" name="userSex" style="width:60px">
									<option value="">请选择</option>
									<option>男</option>
									<option>女</option>
								</select>
			<label>用户类型：</label><input class="easyui-textbox"  name="startType">
						-<input  name="endType" class="easyui-textbox">
		</form>
		<a href="javascript:void(0)" id="searchBtn" class="easyui-linkbutton" data-options="iconCls:'icon-search'">搜索</a>
		<a href="javascript:void(0)" id="addBtn" class="easyui-linkbutton"  data-options="iconCls:'icon-add'">添加用户</a>
		<a href="javascript:void(0)" id="deleteBtn" class="easyui-linkbutton" data-options="iconCls:'icon-delete'">删除用户</a>
		<a href="javascript:void(0)" id="updateBtn" class="easyui-linkbutton" data-options="iconCls:'icon-update'">修改用户</a>
	</div>
	<div>
		<table id="userTable" class="easyui-datagrid" url="userServlet?cmd=queryUser" style="width:100%;height:auto">
			<thead>
				<tr>
					<th data-options="field:'ck',checkbox:true"></th>
					<th data-options="field:'userId',width:100">用户编号</th>
					<th data-options="field:'realName',width:100">用户名字</th>
					<th data-options="field:'userSex',width:80,align:'right'">用户性别</th>
					<th data-options="field:'IDCard',width:80,align:'right'">用户身份证</th>
					<th data-options="field:'userType',width:250">用户类型</th>
				</tr>
			</thead>
		</table>
	</div>
	<!-- 添加的弹出框 -->
	<div id="w" class="easyui-window" title="Modal Window" 
		data-options="modal:true,closed:true,iconCls:'icon-save'" 
		style="width:50%;height:300px;padding:10px;">
		<form id="addform" style="text-align: center;">
			<table style="display: inline-block;">
				<tr>
					<td><label>账号:</label> </td>
					<td><input class="easyui-textbox" name="loginAccount"> </td>
					<td><label>密码:</label></td>
					<td><input class="easyui-textbox" name="loginPwd"></td>
				</tr>
				<tr>
					<td><label>用户姓名:</label> </td>
					<td><input class="easyui-textbox" name="realName"> </td>
					<td><label>用户性别:</label></td>
					<td>
						<select class="easyui-combobox" name="userSex" style="width:60px">
									<option>男</option>
									<option>女</option>
								</select>
					</td>
				</tr>
				<tr>
					<td><label>用户身份证:</label> </td>
					<td><input class="easyui-textbox"  name="IDCard"> </td>
					<td><label>用户类型:</label></td>
					<td><input class="easyui-textbox" name="userType"></td>
				</tr>
			</table>
			<br/>
			<a href="javascript:void(0)" id="saveBtn" class="easyui-linkbutton" data-options="iconCls:'icon-save'">保存</a>
			<a href="javascript:void(0)" id="cancelBtn" class="easyui-linkbutton" data-options="iconCls:'icon-cancel'">取消</a>
		</form>
	</div>
	<!-- 修改的弹出框 -->
	<div id="updateWindow" class="easyui-window" title="Modal Window" 
		data-options="modal:true,closed:true,iconCls:'icon-save'" 
		style="width:50%;height:300px;padding:10px;">
		<form id="updateform" style="text-align: center;">
			<input name="userId" id="userId" type="hidden">
			<table style="display: inline-block;">
				<tr>
					<td><label>用户姓名:</label> </td>
					<td><input class="easyui-textbox" id="realName" name="realName"> </td>
					<td><label>用户性别:</label></td>
					<td><select class="easyui-combobox" id="userSex" name="userSex" style="width:60px">
									<option>男</option>
									<option>女</option>
								</select></td>
				</tr>
				<tr>
					<td><label>用户身份证:</label> </td>
					<td><input class="easyui-textbox"  name="IDCard"> </td>
					<td><label>用户类型:</label></td>
					<td><input class="easyui-textbox" name="userType"></td>
				</tr>
			</table>
			<br/>
			<a href="javascript:void(0)" id="saveUpdateBtn" class="easyui-linkbutton" data-options="iconCls:'icon-save'">保存</a>
			<a href="javascript:void(0)" id="canceUpdatelBtn" class="easyui-linkbutton" data-options="iconCls:'icon-cancel'">取消</a>
		</form>
	</div>
</body>
</html>