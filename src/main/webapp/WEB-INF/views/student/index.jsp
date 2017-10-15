<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<title>学生列表</title>
</head>
<body>
	<h2>学生列表</h2>
	<a href="${pageContext.request.contextPath}/student/create">新增</a> | 
	<a href="#" onclick="deleteMany()">批量删除</a>
	<hr />
	<form action="${pageContext.request.contextPath}/student/delete" method="post">
		<table>
			<thead>
				<tr>
					<th>
						<input type="checkbox" onchange="checkAll(this.checked)"/>
					</th>
					<th>id</th>
					<th>姓名</th>
					<th>性别</th>
					<th>出生日期</th>
					<th>联系方式</th>
					<th>邮箱</th>
					<th>省</th>
					<th>市</th>
					<th>地址</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="s" items="${students.content}">
					<tr>
						<td>
							<input type="checkbox" name="ids" value="${s.id}"/>
						</td>
						<td>${s.id }</td>
						<td>${s.studentName }</td>
						<td>${s.gender }</td>
						<td>${s.birthday }</td>
						<td>${s.mobile }</td>
						<td>${s.email }</td>
						<td>${s.province }</td>
						<td>${s.city }</td>
						<td>${s.street }</td>
						<td>		
							<a href="${pageContext.request.contextPath}/student/edit/${s.id}">编辑</a>
							<a href="#" onclick="deleteOne(${s.id})">删除</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<c:if test="${!students.first }">
			<a href="${pageContext.request.contextPath}/student/index/1">首页</a>
			<a href="${pageContext.request.contextPath}/student/index/${students.number}">前一页</a>
		</c:if>
		第( ${students.number+1 }/ ${students.totalPages } )页
		共 ${students.totalElements }条记录
		<c:if test="${!students.last }">
			<a href="${pageContext.request.contextPath}/student/index/${students.number+2}">后一页</a>
			<a href="${pageContext.request.contextPath}/student/index/${students.totalPages}">尾页</a>
		</c:if>
	</form>
	<script type="text/javascript">
		function checkAll(checked) {
			var ids = document.getElementsByTagName("input");
			
			for(var i = 0; i < ids.length; i++){
				ids[i].checked = checked;
			}
		}
	
		function deleteOne(id){
			if(confirm("确认删除吗？")){
				window.location.href = '${pageContext.request.contextPath}/student/delete/'+id;
			}
		}
		
		function deleteMany(){
			if(confirm("确认删除吗？")){
				// 在js中提交表单。
				// document.forms[0].action = "${pageContext.request.contextPath}/student?action=batDelete";
				document.forms[0].submit();
			}
		}
	</script>
</body>
</html>