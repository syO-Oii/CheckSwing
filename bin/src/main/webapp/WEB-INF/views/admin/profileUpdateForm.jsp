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

	<header class="adminHeader">
		<div class="adminInner">
			<h1>선수 정보 수정</h1>
			<ul class=adminUtil>
				<li><a href="main.checkSwing">메인으로 돌아가기</a></li>

			</ul>
		</div>
		<!-- Global Navigation Bar, 상단 메뉴바-->
		<ul id="adminGnb">	
            <li>
                <a href="profile">선수정보 수정</a>
            </li>
            <li>
                <a href="team">팀 정보 수정</a>
            </li>
            <li>
            	<a href="board">게시글 정보 수정</a>
            </li>
        </ul>
	</header>

	<main class="adminMain">
		<div class="adminMainDiv">
			<table class="adminTable table-bordered table-hover">
				<tr>
					<th class="num">번호</th>
					<th class="name">이름</th>
					<th class="job">보직</th>
					<th class="id">ID</th>
					<th class="update">정보수정</th>
				</tr>
				
				<script>
					function updatePopup(updateNum){
						var url = "updateMgrPopup.checkSwing?num="+updateNum;
						var name = "updatePopup";
						var option = "width = 600, height = 600, top = 100, left = 500, location = no";
						window.open(url, name, option);
					}
				</script>
				

			</table>
		</div>
	</main>

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