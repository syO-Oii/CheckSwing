

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
<script>
	$(document).ready(function() {
		// 게이지의 너비를 조절합니다.
		$('.gauge').each(function() {
			var width = $(this).width();
			$(this).children('.gauge-inner').css('width', width);
		});
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

			<ul class="util">
				<li><a href="#">Contact</a></li>
				<li><a href="#">Help</a></li>
				<li><a href="#">Login</a></li>
				<li><a href="#">Join</a></li>
			</ul>
		</div>
	</header>
	<div class="container">
		<section class="section_wrap">
			<div class="top_pagename">
				<h1>타자 정보</h1>
				<p></p>
				<hr />
			</div>
			<div class="search">
				<form method="get" action="searchName">
					이름 <input type="text" name="searchName"> <input
						type="submit" value="검색">
				</form>
			</div>
			<div class="playerInfo_Container">
				<div class="playerInfo_profile">
					<table class="profileTable">
						<c:forEach var="profile" items="${list}">
							<tr>
								<td><img src="playerImg/${profile.id}.png" width="100"
									height="100" alt="{profile.name}"></td>
							</tr>
							<tr>
								<th>이름</th>
								<th><a
									href="player?id=${profile.id}&position=${profile.position}">${profile.name}</a></th>
							</tr>
							<tr>
								<th>소속팀</th>
								<th><a href="selectTeam?team=${profile.team}">${profile.team}</a></th>
							</tr>
							<tr>
								<th>생년월일</th>
								<th>${profile.birth}</th>
							</tr>
							<tr>
								<th>포지션</th>
								<th>${profile.position}</th>
							</tr>
							<tr>
								<th>투구타격</th>
								<th>${profile.tota}</th>
							</tr>
						</c:forEach>
					</table>
				</div>

				<div class="ranking_container">
					<div class="title">
						<h3>타격 지표 순위</h3>
					</div>

					<div class="ranking_box">

						<div class="graph_box">
							<div class="rank_info">
								<c:forEach var="rank" items="${rank}">
							
							AVG :
							<span>${rank.avg}</span>
							AVG_Rank : 
							<span>${rank.avgRank}위</span>
									<br />
									<br />
									<div class="gauge-container">
										<div class="gauge" style="width: ${rank.avgPercentile}%">
											<div class="gauge-inner"></div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
						<div class="graph_box">
							<div class="rank_info">
								<c:forEach var="rank" items="${rank}">
							
							OBP :
							<span>${rank.obp}</span>
							OBP_Rank : 
							<span>${rank.obpRank}위</span>
									<br />
									<br />
									<div class="gauge-container">
										<div class="gauge" style="width: ${rank.obpPercentile}%">
											<div class="gauge-inner"></div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
						<div class="graph_box">
							<div class="rank_info">
								<c:forEach var="rank" items="${rank}">
							
							SLG :
							<span>${rank.slg}</span>
							SLG_Rank : 
							<span>${rank.slgRank}위</span>
									<br />
									<br />
									<div class="gauge-container">
										<div class="gauge" style="width: ${rank.slgPercentile}%">
											<div class="gauge-inner"></div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>

						<div class="graph_box">
							<div class="rank_info">
								<c:forEach var="rank" items="${rank}">
							
							OPS :
							<span>${rank.ops}</span>
							OPS_Rank : 
							<span>${rank.opsRank}위</span>
									<br />
									<br />
									<div class="gauge-container">
										<div class="gauge" style="width: ${rank.opsPercentile}%">
											<div class="gauge-inner"></div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>

						<div class="graph_box">
							<div class="rank_info">
								<c:forEach var="rank" items="${rank}">
							
							RBI :
							<span>${rank.rbi}</span>
							RBI_Rank : 
							<span>${rank.rbiRank}위</span>
									<br />
									<br />
									<div class="gauge-container">
										<div class="gauge" style="width: ${rank.rbiPercentile}%">
											<div class="gauge-inner"></div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>

						<div class="graph_box">
							<div class="rank_info">
								<c:forEach var="rank" items="${rank}">
							
							홈런 :
							<span>${rank.homerun}</span>
									<br>
							홈런_Rank : 
							<span>${rank.hrRank}위</span>
									<br />
									<br />
									<div class="gauge-container">
										<div class="gauge" style="width: ${rank.hrPercentile}%">
											<div class="gauge-inner"></div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>

					</div>
				</div>
			</div>

			<div class="chart_box">
				<table class="StatusTable">
					<tr>
						<th>경기수</th>
						<th>타석</th>
						<th>실질타석</th>
						<th>타수</th>
						<th>득점</th>
						<th>안타</th>
						<th>2루타</th>
						<th>3루타</th>
						<th>홈런</th>
						<th>루타</th>
						<th>타점</th>
						<th>도루성공</th>
						<th>도루실패</th>
						<th>볼넷</th>
						<th>사구</th>
						<th>고의볼넷</th>
						<th>삼진</th>
						<th>병살타</th>
						<th>희생타</th>
						<th>희생플라이</th>
						<th>AVG</th>
						<th>OBP</th>
						<th>SLG</th>
						<th>OPS</th>
					</tr>
					<c:forEach var="hitter" items="${hitter}">
						<tr>
							<td>${hitter.game}</td>
							<td>${hitter.pa}</td>
							<td>${hitter.epa}</td>
							<td>${hitter.ab}</td>
							<td>${hitter.runs}</td>
							<td>${hitter.hits}</td>
							<td>${hitter.doubleHits}</td>
							<td>${hitter.tripleHits}</td>
							<td>${hitter.homerun}</td>
							<td>${hitter.tb}</td>
							<td>${hitter.rbi}</td>
							<td>${hitter.sb}</td>
							<td>${hitter.cs}</td>
							<td>${hitter.bb}</td>
							<td>${hitter.hp}</td>
							<td>${hitter.ib}</td>
							<td>${hitter.so}</td>
							<td>${hitter.gdp}</td>
							<td>${hitter.sh}</td>
							<td>${hitter.sf}</td>
							<td>${hitter.avg}</td>
							<td>${hitter.obp}</td>
							<td>${hitter.slg}</td>
							<td>${hitter.ops}</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</section>
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