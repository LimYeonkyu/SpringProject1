<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Add New Post</h1>
<form action="addok" method="post" accept-charset="UTF-8">
    <table id="edit">
        <tr><td>이름:</td><td><input type="text" name="name" /></td></tr>
        <label for="category">단체 성격:</label>
        <select name="category" id="category">
            <option value="동아리">동아리</option>
            <option value="동호회">동호회</option>
            <option value="학회">학회</option>
            <option value="기타">기타</option>
        </select>
        <br>
        <tr><td>소분류:</td><td><input type="text" name="subdivision"/></td></tr>
        <tr><td>한줄 설명:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
        <tr><td>회원 규모:</td><td><input type="text" name="member"/></td></tr>
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
    <button type="button" onclick="location.href='list'">목록보기</button>
    <button type="submit">등록하기</button>
</form>

</body>
</html>