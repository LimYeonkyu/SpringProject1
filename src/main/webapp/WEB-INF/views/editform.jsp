<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.example.board.BoardDAO, com.example.board.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>

<h1>Edit Form</h1>
<form:form modelAttribute="u" method="POST" action="../editok">
    <form:hidden path="seq" />
    <table id="edit">
        <tr><td>이름:</td><td><form:input path="name"/></td></tr>
        <label for="category">단체 성격:</label>
        <select name="category" id="category">
            <option value="동아리">동아리</option>
            <option value="동호회">동호회</option>
            <option value="학회">학회</option>
            <option value="기타">기타</option>
        </select>
        <br>
        <tr><td>소분류:</td><td><form:input path="subdivision"/></td></tr>
        <tr><td>한줄 설명:</td><td><form:textarea cols="50" rows="5" path="content"/></td></tr>
        <tr><td>회원 규모:</td><td><form:input path="member"/></td></tr>
        <p>필수 학기 수를 입력하세요</p>
        <input type="radio" id="0" name="semester" value="0">
        <label for="0">0</label><br>
        <input type="radio" id="1" name="semester" value="1">
        <label for="1">1</label><br>
        <input type="radio" id="2" name="semester" value="2">
        <label for="2">2</label><br>
        <input type="radio" id="3" name="semester" value="3">
        <label for="3">3</label><br>
        <input type="radio" id="4" name="semester" value="4학기 이상">
        <label for="4">4학기 이상</label><br>
    </table>
    <input type="submit" value="수정하기" />
    <input type="button" value="취소하기" onclick="history.back()" />
</form:form>

</body>
</html>