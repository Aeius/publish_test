<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<style type="text/css">
form label+span{
	color:red;
	font-style: italic;
}
</style>
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
	<h2>${title } page</h2>
	<form action="${title eq '입력'?'insert.do':'update.do' }" method="post">
		<div class="form-group">
			<label for="deptno">deptno</label><span>${FieldErrors.deptno }</span>
			<input class="form-control" name="deptno" id="deptno" value="${bean.deptno }${deptno==0?'':deptno }"/>
		</div>
		<div class="form-group">
			<label for="dname">dname</label><span>${FieldErrors.dname }</span>
			<input class="form-control" name="dname" id="dname" value="${bean.dname }${dname}"/>
		</div>
		<div class="form-group">
			<label for="loc">loc</label><span>${FieldErrors.loc }</span>
			<input class="form-control" name="loc" id="loc" value="${bean.loc }${loc}"/>
		</div>
		<div>
		<button class="btn btn-primary">submit</button>
		<button type="reset" class="btn btn-default">cancel</button>
		</div>
	</form>
</body>
</html>