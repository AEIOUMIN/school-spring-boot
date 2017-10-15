<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<title>编辑</title>
</head>
<body>
	<h2>编辑</h2>
	<hr />
	<form action="${pageContext.request.contextPath}/student/save" method="post">
		<input type="hidden" name="id" value="${student.id }">
		<table>
			<tr>
				<td>姓名</td>
				<td>
					<input type="text" id="studentName" name="studentName" value="${student.studentName }">
				</td>
			</tr>
			<tr>
				<td>性别</td>
				<td>
					<c:choose>
						<c:when test="${student.gender == '男' }">
							<input type="radio" name="gender" value="男" checked="checked"/>男
							<input type="radio" name="gender" value="女" />女		
						</c:when>
						<c:otherwise>
							<input type="radio" name="gender" value="男" />男
							<input type="radio" name="gender" value="女" checked="checked"/>女
						</c:otherwise>
					</c:choose>
				</td>
			</tr>
			<tr>
				<td>出生日期</td>
				<td>
					<input type="text" id="birthday" name="birthday" value="${student.birthday }">
				</td>
			</tr>
			<tr>
				<td>联系方式</td>
				<td>
					<input type="text" id="mobile" name="mobile" value="${student.mobile }">
				</td>
			</tr>
			<tr>
				<td>邮箱</td>
				<td>
					<input type="text" id="email" name="email" value="${student.email }">
				</td>
			</tr>
			<tr>
				<td>省份</td>
				<td>
					<select id="province" name="province">
						<option value="北京">北京</option>
						<option value="上海">上海</option>
						<option value="河南">河南</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>城市</td>
				<td>
					<input type="text" id="city" name="city" value="${student.city }">
				</td>
			</tr>
			<tr>
				<td>街道</td>
				<td>
					<input type="text" id="street" name="street" value="${student.street }">
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
	<script type="text/javascript">
		var province = document.getElementById("province");
		
		province.value = "${student.province}";
		
		//jQuery 代码
		//$(function(){
		//	$("#province").val("${student.province}");	
		//});
	</script>
</body>
</html>