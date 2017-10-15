<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<title>新增</title>
</head>
<body>
	<h2>新增</h2>
	<hr />
	<form action="${pageContext.request.contextPath}/student/save" method="post">
		<table>
			<tr>
				<td>姓名</td>
				<td>
					<input type="text" id="studentName" name="studentName">
				</td>
			</tr>
			<tr>
				<td>性别</td>
				<td>
					<input type="radio" name="gender" value="男" checked="checked"/>男
					<input type="radio" name="gender" value="女" />女
					
				</td>
			</tr>
			<tr>
				<td>出生日期</td>
				<td>
					<input type="text" id="birthday" name="birthday">
				</td>
			</tr>
			<tr>
				<td>联系方式</td>
				<td>
					<input type="text" id="mobile" name="mobile">
				</td>
			</tr>
			<tr>
				<td>邮箱</td>
				<td>
					<input type="text" id="email" name="email">
				</td>
			</tr>
			<tr>
				<td>省份</td>
				<td>
					<select name="province">
						<option value="北京">北京</option>
						<option value="上海">上海</option>
						<option value="河南" selected="selected">河南</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>城市</td>
				<td>
					<input type="text" id="city" name="city">
				</td>
			</tr>
			<tr>
				<td>街道</td>
				<td>
					<input type="text" id="street" name="street">
				</td>
			</tr>
			<tr>
				<td></td>
				<td>
					<input type="submit" value="保存">
					<a href="${pageContext.request.contextPath}/student/index/1">取消</a>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>