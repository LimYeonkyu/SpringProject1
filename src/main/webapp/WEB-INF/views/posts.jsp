<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@page import="com.example.board.BoardDAO, com.example.board.BoardVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>free board</title>
<style>
#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #006bb3;
  color: white;
}
</style>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='deleteok/' + id;
	}
</script>
</head>
<body>
<h1>게시판</h1>
<div>
    <form method="post" action="../login/logout">
        <button type="submit">logout</button>
    </form>
</div>
<table id="list" width="90%">
<tr>
	<th>Id</th>
	<th>이름</th>
	<th>단체 성격</th>
	<th>소분류</th>
	<th>한줄 설명</th>
	<th>회원 규모</th>
	<th>필수 학기</th>
	<th>작성일</th>
	<th>수정</th>
	<th>삭제</th>
</tr>
<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.getSeq()}</td>
		<td>${u.getName()}</td>
		<td>${u.getCategory()}</td>
		<td>${u.getSubdivision()}</td>
		<td>${u.getContent()}</td>
		<td>${u.getMember()}</td>
		<td>${u.getSemester()}</td>
		<td>${u.getRegdate()}</td>
		<td><a href="editform/${u.seq}">edit</a></td>
		<td><a href="javascript:delete_ok(${u.seq})">delete</a></td>
	</tr>
</c:forEach>
</table>
<br/><button type="button" onclick="location.href='add'">새 단체 추가</button>
</body>
</html>