

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
<%-- <script src="https://kit.fontawesome.com/c47106c6a7.js" crossorigin="anonymous"></script> --%>
<link rel="stylesheet" href="/css/style.css">
<script src="js/ie.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

</head>
<body>
	<header class="top-bar">
		<div class="inner">
			<div class="logoContainer">
				<a href="/"> <img alt="mainLogo" src="img/logo.jpeg"
					width="120px" height="120px">
				</a>
			</div>

			<ul id="gnb">
				<li><a href="profileAll">선수정보 조회</a>
					<ul>
						<li><a href="team">구단 정보 조회</a></li>
						<li><a href="pitcherInfo">투수 정보 조회</a></li>
						<li><a href="hitterInfo">타자 정보 조회</a></li>
					</ul></li>

				<li><a href="#">팀 정보 조회</a>
					<ul>
						<li><a href="#">롯데 자이언츠</a></li>
						<li><a href="#">LG 트윈스</a></li>
						<li><a href="#">KT 위즈</a></li>
						<li><a href="#">NC 다이노스</a></li>
						<li><a href="#">기아 타이거즈</a></li>
						<li><a href="#">두산 베어스</a></li>
						<li><a href="#">삼성 라이온즈</a></li>
						<li><a href="#">한화 이글스</a></li>
						<li><a href="#">키움 히어로즈</a></li>
					</ul></li>

				<li><a href="#">구단 YOUTUBE</a>
					<ul>
						<li><a href="https://www.youtube.com/@giantstv"
							target='_blank'>롯데 자이언츠</a></li>
						<li><a href="https://www.youtube.com/@LGTwinsTV"
							target='_blank'>LG 트윈스</a></li>
						<li><a href="https://www.youtube.com/@ktwiztv"
							target='_blank'>KT 위즈</a></li>
						<li><a href="https://www.youtube.com/@ncdinos"
							target='_blank'>NC 다이노스</a></li>
						<li><a href="https://www.youtube.com/@kiatigerstv"
							target='_blank'>기아 타이거즈</a></li>
						<li><a href="https://www.youtube.com/@bearstv1982"
							target='_blank'>두산 베어스</a></li>
						<li><a href="https://www.youtube.com/@lionstv1982"
							target='_blank'>삼성 라이온즈</a></li>
						<li><a href="https://www.youtube.com/@HanwhaEagles_official"
							target='_blank'>한화 이글스</a></li>
						<li><a href="https://www.youtube.com/@heroesbaseballclub"
							target='_blank'>키움 히어로즈</a></li>
					</ul></li>


				<li><a href="#">자유게시판</a></li>
				<!-- 게시판 -->
			</ul>

			<div class="search">
				<form method="get" action="searchName">
					<input type="text" name="searchName"> <input type="submit"
						value="검색">
				</form>
			</div>
			<ul class="util">
				<li><a href="#">Contact</a></li>
				<li><a href="#">Help</a></li>
				<li><a href="#">Login</a></li>
				<li><a href="#">Join</a></li>
			</ul>
		</div>
	</header>
	<section class="section_wrap">
		<div class="top_pagename">
			<p>타자 정보</p>
		</div>
	</section>
	<div class="InfoContainer">
		<div class="playerInfo_Container">
			<c:forEach var="profile" items="${list}">
				<div class="playerImage">
					<img src="playerImg2/${profile.id }.png" width="620px"
						height="570px">
				</div>
				<div class="playerInfo_profile">
					<table class="profileTable">

						<p class="name">
							<strong>${profile.name}</strong>
						</p>
						<dl>
							<dt>생년월일</dt>
							<dd>${profile.birth}</dd>

							<dt>수비위치</dt>
							<dd>${profile.position}</dd>

							<dt>투타</dt>
							<dd>${profile.tota}</dd>
						</dl>

					</table>

					<div class="teamLogo">
						<img src="teamLogo/${profile.team }.png" alt="팀로고">
					</div>
				</div>
			</c:forEach>
		</div>
	</div>


	<div class="ranking_container">
		<div class="ranking_box">
			<c:forEach var="rank" items="${rank}">
				<div class="graph_box">
					<div class="rank_info">
						BB<br> <span>${rank.bb}</span> <span>${rank.bbRank}위</span>
					</div>
				</div>
				<div class="graph_box">
					<div class="rank_info">
						삼진<br> <span>${rank.so}</span> <span>${rank.soRank}위</span>
					</div>
				</div>
				<div class="graph_box">
					<div class="rank_info">
						ERA<br> <span>${rank.era}</span> <span>${rank.eraRank}위</span>

					</div>
				</div>
			</c:forEach>
		</div>
	</div>



	<div class="chartContainer">
		<div class=chart_box>
			<table class="StatusTable">
				<tr>
					<th>경기수</th>
					<th>선발</th>
					<th>중계</th>
					<th>마무리</th>
					<th>승</th>
					<th>패</th>
					<th>홀드</th>
					<th>세이브</th>
					<th>이닝</th>
					<th>자책점</th>
					<th>실점</th>
					<th>책임실점</th>
					<th>상대한 타자 수</th>
					<th>안타</th>
					<th>2루타</th>
					<th>3루타</th>
					<th>홈런</th>
					<th>볼넷</th>
					<th>사구</th>
					<th>고의사구</th>
					<th>삼진</th>
					<th>실책</th>
					<th>보크</th>
					<th>폭투</th>
					<th>ERA</th>
				</tr>
				<c:forEach var="pitcher" items="${pitcher}">
					<tr>
						<td>${pitcher.game}</td>
						<td>${pitcher.gs}</td>
						<td>${pitcher.gr}</td>
						<td>${pitcher.gf}</td>
						<td>${pitcher.win}</td>
						<td>${pitcher.lose}</td>
						<td>${pitcher.hold}</td>
						<td>${pitcher.save}</td>
						<td>${pitcher.innings}</td>
						<td>${pitcher.er}</td>
						<td>${pitcher.runs}</td>
						<td>${pitcher.rra}</td>
						<td>${pitcher.tbf}</td>
						<td>${pitcher.hits}</td>
						<td>${pitcher.doubleHits}</td>
						<td>${pitcher.tripleHits}</td>
						<td>${pitcher.homerun}</td>
						<td>${pitcher.bb}</td>
						<td>${pitcher.hp}</td>
						<td>${pitcher.ib}</td>
						<td>${pitcher.so}</td>
						<td>${pitcher.rob}</td>
						<td>${pitcher.bk}</td>
						<td>${pitcher.wp}</td>
						<td>${pitcher.era}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
	<footer>
		<div class="inner">
			<div class="upper">
				<h1>Check Swing</h1>
				<ul>
					<li><a href="#">Policy</a></li>
					<li><a href="#">Terms</a></li>
					<li><a href="#">Family Site</a></li>
					<li><a href="#">Sitemap</a></li>
				</ul>
			</div>

			<div class="lower">
				<address>
					Lorem ipsum dolor sit amet consectetur adipisicing elit. Quas,
					facere.<br> TEL : 031-111-1234 C.P : 010-1234-5678
				</address>
				<p>2024 CheckSwing &copy; copyright all right reserved.</p>
			</div>
		</div>
	</footer>
</body>
</html>