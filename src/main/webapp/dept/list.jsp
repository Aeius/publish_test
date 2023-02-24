<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
</head>
<body>
	<div>
		<a href="../index.do">home</a>
		<a href="../intro.do">intro</a>
		<a href="./list.do">list</a>
		<a href="./add.do">add</a>
	</div>
	<h2>list page</h2>
	<table class="table">
		<thead>
			<tr>
				<th>deptno</th>
				<th>dname</th>
				<th>loc</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="bean">
			<c:url value="detail.do" var="detail">
				<c:param name="deptno" value="${bean.deptno }"/>
			</c:url>
				<tr>
					<td><a href="${detail }">${bean.deptno }</a></td>
					<td><a href="${detail }">${bean.dname }</a></td>
					<td><a href="${detail }">${bean.loc }</a></td>
				</tr>		
			</c:forEach>
		</tbody>
	</table>
</body>
</html>