

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
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
$(document).ready(function() {
    // 게이지의 너비를 조절합니다.
    $('.gauge').each(function() {
        var width = $(this).width();
        $(this).children('.gauge-inner').css('width', width);
    });

});

document.addEventListener("DOMContentLoaded", function() {
    // 현재 URL에서 team 값을 가져옵니다.
    var queryString = window.location.search;
    var urlParams = new URLSearchParams(queryString);
    var team = urlParams.get('team');

    // 팀에 따라 배경 이미지를 설정합니다.
    var backgroundImageUrl = '';
    if (team === '롯데') {
        backgroundImageUrl = '../catchphraseImg/catch_lotte_2024.jpg';
    } else if (team === '두산') {
        backgroundImageUrl = '../catchphraseImg/catch_doosan_2024.jpg';
    } // 다른 팀에 대한 경우에도 동일한 방식으로 처리할 수 있습니다.

    // .container의 배경 이미지를 설정합니다.
    document.getElementById('container').style.backgroundImage = "url('" + backgroundImageUrl + "')";
});


</script>

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
				<li>
                	<a href="search">선수정보 조회</a>
                	<ul>
						<li><a href="pitcherInfo">투수 정보 조회</a></li>
						<li><a href="hitterInfo">타자 정보 조회</a></li>
                	</ul>
            	</li>

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
					<input type="text" name="searchName"> <input
						type="submit" value="검색">
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
	<div class="InfoContainer" id="InfoContainer">
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
						<div class="graph_box">
							<div class="rank_info">
								<c:forEach var="rank" items="${rank}">
							
							AVG<br>
							<span>${rank.avg}</span><br>
							<span>${rank.avgRank}위</span>
								</c:forEach>
							</div>
						</div>
						<div class="graph_box">
							<div class="rank_info">
								<c:forEach var="rank" items="${rank}">
							
							OBP<br>
							<span>${rank.obp}</span><br>
							<span>${rank.obpRank}위</span>

								</c:forEach>
							</div>
						</div>
						<div class="graph_box">
							<div class="rank_info">
								<c:forEach var="rank" items="${rank}">
							
							SLG<br>
							<span>${rank.slg}</span><br>
							<span>${rank.slgRank}위</span>
								</c:forEach>
							</div>
						</div>

						<div class="graph_box">
							<div class="rank_info">
								<c:forEach var="rank" items="${rank}">
							
							OPS<br>
							<span>${rank.ops}</span><br>
							<span>${rank.opsRank}위</span>
								</c:forEach>
							</div>
						</div>

						<div class="graph_box">
							<div class="rank_info">
								<c:forEach var="rank" items="${rank}">
							
							RBI<br>
							<span>${rank.rbi}</span><br>
							<span>${rank.rbiRank}위</span>
								</c:forEach>
							</div>
						</div>

						<div class="graph_box">
							<div class="rank_info">
								<c:forEach var="rank" items="${rank}">
							
							홈런<br>
							<span>${rank.homerun}</span><br>
							<span>${rank.hrRank}위</span>
								</c:forEach>
							</div>
						</div>

					</div>
				</div>
	
	<div class="chartContainer">
		<div class="chart_box">
			<p>경기 기록</p>
			<table class="StatusTable">
				<tr>
					<th>경기수</th>
					<th>타수</th>
					<th>안타</th>
					<th>2루타</th>
					<th>3루타</th>
					<th>홈런</th>
					<th>타점</th>
					<th>도루</th>
					<th>볼넷</th>
					<th>사구</th>
					<th>삼진</th>
					<th>득점</th>

				</tr>
				<c:forEach var="hitter" items="${hitter}">
					<tr>
						<td>${hitter.game}</td>
						<td>${hitter.ab}</td>
						<td>${hitter.hits}</td>
						<td>${hitter.doubleHits}</td>
						<td>${hitter.tripleHits}</td>
						<td>${hitter.homerun}</td>
						<td>${hitter.rbi}</td>
						<td>${hitter.sb}</td>
						<td>${hitter.bb}</td>
						<td>${hitter.hp}</td>
						<td>${hitter.so}</td>
						<td>${hitter.runs}</td>
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