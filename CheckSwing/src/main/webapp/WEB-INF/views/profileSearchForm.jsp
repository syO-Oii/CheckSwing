<!DOCTYPE html>
<html lang="ko">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<header class = "top-bar">
	<div class="inner">
		<div class = "logoContainer">
			<a href="/">
				<img alt="mainLogo" src="img/logo.jpeg"
			 	width = "120px" height = "120px">
			 </a>
		</div>
		
        <ul id="gnb">
            <li>
                <a href="profileAll">선수정보 조회</a>
                <ul>
                	<li><a href="team">구단 정보 조회</a></li>
					<li><a href="pitcherInfo">투수 정보 조회</a></li>
					<li><a href="hitterInfo">타자 정보 조회</a></li>
                </ul>
            </li>
            
            <li>
                <a href="#">팀 정보 조회</a>
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
                </ul>
            </li>
            
            <li>
                <a href="#">구단 YOUTUBE</a>
                <ul>
                    <li><a href="https://www.youtube.com/@giantstv" 
                            target= '_blank'>롯데 자이언츠</a></li>
                    <li><a href="https://www.youtube.com/@LGTwinsTV"
                            target = '_blank'>LG 트윈스</a></li>
                    <li><a href="https://www.youtube.com/@ktwiztv"
                            target = '_blank'>KT 위즈</a></li>
                    <li><a href="https://www.youtube.com/@ncdinos" 
                            target = '_blank'>NC 다이노스</a></li>
                    <li><a href="https://www.youtube.com/@kiatigerstv" 
                            target = '_blank'>기아 타이거즈</a></li>
                    <li><a href="https://www.youtube.com/@bearstv1982" 
                            target = '_blank'>두산 베어스</a></li>
                    <li><a href="https://www.youtube.com/@lionstv1982" 
                            target = '_blank'>삼성 라이온즈</a></li>
                    <li><a href="https://www.youtube.com/@HanwhaEagles_official" 
                            target = '_blank'>한화 이글스</a></li>
                    <li><a href="https://www.youtube.com/@heroesbaseballclub" 
                            target = '_blank'>키움 히어로즈</a></li>
                </ul>
            </li>
            
                  
            <li><a href="#">자유게시판</a></li>   <!-- 게시판 --> 
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
				<h1>선수 정보 조회</h1>
				<p></p>
				<hr />
			</div>
			<div class="playerInfo_header">
					<form method="get" action="searchName">
					이름 <input type="text" name="searchName">
					<input type="submit" value="검색">
					</form>
					
					<table class="playerList">
						<tr>
							<th>이름</th>
							<th>소속팀</th>
							<th>생년월일</th>
							<th>포지션</th>
							<th>투구타격</th>
						</tr>
						<c:forEach var="profile" items="${list}">
							<tr>
								<td><a href="player?id=${profile.id}&position=${profile.position}">${profile.name}</a></td>
								<td><a href="selectTeam?team=${profile.team}">${profile.team}</a></td>
								<td>${profile.birth}</td>
								<td>${profile.position}</td>
								<td>${profile.tota}</td>
							</tr>
						</c:forEach>
					</table>
				</div>

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
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Quas, facere.<br>
                    TEL : 031-111-1234 C.P : 010-1234-5678
                </address>
                <p>
                    2024 CheckSwing &copy; copyright all right reserved.
                </p>
            </div>
        </div>
    </footer>
    
    
</body>
</html>