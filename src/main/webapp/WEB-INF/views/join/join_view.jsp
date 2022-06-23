<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
	<tr>
		<th>이름</th>
		<th>아이디</th>
		<th>주소</th>
	</tr>
	<c:forEach var="vo" items="${list}">
		<tr>
			<td>${vo.name}</td>
			<td>${vo.id}</td>
			<td>${vo.addr}</td>
		</tr>
	</c:forEach>
</table>

	<form action="" method="post">
		<table border="1">
			<tr>
				<th>아이디</th>
				<td>
				<input name="id">
				<input type="button" value="중복 확인" onclick="">
				</td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="pwd"></td>
			</tr>
			<tr>
				<th>비밀번호 확인</th>
				<td>
				<input type="password" name="pwd2">
				<input type="button" value="일치 확인" onclick="">
				</td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input name="name"></td>
			</tr>
			<tr>
				<th>성별</th>
				<td>
					<select name="gender">
						<option value="" selected>===선택===</option>
						<option value="male">남자</option>
						<option value="female">여자</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>생년월일</th>
				<td><input name="birth" placeholder="예) 990101"></td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td><input name="homeTel"></td>
			</tr>
			<tr>
				<th>휴대전화번호</th>
				<td><input name="mobileTel"></td>
			</tr>
			<tr>
				<th>주소</th>
				<td>
					
				</td>
			</tr>
		</table>
	</form>
</body>
</html>