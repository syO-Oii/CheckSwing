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
						<li><a href="#">투수 정보 조회</a></li>
						<li><a href="#">타자 정보 조회</a></li>
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
	<div class="slideshow-container">
		<div class="mySlideDiv fade">
			<img alt="배너2" src="img/banner3.jpg">
		</div>
	</div>


	<section>
		<div class="inner">
			<h1>RECENT NEWS</h1>
			<div class="wrap">
				<article>
					<div class="pic">
						<img src="img/bNews1.jpg" alt="1번째 콘텐츠 이미지">
					</div>
					<h2>
						<a
							href="https://sports.news.naver.com/news?oid=417&aid=0000986012">KBO리그
							'티빙서 본다'… CJ ENM과 3년 1350억원 중계권 계약</a>
					</h2>
					<p>한국야구위원회(KBO)가 CJ ENM과 사상 최대 규모의 유무선 중계권 계약을 체결했다. KBO는 4일 CJ
						ENM과 2024~2026년까지 3년 동안 KBO리그 유무선 중계방송권 계약을 했다고 발표했다. 계약 기간은 3년으로
						규모는 총 1350억원이다.</p>
				</article>

				<article>
					<div class="pic">
						<img src="img/bNews2.jpg" alt="2번째 콘텐츠 이미지">
					</div>
					<h2>
						<a
							href="https://www.kmib.co.kr/article/view.asp?arcid=1709454789&code=12110000&cp=nv">‘
							괴물’ 날개 단 독수리… 비상 준비 끝냈다</a>
					</h2>
					<p>6년 만에 포스트시즌 진출을 꿈꾸는 프로야구 한화 이글스가 투·타에서 쏠쏠한 결실을 맺은 채 스프링캠프를
						마쳤다. 돌아온 에이스 류현진이 건재함을 확인했고 5선발 경쟁도 치열하게 전개됐다. 타선 짜임새 또한 지난해 대비 한층
						탄탄해졌다.</p>
				</article>

				<article>
					<div class="pic">
						<img src="img/bNews3.jpg" alt="3번째 콘텐츠 이미지">
					</div>
					<h2>
						<a
							href="https://sports.news.naver.com/news?oid=076&aid=0004115885">'롯데→KT→팔꿈치
							수술' 강철매직 Pick! 35세 필승조, 투수조 '1타 강사' 등극 [SC캠프 in 오키나와]</a>
					</h2>
					<p>[오키나와(일본)=스포츠조선 김영록 기자] 이적 첫해 필승조로 활약하며 팀의 우승에 공헌했다. 하지만 이듬해
						팔꿈치 부상으로 쓰러졌다. 2022년 5월의 팔꿈치 부상은 박시영을 커리어 오버의 위기로 몰고 갔다. 하지만 박시영은
						2023년까지 1년반을 고스란히 날리면서도 복귀를 포기하지 않았다. 그리고 올해 스프링캠프에 포함됐다. 이강철 감독에게
						우승을 안겼던 그가 부상을 이겨내고 1군 무대로 돌아왔다.</p>
				</article>

				<article>
					<div class="pic">
						<img src="img/bNews4.jpg" alt="4번째 콘텐츠 이미지">
					</div>
					<h2>
						<a
							href="https://sports.news.naver.com/news?oid=109&aid=0005027302">‘밴헤켄-요키시
							좌완 계보 잇는다’ 키움 新외인 헤이수스, 152km 강속구 쾅! “타자와 승부 두렵지 않아” [오!쎈 핑둥]</a>
					</h2>
					<p>[OSEN=핑둥, 길준영 기자] 키움 히어로즈 새 외국인투수 엔마누엘 데 헤이수스(28)가 KBO리그 데뷔를
						앞두고 있다. 헤이수스는 29일 대만 핑둥현 CTBC 파크에서 열린 대만프로야구 중신 브라더스와의 연습경기에 선발등판해
						2이닝 2피안타 1볼넷 2탈삼진 무실점을 기록했다.</p>
				</article>
			</div>
		</div>
	</section>

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