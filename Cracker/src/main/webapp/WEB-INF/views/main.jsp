<%@page import="kr.cracker.mapper.PotholeVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE HTML>
<!--
   Dimension by HTML5 UP
   html5up.net | @ajlkn
   Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>Dimension by HTML5 UP</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gowun+Dodum&family=Gugi&family=Jua&family=Sunflower:wght@500&display=swap" rel="stylesheet">

<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="resources/css/main.css?ver=5" />
<noscript>
	<link rel="stylesheet" href="resources/css/noscript.css" />
</noscript>
<!-- 지도 API -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=LIBRARY"></script>
<!-- services 라이브러리 불러오기 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services"></script>
<!-- services와 clusterer, drawing 라이브러리 불러오기 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services,clusterer,drawing"></script>

<style>
body {
	height: 100vh;
	background-image: url('resources/images/cracker_back.jpg');
	background-repeat: no-repeat;
	background-size: cover;
	font-family: 'Gowun Dodum', sans-serif;
}

img {
	width: 100%;
	height: 200px;
}

#menu ul li {
	list-style-type: none;
	float: left;
	margin-left: 20px;
}

video {
	max-width: 80%;
	display: block;
	margin: 20px auto;
}
</style>

<script type="text/javascript">
	function addForm() {
		var add = document.add;

		var latitude = add.latitude.value;
		var longtitude = add.longtitude.value;

		if (latitude == null || longtitude == null) {
			alert('위도와 경도를 정확히 입력해주세요.');
		} else {
			return showmap(latitude, longtitude);
		}
	}
</script>

<script type="text/javascript">
	function loadpothole() {
		location.href = "${cpath}/loadpothole.do";
	}

	function potholemap() {
		location.href = "${cpath}/map_pothole.do";
	}

	function loadmap() {
		location.href = "${cpath}/loadmap.do";
	}

	function loadnotice() {
		location.href = "${cpath}/notice.do";
	}

	function logout() {
		location.href = "${cpath}/logout.do";
	}

	function notice_add() {
		location.href = "${cpath}/notice_add.do";
	}

	function users() {
		location.href = "${cpath}/user.do";
	}

	function loadvideo() {
		location.href = "${cpath}/loadvideo.do";
	}

	function check_input() {

		var log = document.login_form;

		if (!log.mb_id.value)
		// login_form 이름을 가진 form 안의 mb_id 의 value가 없으면
		{
			alert("아이디를 입력하세요.");
			log.mb_id.focus();
			// 화면 커서 이동
			return;
		} else if (!log.mb_pw.value) {
			alert("비밀번호를 입력하세요.");
			// 화면 커서 이동
			return;
		}

		else {
			log.submit();
		}

	}

	notice_add
</script>
</head>
<body class="is-preload">



	<!-- Wrapper -->
	<div id="wrapper" style="top: 100px;">

		<!-- Header -->
		<header id="header">

			<div class="content">
				<div class="inner">
					<h1>Safe City</h1>


					<c:choose>
						<c:when test="${ empty info}">
							<p>실시간 포트홀 탐지 시스템</p>
						</c:when>

						<c:when test="${not empty info}">
							<p>${info.mb_name }님,환영합니다</p>

						</c:when>

					</c:choose>

					<nav>
						<ul>
							<li><a href="#intro">시스템 소개</a></li>



							<c:choose>

								<c:when test="${not empty info}">

									<c:if test="${info.admin_yn eq 'Y'}">

										<li><a href="#users" onclick="users()">회원관리</a></li>

									</c:if>

								</c:when>

							</c:choose>

							<%-- <li><a href="#video" onclick = "loadvideo()">블랙박스</a></li> --%>
							<li><a href="#map" onclick="loadmap()">실시간 포트홀</a></li>
							<li><a href="#contact" onclick="loadpothole()">신고 내역</a></li>
							<li><a href="#notice" onclick="loadnotice()">공지사항</a></li>
						</ul>
					</nav>


				</div>
			</div>
			<nav>

				<c:choose>
					<c:when test="${ empty info}">
						<ul>
							<li><a href="#login">login</a></li>
							<li><a href="#join">join</a></li>
						</ul>
					</c:when>

					<c:when test="${not empty info}">
						<ul>
							<li><a href="#" onclick="logout()">logout</a></li>
							<li><a href="#edit"> Edit </a></li>
						</ul>

					</c:when>

				</c:choose>




			</nav>
		</header>


		<!-- Main -->
		<div id="main">

			<!-- login -->
			<article id="login" style="bottom: 80px;">
				<h2 class="major">login</h2>
				<form action="${cpath}/login.do" method="post">
					<div class="fields">

						<div class="field half">
							<label for="id">ID</label> <input type="text" name="mb_id" id="id" />
						</div>

						<div class="field half">
							<label for="password">password</label> <input type="password" name="mb_pw" id="password" />
						</div>
					</div>

					<div class="field" align="center">
						<ul class="actions">
							<li><input type="submit" value="login" class="primary" onclick="check_input()" /></li>
							<li><input type="reset" value="Reset" /></li>
						</ul>
					</div>
				</form>
			</article>

			<!-- join -->
			<article id="join" style="width: 1100px; bottom: 80px;">
				<h2 class="major">join</h2>

				<form action="${cpath}/Join.do" method="post">
					<div class="fields">

						<div class="field">
							<input type="radio" id="demo-copy" name="admin_yn" value='N'> <label for="demo-copy">사용자</label> <input type="radio" id="demo-human" name="admin_yn" value='Y'> <label for="demo-human">관리자</label>
						</div>

						<div class="field half">
							<label for="id">ID</label> <input type="text" name="mb_id" id="id" />
						</div>

						<div class="field half">
							<label for="password">password</label> <input type="password" name="mb_pw" id="password" />
						</div>

						<div class="field half">
							<label for="name">Name</label> <input type="text" name="mb_name" id="name" />
						</div>

						<div class="field half">
							<label for="phone">phone</label> <input type="text" name="mb_phone" id="phone" />
						</div>
						<div class="field">

							<div class="field half">
								<label for="serial number">serial number</label> <input type="text" name="serial_number" id="serial number" />
							</div>
						</div>

						<br>
						<br>
						<div class="field" aling="center">
							<ul class="actions">
								<li><input type="submit" value="join" class="primary" /></li>
								<li><input type="reset" value="Reset" /></li>
							</ul>
						</div>
					</div>
				</form>

			</article>


			<!-- 회원정보 수정 -->
			<article id="edit" style="bottom: 80px;">
				<h2 class="major">Edit</h2>

				<form action="${cpath}/edit.do" method="post">

					<input type="hidden" name="mb_id" value="${info.mb_id}">

					<div class="fields">

						<div class="field half">
							<label for="password">password</label> <input type="password" name="mb_pw" id="password" />
						</div>


						<div class="field half">
							<label for="phone">phone</label> <input type="text" name="mb_phone" id="phone" value="${info.mb_phone}" />
						</div>
						<div class="field">

							<div class="field half">
								<label for="serial number">serial number</label> <input type="text" name="serial_number" id="serial number" value="${info.serial_number}" />
							</div>
						</div>

						<br>
						<br>
						<div class="field" aling="center">
							<ul class="actions">
								<li><input type="submit" value="edit" class="primary" /></li>
								<li><input type="reset" value="Reset" /></li>
							</ul>
						</div>
					</div>
				</form>

			</article>

			<!-- 시스템 소개 -->
			<article id="intro" style="width: 1100px; bottom: 80px;">
				<h2 class="major">시스템 소개</h2>

				<h1>Safe City?</h1>
				<p>Safe City는 딥러닝을 활용한 실시간 포트홀 탐지 시스템입니다.</p>
				<p>주행 중 블랙박스 화면을 통해 포트홀이 감지 될 때마다 자동으로 사진과 위치 정보를 저장하여 지자체에 신고가 완료됩니다.</p>
				<p>포트홀 판별이 이루어지면 24시간 이내에 보수가 완료되어 쾌적한 도로주행을 할 수 있습니다.</p>
				<p>포트홀의 정보는 실시간으로 공유되며, 지도를 통해서 주변 포트홀을 확인할 수 있으며 보수의 여부 또한 확인할 수 있습니다.</p>
			</article>



			<!-- users -->
			<article id="users" style="width: 1100px; bottom: 80px;">
				<section>
					<header class="main">
						<h2 class="major">회원관리</h2>
					</header>

					<h4 align="center"></h4>
					<div class="table-wrapper">

						<table>
							<thead align="center">
								<tr>
									<th>순번</th>
									<th>아이디</th>
									<th>이름</th>
									<th>블랙박스 번호</th>
									<th>관리자 여부</th>
									<th>신고 수</th>

								</tr>
							</thead>


							<c:forEach var="vo" items="${users}">
								<c:set var="i" value="${i+1 }" />

								<tbody>
									<tr>
										<td>${i }</td>
										<td>${vo.mb_id}</td>
										<td>${vo.mb_name}</td>
										<td>${vo.serial_number}</td>
										<td>${vo.admin_yn}</td>
										<td>${vo.pt_cnt}</td>
									</tr>
								</tbody>
							</c:forEach>

						</table>
					</div>
				</section>
			</article>


			<!-- 지도로 실시간 포트홀 위치 파악 -->
			<article id="map" style="width: 1100px; bottom: 80px;">
				<h2 class="major">실시간 포트홀</h2>
				<form method="post" name="add">
					<div class="row gtr-uniform">
						<div class="col-2 col-12-xsmall">
							<input type="text" name="latitude" id="latitude" value="" placeholder="위도" style="width: 30%; margin-right: 30px; float: left;" />
						</div>
						<div class="col-2 col-12-xsmall">
							<input type="text" name="longtitude" id="longtitude" value="" placeholder="경도" style="width: 30%; margin-right: 30px; float: left;" />
						</div>
						<div class="col-2 col-12-xsmall">
							<input type="button" onclick="addForm()" value="검색하기" class="primary" />
						</div>

					</div>
				</form>

				<!-- 지도 불러오기 -->

				<div class="map_wrap">
					<div id="map2" style="width: 100%; height: 500px; position: relative; overflow: hidden;"></div>
					<div class="hAddr">

						<span id="centerAddr"></span>

					</div>
				</div>

				<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=86022e9c3146217426d3a08d2ba62137&libraries=services"></script>


				<script type="text/javascript">
					function showmap(latitude, longtitude) {

						var pt_latitude = new Array();
						var pt_longitude = new Array();
						var pt_pic = new Array();

						<c:forEach items="${map_pothole}" var="vo">
							pt_latitude.push("${vo.pt_latitude}");
							pt_longitude.push("${vo.pt_longitude}");
							pt_pic.push("${vo.pt_pic}");
						</c:forEach>

						var mapContainer = document.getElementById('map2'), // 지도를 표시할 div 
						mapOption = {
							center : new kakao.maps.LatLng(latitude, longtitude), // 지도의 중심좌표
							level : 3
						// 지도의 확대 레벨
						};

						// 중심좌표 마커

						// 지도를 생성합니다    
						var map = new kakao.maps.Map(mapContainer, mapOption);

						// 마커가 표시될 위치입니다 
						var markerPosition3 = new kakao.maps.LatLng(latitude,
								longtitude);

						// 마커를 생성합니다
						var marker3 = new kakao.maps.Marker({
							position : markerPosition3
						});

						// 마커가 지도 위에 표시되도록 설정합니다
						marker3.setMap(map);

						// 주소-좌표 변환 객체를 생성합니다
						var geocoder = new kakao.maps.services.Geocoder();

						var marker = new kakao.maps.Marker(), // 클릭한 위치를 표시할 마커입니다
						infowindow = new kakao.maps.InfoWindow({
							zindex : 1
						}); // 클릭한 위치에 대한 주소를 표시할 인포윈도우입니다

						// 현재 지도 중심좌표로 주소를 검색해서 지도 좌측 상단에 표시합니다
						searchAddrFromCoords(map.getCenter(), displayCenterInfo);

						// 지도를 클릭했을 때 클릭 위치 좌표에 대한 주소정보를 표시하도록 이벤트를 등록합니다
						// kakao.maps.event.addListener(map, 'click', function(mouseEvent) {
						searchDetailAddrFromCoords(
								new kakao.maps.LatLng(latitude, longtitude),
								function(result, status) {
									if (status === kakao.maps.services.Status.OK) {
										var detailAddr = !!result[0].road_address ? '<div>도로명주소 : '
												+ result[0].road_address.address_name
												+ '</div>'
												: '';
										detailAddr += '<div>지번 주소 : '
												+ result[0].address.address_name
												+ '</div>';

										var content = '<div class="bAddr" style="color:black; font-size : 60%; ">'
												+ '<span class="title"></span>'
												+ detailAddr
												+ '<br>'
												+ '</div>';

										// 마커를 클릭한 위치에 표시합니다 
										marker
												.setPosition(new kakao.maps.LatLng(
														latitude, longtitude));
										marker.setMap(map);

										// 인포윈도우에 클릭한 위치에 대한 법정동 상세 주소정보를 표시합니다
										infowindow.setContent(content);
										infowindow.open(map, marker);
									}
								});
						// });

						// 중심 좌표나 확대 수준이 변경됐을 때 지도 중심 좌표에 대한 주소 정보를 표시하도록 이벤트를 등록합니다
						kakao.maps.event.addListener(map, 'idle', function() {
							searchAddrFromCoords(map.getCenter(),
									displayCenterInfo);
						});

						function searchAddrFromCoords(coords, callback) {
							// 좌표로 행정동 주소 정보를 요청합니다
							geocoder.coord2RegionCode(coords.getLng(), coords
									.getLat(), callback);
						}

						function searchDetailAddrFromCoords(coords, callback) {
							// 좌표로 법정동 상세 주소 정보를 요청합니다
							geocoder.coord2Address(coords.getLng(), coords
									.getLat(), callback);
						}

						// 지도 좌측상단에 지도 중심좌표에 대한 주소정보를 표출하는 함수입니다
						function displayCenterInfo(result, status) {
							if (status === kakao.maps.services.Status.OK) {
								var infoDiv = document
										.getElementById('centerAddr');

								for (var i = 0; i < result.length; i++) {
									// 행정동의 region_type 값은 'H' 이므로
									if (result[i].region_type === 'H') {
										infoDiv.innerHTML = result[i].address_name;
										break;
									}
								}
							}
						}

						var positions = [];
						
						// 위도경도에 맞는 사진 불러오기
						for (var i = 0; i < pt_pic.length; i++) {
							positions.push({
								content : '<img src='+ pt_pic[i] +'/>',
								latlng : new kakao.maps.LatLng(pt_latitude[i],
										pt_longitude[i])
							})

						}
						;

						for (var i = 0; i < positions.length; i++) {
							// 마커를 생성합니다
							var marker2 = new kakao.maps.Marker({
								map : map, // 마커를 표시할 지도
								position : positions[i].latlng
							// 마커의 위치
							});

							// 마커에 표시할 인포윈도우를 생성합니다 
							var infowindow2 = new kakao.maps.InfoWindow({
								content : positions[i].content
							// 인포윈도우에 표시할 내용
							});

							var markerImage = new kakao.maps.MarkerImage(
									'resources/images/hole.png',
									new kakao.maps.Size(30, 30));

							marker2.setImage(markerImage);

							// 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
							// 이벤트 리스너로는 클로저를 만들어 등록합니다 
							// for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
							kakao.maps.event
									.addListener(marker2, 'mouseover',
											makeOverListener(map, marker2,
													infowindow2));
							kakao.maps.event.addListener(marker2, 'mouseout',
									makeOutListener(infowindow2));
						}

						// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
						function makeOverListener(map, marker2, infowindow2) {
							return function() {
								infowindow2.open(map, marker2);
							};
						}

						// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
						function makeOutListener(infowindow2) {
							return function() {
								infowindow2.close();
							};
						}

					}
					
					// 사용자가 원하는 위치가 없으면 기본위치 보여줌
				<%if (session.getAttribute("pt_latitude") != null) {%>
					var pt_latitude =
				<%=(double) session.getAttribute("pt_latitude")%>
					var pt_longitude =
				<%=(double) session.getAttribute("pt_longitude")%>
					showmap(pt_latitude, pt_longitude);
				<%} else {%>
					showmap(35.110661436778244, 126.87772971156787);
				<%}%>
					
				</script>
			</article>


			<!-- 포트홀 신고내역 -->
			<article id="contact" align="center" style="width: 1300px; bottom: 80px;">
				<h2 class="major">신고내역</h2>

				<c:choose>
					<c:when test="${ empty info}">
						<h2>
							<br>로그인 후 이용해 주세요.<br>
						</h2>
					</c:when>

					<c:when test="${not empty info}">
						<div class="fields">
							<table>
								<tr>
								<thead align="center">
									<div class="field half">

										<th>순번</th>
										<th>회원 아이디</th>
										<th>날짜</th>
										<th>위도</th>
										<th>경도</th>
										<th>보수여부</th>
										<th>지도</th>

									</div>
								</thead>
								</tr>
				<!-- 관리자면 모든 포트홀 신고내역 보여주고 사용자면 자신이 신고한 내역만 보여줌 -->
				<!-- 자신이 신고한 포트홀이 보수가 되었다면 보수완료로 뜸 -->
								<c:choose>
									<c:when test="${not empty info}">
										<c:if test="${info.admin_yn ne 'Y'}">

											<c:forEach var="vo" items="${my_potholeN}">
												<c:set var="k" value="${k+1 }" />

												<tbody>
													<tr>
														<td>${k}</td>
														<td>${vo.mb_id}</td>
														<td>${vo.pt_date}</td>
														<td>${vo.pt_latitude}</td>
														<td>${vo.pt_longitude}</td>
														<td>${vo.pt_yn}</td>
														<td><button onclick='location.href="${cpath}/map_pothole.do?pt_seq=${vo.pt_seq}";'>보러가기</button></td>

													</tr>

												</tbody>


											</c:forEach>
											<c:forEach var="vo" items="${my_potholeY}">
												<tbody>
													<tr>
														<td>${k}</td>
														<td>${vo.mb_id}</td>
														<td>${vo.pt_date}</td>
														<td>${vo.pt_latitude}</td>
														<td>${vo.pt_longitude}</td>
														<td>${vo.pt_yn}</td>
														<td></td>

													</tr>

												</tbody>


											</c:forEach>


										</c:if>

										<c:if test="${info.admin_yn eq 'Y'}">

											<c:forEach var="vo" items="${pothole_n}">
												<c:set var="q" value="${q+1 }" />

												<tbody>
													<tr>
														<td>${q}</td>
														<td>${vo.mb_id}</td>
														<td>${vo.pt_date}</td>
														<td>${vo.pt_latitude}</td>
														<td>${vo.pt_longitude}</td>

														<td><button onclick='location.href="${cpath}/pothole_yn.do?pt_seq=${vo.pt_seq}";'>보수완료</button></td>
														<td><button onclick='location.href="${cpath}/map_pothole.do?pt_seq=${vo.pt_seq}";'>보러가기</button></td>
														<td></td>


													</tr>
												</tbody>
											</c:forEach>

											<c:forEach var="vo" items="${pothole_y}">
												<c:set var="q" value="${q+1 }" />

												<tbody>
													<tr>
														<td>${q}</td>
														<td>${vo.mb_id}</td>
														<td>${vo.pt_date}</td>
														<td>${vo.pt_latitude}</td>
														<td>${vo.pt_longitude}</td>
														<td>Y</td>
														<td></td>


													</tr>
												</tbody>
											</c:forEach>
										</c:if>

									</c:when>

								</c:choose>


							</table>
						</div>

					</c:when>

				</c:choose>




			</article>

			<!-- 공지사항 -->
			<!-- 관리자면 공지사항 글작성 수정 삭제 보여짐 -->
			<article id="notice" align="center" style="width: 1100px;">
				<h2 class="major">공지사항</h2>


				<div class="table-wrapper">


					<table>
						<thead align="center">
							<tr>
								<th>순번</th>
								<th>제목</th>
								<th>날짜</th>
								<th>조회수</th>

							</tr>
						</thead>
						<c:forEach var="vo" items="${notice_list}">
							<c:set var="j" value="${j+1 }" />
							<tbody>
								<tr>
									<td>${j }</td>
									<td><a href="${cpath}/noticeContent.do?nt_seq=${vo.nt_seq}">${vo.nt_title}</a></td>
									<td>${vo.nt_date}</td>
									<td>${vo.nt_cnt}</td>
								</tr>
							</tbody>
							
						</c:forEach>
		



					</table>
					<c:choose>

						<c:when test="${not empty info}">

							<c:if test="${info.admin_yn eq 'Y'}">
								<div class="col-6 col-12-small">

									<ul class="actions stacked">

										<li align="right"><a href="#" class="button default" onclick='notice_add()'>글쓰기</a></li>
									</ul>
								</div>
							</c:if>

						</c:when>

					</c:choose>
				</div>


			</article>


			<!-- 공지사항 수정 -->
			<article id="notice_addedit" align="center" style="width: 1100px; bottom: 80px;">
				<h2 class="major">공지사항</h2>


				<div class="table-wrapper">

					<section>

						<c:choose>
							<c:when test="${ not empty notice_content}">
								<header class="main" align="center">
									<h2>수정하기</h2>

								</header>

								<h4 align="center"></h4>
								
								<h3></h3>

								<form method="post" action="noticeUpdate.do">
									<div class="row gtr-uniform">
										<div class="col-12">

											<textarea name="nt_title" id="nt_title" rows="1" style="font-family: 'Gowun Dodum', sans-serif;">${notice_content.nt_title }</textarea>
										</div>

										<!-- Break -->
										<div class="col-12">
											<br>
											<textarea name="nt_content" id="nt_content" rows="10" style="font-family: 'Gowun Dodum', sans-serif;">${notice_content.nt_content }</textarea>


										</div>
										<!-- Break -->
										<br>
										<div class="col-12">
											<ul class="actions" style="padding-left: 350px">
												<li><input type="submit" value="수정하기" class="primary" /></li>
												<li><input type="reset" value="Reset" /></li>
											</ul>
										</div>
									</div>
									<input type="hidden" name="nt_seq" value=${notice_content.nt_seq }>
								</form>

							</c:when>
							
						
							<c:when test="${ empty notice_content}">
								<header class="main" align="center">
									<h2>글쓰기</h2>
								</header>

								<h4 align="center"></h4>
								
								<h3></h3>


								<form method="post" action="noticeinsert.do">
									<div class="row gtr-uniform">
										<div class="col-12 col-12-xsmall">
											<input type="text" name="nt_title" id="title" value="" placeholder="제목" />
										</div>
										<br>
										<!-- Break -->
										<div class="col-12">
											<textarea name="nt_content" id="content" placeholder="내용을 입력하세요." rows="10" style="font-family: 'Gowun Dodum', sans-serif;"></textarea>
											<input type="hidden" name="mb_id" value=${info.mb_id }>
										</div>
										<br>
										<!-- Break -->
										<div class="col-12">
											<ul class="actions" style="padding-left: 350px">
												<li><input type="submit" value="저장하기" class="primary" /></li>
												<li><input type="reset" value="Reset" /></li>
											</ul>
										</div>
									</div>
								</form>

							</c:when>
						</c:choose>

					</section>





				</div>


			</article>




			<article id="notice_content" align="center" style="width: 1100px; bottom: 80px;">
				<h2 class="major">공지사항</h2>


				<div class="table-wrapper">

					<section>
						<!-- Form -->
						<h2>${notice_content.nt_title }</h2>
						<p style="padding-left: 700px;">${notice_content.nt_date}</p>


						<form method="post" action="#">
							<div class="row gtr-uniform">



								<!-- Break -->
								<div class="col-12">

									<textarea name="content" id="content" rows="10" style="font-family: 'Gowun Dodum', sans-serif;" disabled>${notice_content.nt_content }</textarea>
								</div>
								<br>
								<!-- Break -->
								<div class="col-12">
									<ul class="actions" style="padding-left: 400px">

										<c:choose>
											<c:when test="${not empty info}">

												<c:if test="${info.admin_yn eq 'Y'}">
													<li><input type="button" value="수정" class="primary" onclick='location.href="#notice_addedit";' /></li>
													<li><input type="button" value="삭제" onclick='location.href="${cpath}/noticeDelete.do?nt_seq=${notice_content.nt_seq}";' /></li>


												</c:if>



											</c:when>

										</c:choose>

									</ul>
								</div>
							</div>
						</form>
					</section>
				</div>
			</article>
		</div>

		<!-- Footer -->
		<footer id="footer"> </footer>

	</div>

	<!-- BG -->
	<div id="bg"></div>

	<!-- Scripts -->
	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/browser.min.js"></script>
	<script src="resources/js/breakpoints.min.js"></script>
	<script src="resources/js/util.js"></script>
	<script src="resources/js/main.js"></script>

</body>
</html>