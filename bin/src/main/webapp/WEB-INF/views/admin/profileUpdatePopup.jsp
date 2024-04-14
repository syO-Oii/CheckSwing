<!DOCTYPE html>
<html lang="ko">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Check Swing</title>
<link rel="icon" href="img/logo.jpeg" type="image/x-icon">
<link rel="stylesheet" href="/css/style.css">
<script src="js/ie.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>

<body>

	<header class="adminHeader">
		<div class="adminInner">
			<h1>선수 정보 수정</h1>
		</div>
	</header>

	<form action="updateProfile" method="post">
		<c:forEach var="info" items="${info}">
			<table class="updateAdminTable">

				<tr>
					<th>아이디</th>
					<td><input type="text" id="id11" name="id11" maxlength="20"
						value="${info.id}" readonly></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" id="name11" name="name11"
						maxlength="20" value="${info.name}"></td>
				</tr>
				<tr>
					<th>보직</th>
					<td> <select id="position" name="position" size="1">
						<option value="P" ${info.position == 'P' ? 'selected' : '' }>P</option>
						<option value="C" ${info.position == 'C' ? 'selected' : '' }>C</option>
						<option value="1B" ${info.position == '1B' ? 'selected' : '' }>1B</option>
						<option value="2B" ${info.position == '2B' ? 'selected' : '' }>2B</option>
						<option value="3B" ${info.position == '3B' ? 'selected' : '' }>3B</option>
						<option value="SS" ${info.position == 'SS' ? 'selected' : '' }>SS</option>
						<option value="RF" ${info.position == 'RF' ? 'selected' : '' }>RF</option>
						<option value="CF" ${info.position == 'CF' ? 'selected' : '' }>CF</option>
						<option value="LF" ${info.position == 'LF' ? 'selected' : '' }>LF</option>
						<option value="DH" ${info.position == 'DH' ? 'selected' : '' }>DH</option>
					</select>	
					</td>
				</tr>
				<tr>
					<th>팀</th>
					<td><select id="team" name="team" size="1">
							<option value="LG" ${info.team == 'LG' ? 'selected' : ''}>LG</option>
							<option value="KT" ${info.team == 'KT' ? 'selected' : ''}>KT</option>
							<option value="SSG" ${info.team == 'SSG' ? 'selected' : ''}>SSG</option>
							<option value="NC" ${info.team == 'NC' ? 'selected' : ''}>NC</option>
							<option value="두산" ${info.team == '두산' ? 'selected' : ''}>두산</option>
							<option value="기아" ${info.team == '기아' ? 'selected' : ''}>기아</option>
							<option value="롯데" ${info.team == '롯데' ? 'selected' : ''}>롯데</option>
							<option value="삼성" ${info.team == '삼성' ? 'selected' : ''}>삼성</option>
							<option value="한화" ${info.team == '한화' ? 'selected' : ''}>한화</option>
							<option value="키움" ${info.team == '키움' ? 'selected' : ''}>키움</option>
					</select></td>
				</tr>

			</table>

			<br>
			<input type="submit" class="submitAdminBtn" value="수정">
			<input type="button" class="deleteAdminBtn" value="삭제"
				onclick="location.href='deleteAdmin.jsp?num=${info.id}'">
		</c:forEach>
	</form>

</body>

</html>