
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">


<meta name="theme-color" content="#0f192e">
<meta name="title" content="2021 건국대학교 이윤호">
<meta name="description" content="2021 건국대학교 이윤호">
<meta property="og:image"
	content="https://kku-2021.s3.ap-northeast-2.amazonaws.com/ogimage.png">



<meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
<title>2021 건국대학교 이윤호</title>
<link href="/_css/web/app.982e1a75.css" rel="preload" as="style">
<link href="/_css/web/chunk-vendors.096ddd0e.css" rel="preload"
	as="style">
<link href="/_js/app.33cc59e9.js" rel="preload" as="script">
<link href="/_js/chunk-vendors.00854387.js" rel="preload" as="script">
<link href="/_css/web/chunk-vendors.096ddd0e.css" rel="stylesheet">
<link href="/_css/web/app.982e1a75.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">

<style type="text/css">
.VueCarousel-navigation-button[data-v-453ad8cd] {
	position: absolute;
	top: 50%;
	box-sizing: border-box;
	color: #000;
	text-decoration: none;
	appearance: none;
	border: none;
	background-color: transparent;
	padding: 0;
	cursor: pointer;
	outline: none;
}

.VueCarousel-navigation-button[data-v-453ad8cd]:focus {
	outline: 1px solid lightblue;
}

.VueCarousel-navigation-next[data-v-453ad8cd] {
	right: 0;
	transform: translateY(-50%) translateX(100%);
	font-family: "system";
}

.VueCarousel-navigation-prev[data-v-453ad8cd] {
	left: 0;
	transform: translateY(-50%) translateX(-100%);
	font-family: "system";
}

.VueCarousel-navigation--disabled[data-v-453ad8cd] {
	opacity: 0.5;
	cursor: default;
}

/* Define the "system" font family */
@font-face {
	font-family: system;
	font-style: normal;
	font-weight: 300;
	src: local(".SFNSText-Light"),
		local(".HelveticaNeueDeskInterface-Light"), local(".LucidaGrandeUI"),
		local("Ubuntu Light"), local("Segoe UI Symbol"), local("Roboto-Light"),
		local("DroidSans"), local("Tahoma");
}
</style>
<style type="text/css">
.VueCarousel-pagination[data-v-438fd353] {
	width: 100%;
	text-align: center;
}

.VueCarousel-pagination--top-overlay[data-v-438fd353] {
	position: absolute;
	top: 0;
}

.VueCarousel-pagination--bottom-overlay[data-v-438fd353] {
	position: absolute;
	bottom: 0;
}

.VueCarousel-dot-container[data-v-438fd353] {
	display: inline-block;
	margin: 0 auto;
	padding: 0;
}

.VueCarousel-dot[data-v-438fd353] {
	display: inline-block;
	cursor: pointer;
	appearance: none;
	border: none;
	background-clip: content-box;
	box-sizing: content-box;
	padding: 0;
	border-radius: 100%;
	outline: none;
}

.VueCarousel-dot[data-v-438fd353]:focus {
	outline: 1px solid lightblue;
}
</style>
<style type="text/css">
.VueCarousel-slide {
	flex-basis: inherit;
	flex-grow: 0;
	flex-shrink: 0;
	user-select: none;
	backface-visibility: hidden;
	-webkit-touch-callout: none;
	-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
	outline: none;
}

.VueCarousel-slide-adjustableHeight {
	display: table;
	flex-basis: auto;
	width: 100%;
}
</style>
<style type="text/css">
.VueCarousel {
	display: flex;
	flex-direction: column;
	position: relative;
}

.VueCarousel--reverse {
	flex-direction: column-reverse;
}

.VueCarousel-wrapper {
	width: 100%;
	position: relative;
	overflow: hidden;
}

.VueCarousel-inner {
	display: flex;
	flex-direction: row;
	backface-visibility: hidden;
}

.VueCarousel-inner--center {
	justify-content: center;
}
</style>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
	$(document).ready(function() {
		console.log('${userStatus}');
		console.log('${ID}');
		 var data ='${orgIdx}';
		 if(data==null){
			 console.log("null");
		 }else{
			 console.log("not null");
		 }
		 
			$('.test1').mouseover(function(){
				var display = $(this).children().children('div[id^="mine"]').end();
				display.eq(0).attr('style','bottom: 1rem; left: 50%; transform: translate(-50%, 0%) skew(-8deg); z-index: 3; transition: all 0.4s ease 0s; display: block !important;');
				display.eq(1).attr('style','top: 0px; left: 0px; background: rgb(0, 0, 0); opacity: 0.3; transition: all 0.4s ease 0s; display:block !important;');
			});
			
			$('.test1').mouseout( function(){
				var display = $(this).children().children('div[id^="mine"]').end();
				display.eq(0).attr('style','bottom: 1rem; left: 50%; transform: translate(-50%, 0%) skew(-8deg); z-index: 3; transition: all 0.4s ease 0s; display: none !important;');
				display.eq(1).attr('style','top: 0px; left: 0px; background: rgb(0, 0, 0); opacity: 0.3; transition: all 0.4s ease 0s; display:none !important;');
			});  
		 
		 
	});
	function goWrite() {
		location.href = "/web/goWrite.do";
	}
	
	function gologin(){
		alert("로그인해주세요");
		
	}
	
	function goWait(){
		alert("관리자가 승인을 하지 않았습니다.");
	}
	
</script>
</head>

<body>
	<noscript>
		<strong>We're sorry but kku-2021 doesn't work properly
			without JavaScript enabled. Please enable it to continue.</strong>
	</noscript>
	<div id="app">
		<div class="layout bg-darkest">
		
		<!-- 관리자페이지 -->
		<c:choose>
		<c:when test= "${orgIdx!=null}" >
			<nav class="navbar d-block m-0 p-0 position-fixed w-100 navbar-light bg-transparent navbar-expand-lg"
				style="z-index: 2000;">
				<div style="background: rgba(15, 25, 46, 0.5);">
					<div class="justify-content-between py-2 container-fluid"
						style="height: 75px;">
						<a href="/web/list.do" class="navbar-brand m-0 d-none d-md-block"
							target="_self" style="display: none;"> <img
							src="/_img/logo.1829973f.svg" alt=""></a>
						<span class="d-none d-md-block text-uppercase text-18 fw-400 text-varela router-link-active text-white"
							style="cursor: pointer;"></span>
							<i class="dot d-none d-md-block rounded-circle bg-dark"
							style="width: 4px; height: 4px;"></i>
							<i class="dot d-none d-md-block rounded-circle bg-dark"
							style="width: 4px; height: 4px;"></i>
							<span class="d-none d-md-block text-uppercase text-14 fw-400 text-varela router-link-active text-white"
							style="cursor: pointer;"><span style="color:#6EBAC2;">${ID}&nbsp;님</span><a href="/web/logoutAction.do" class="pink"> 로그아웃  </a></span>
							
							<c:if test='${orgIdx=="1"}'>
							<span class="d-none d-md-block text-uppercase text-14 fw-400 text-varela text-white"
							style="cursor: pointer;"><a href="/web/admin.do" class="pink"> 관리자 페이지</a></span>
							</c:if>
							<c:if test='${orgIdx!="1"}'>
														<span class="d-none d-md-block text-uppercase text-14 fw-400 text-varela text-white"
							style="cursor: pointer;"><a href="" class="pink"> 공지사항</a></span>
							</c:if>
						<button type="button"
							class="btn ml-auto mr-0 p-0 position-relative d-block d-md-none btn-transparant"
							style="z-index: 2020;">
							<div class="hbg-btn">
								<span class="hbg-line"></span><span class="hbg-line"></span><span
									class="hbg-line"></span>
							</div>
						</button>
						<!---->
					</div>
				</div>
			</nav>
		</c:when>
		<c:otherwise>
			<nav
				class="navbar d-block m-0 p-0 position-fixed w-100 navbar-light bg-transparent navbar-expand-lg"
				style="z-index: 2000;">
				<div style="background: rgba(15, 25, 46, 0.5);">
					<div class="justify-content-between py-2 container-fluid"
						style="height: 75px;">
						<a href="/web/list.do" class="navbar-brand m-0 d-none d-md-block"
							target="_self" style="display: none;"> <img
							src="/_img/logo.1829973f.svg" alt=""></a>
						<div class="m-0 d-block d-md-none">
							<button type="button" class="btn p-0 btn-text">
								<i class="icon icon-back icon-20"></i>
							</button>
							<h6 class="text-white position-absolute mt-n4 mb-0"
								style="left: 50%; transform: translateX(-50%);">인터렉션디자인</h6>
						</div>
						<i class="dot d-none d-md-block rounded-circle bg-dark"
							style="width: 4px; height: 4px;"></i> <span
							class="d-none d-md-block text-uppercase text-18 fw-400 text-varela text-dark"
							style="cursor: pointer;"> </span>
							<i class="dot d-none d-md-block rounded-circle bg-dark"
							style="width: 4px; height: 4px;"></i>
							<span class="d-none d-md-block text-uppercase text-14 fw-400 text-varela router-link-active text-white"
							style="cursor: pointer;"><a href="/web/login.do" class="pink"> 로그인</a></span>
							<span class="d-none d-md-block text-uppercase text-14 fw-400 text-varela text-white"
							style="cursor: pointer;"><a href="/web/joinAgree.do" class="pink"> 회원가입</a></span>
						<button type="button"
							class="btn ml-auto mr-0 p-0 position-relative d-block d-md-none btn-transparant"
							style="z-index: 2020;">
							<div class="hbg-btn">
								<span class="hbg-line"></span><span class="hbg-line"></span><span
									class="hbg-line"></span>
							</div>
						</button>
						<!---->
					</div>
				</div>
			</nav>
		</c:otherwise>
		</c:choose>
		<img data-v-0911bb43="" src="/_img/bg-top.c9fbe891.svg" class="position-absolute top-0 left-0 w-100 mt-5" style="opacity: 0.5;">
			<div class="layout-body">
				<div data-v-768bc943="" class="min-vh-100"
					style="padding-top: 75px;">
					<div data-v-768bc943="" class="position-realtive">
						<div data-v-768bc943="" class="d-none d-lg-block container">
							<header data-v-768bc943=""
								class="mt-4 py-4 d-md-flex align-items-center justify-content-center position-relative">
								<button href="" data-v-768bc943="" type="button"
									class="btn mx-4 px-2 py-3 btn-text rounded-0"
									style="color: rgb(240, 189, 206); border-bottom: 2px solid rgb(15, 25, 46);">
									P </button>
								<button data-v-768bc943="" type="button"
									class="btn mx-4 px-2 py-3 btn-text rounded-0"
									style="color: rgb(240, 189, 206); border-bottom: 2px solid rgb(15, 25, 46);">
									R</button>
								<button data-v-768bc943="" type="button"
									class="btn mx-4 px-2 py-3 btn-text rounded-0"
									style="color: rgb(240, 189, 206); border-bottom: 2px solid rgb(15, 25, 46);">
									O</button>
								<button data-v-768bc943="" type="button"
									class="btn mx-4 px-2 py-3 btn-text rounded-0"
									style="color: rgb(240, 189, 206); border-bottom: 2px solid rgb(15, 25, 46);">
									J</button>
								<button data-v-768bc943="" type="button"
									class="btn mx-4 px-2 py-3 btn-text rounded-0"
									style="color: rgb(240, 189, 206); border-bottom: 2px solid rgb(15, 25, 46);">
									E</button>
								<button data-v-768bc943="" type="button"
									class="btn mx-4 px-2 py-3 btn-text rounded-0"
									style="color: rgb(240, 189, 206); border-bottom: 2px solid rgb(15, 25, 46);">
									C</button>
								<button data-v-768bc943="" type="button"
									class="btn mx-4 px-2 py-3 btn-text rounded-0"
									style="color: rgb(240, 189, 206); border-bottom: 2px solid rgb(15, 25, 46);">
									T</button>
							</header>
							
							<div data-v-768bc943=""
								class="VueCarousel gallery mt-4 w-100 h-100"
								style="scroll-behavior: smooth;">
								<table class="table01" summary="list">
									<colgroup>
										<col width="10%">
										<col width="40%">
										<col width="25%">
										<col width="25%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">순번</th>
											<th scope="col">이름</th>
											<th scope="col">번호</th>
											<th scope="col">이메일</th>

										</tr>
									</thead>
									<tbody>

										<c:choose>
											<c:when test="${fn:length(list) > 0}">
												<c:forEach items="${list}" var="resultInfo" varStatus="status">
													<input type="hidden" value="${resultInfo.boardIdx} ${status.count} ${status.index}" />
													<tr style="cursor: pointer;"
														onclick="location.href='/web/goShow.do?boardIdx=${resultInfo.boardIdx}'">
														<td>${paginationInfo.totalRecordCount - (((libraryVO.pageIndex) - 1) * libraryVO.pageUnit) - status.count + 1}</td>
														<td>${resultInfo.boardName}</td>
														<td>${resultInfo.boardNumber}</td>
														<td>${resultInfo.boardEmail}</td>
													</tr>

												</c:forEach>
											</c:when>

											<c:otherwise>
												<tr class="no_cont">
													<td colspan="4">등록(검색)된 자료가 없습니다.</td>
												</tr>
											</c:otherwise>
										</c:choose>
									</tbody>
								</table>
								
								
								<p class="pn">
								<ui:pagination paginationInfo="${paginationInfo}" type="image" jsFunction="fnLinkPage"/>
								</p>




								<div data-v-438fd353="" class="VueCarousel-pagination" style="">
									<div data-v-438fd353="" role="tablist"
										class="VueCarousel-dot-container" style="margin-top: 12px;">
										<button data-v-438fd353="" aria-hidden="false" role="tab"
											title="Item 0" value="Item 0" aria-label="Item 0"
											aria-selected="true" class="VueCarousel-dot"
											style="margin-top: 12px; padding: 6px; width: 12px; height: 12px; background-color: rgb(240, 189, 206);"></button>
										<button data-v-438fd353="" aria-hidden="false" role="tab"
											title="Item 1" value="Item 1" aria-label="Item 1"
											aria-selected="false" class="VueCarousel-dot"
											style="margin-top: 12px; padding: 6px; width: 12px; height: 12px; background-color: rgb(240, 189, 206);"></button>
										<button data-v-438fd353="" aria-hidden="false" role="tab"
											title="Item 2" value="Item 2" aria-label="Item 2"
											aria-selected="false" class="VueCarousel-dot"
											style="margin-top: 12px; padding: 6px; width: 12px; height: 12px; background-color: rgb(240, 189, 206);"></button>
										<button data-v-438fd353="" aria-hidden="false" role="tab"
											title="Item 3" value="Item 3" aria-label="Item 3"
											aria-selected="false" class="VueCarousel-dot"
											style="margin-top: 12px; padding: 6px; width: 12px; height: 12px; background-color: rgb(240, 189, 206);"></button>
									</div>
								</div>
								
								<c:choose>
								<c:when test='${orgIdx==null}'>
								<div class="myclass">
									<button class="mybutton" onclick="javascript=gologin()">프로젝트
										등록</button>
								</div>										
								</c:when>
								<c:when test='${orgIdx=="1"}'>
									<div class="myclass">
										<button class="mybutton" onclick="javascript=goWrite()">프로젝트
											등록</button>
									</div>									
								</c:when>
								<c:when test='${orgIdx!="1" && userStatus=="0"}'>
									<div class="myclass">
										<button class="mybutton" onclick="javascript=goWait()">프로젝트
											등록</button>
									</div>									
								</c:when>
								<c:when test='${orgIdx!="1" && userStatus=="1"}'>
									<div class="myclass">
										<button class="mybutton" onclick="javascript=goWrite()">프로젝트
											등록</button>
									</div>									
								</c:when>								
								<c:otherwise>
								</c:otherwise>
								</c:choose>
								
								<div class="VueCarousel-inner"
									style="transform: translate(0px, 0px); transition: transform 0.5s ease 0s; flex-basis: 352.5px; visibility: visible; height: auto;">
									
									<c:forEach items="${list}" var="resultInfo" varStatus="status">
									<div data-v-768bc943="" tabindex="-1" aria-hidden="true"
										role="tabpanel" class="VueCarousel-slide work mb-2 px-1">
										
										<c:url value="/fileDownload.do" var="fileUrl">
											<c:param name="srvFile" value="${resultInfo.srvFile}" />
											<c:param name="usrFile" value="${resultInfo.usrFile}" />
										</c:url>
										<figure id="" data-v-768bc943=""
											class="mb-2 w-100 bg-img ratio-60 position-relative test1"
											style="background-image: url('${fileUrl}'); 
											cursor: pointer; background-size: cover; background-position: center center; background-repeat: no-repeat;"
											onclick="location.href='/web/goShow.do?boardIdx=${resultInfo.boardIdx}'">
											<div id="mine2" data-v-768bc943=""
												class="position-absolute text-white text-center w-100 px-3 d-none"
												style="bottom: 1rem; left: 50%; transform: translate(-50%, 0%) skew(-8deg); z-index: 3; transition: all 0.4s ease 0s; display:none !important;">
												<h6 data-v-768bc943=""
													class="text-lg-22 text-20 fw-700 mb-0">${resultInfo.boardContent}</h6>
												<!---->
												<span data-v-768bc943="">${resultInfo.boardName}</span>
											</div>
											<div id="mine3" data-v-768bc943=""
												class="dim position-absolute w-100 h-100 d-none"
												style="top: 0px; left: 0px; background: rgb(0, 0, 0); opacity: 0.3; transition: all 0.4s ease 0s; display:none !important;"></div>
										</figure>
										</div>
										</c:forEach>
										
										
								</div>
								</div>
						</div>
					</div>
				</div>
			</div>
			<footer
				class="d-none d-md-block position-fixed text-primary-dark text-14"
				style="right: 6rem; bottom: 1rem; z-index: 1990;">
				<div class="d-flex container-fluid">
					<span class="mx-0"> 건국대학교 이윤호 </span>
					<button type="button"
						class="btn mx-5 p-0 text-primary btn-transparant">
						<i class="icon icon-18 icon-instagram mr-2 mb-n1"></i> 2021_kku_vd
					</button>
					<img src="/_img/school-logo.57531ae7.svg" alt="" class="mt-n1"
						style="width: 6rem;">
				</div>
			</footer>
		</div>
	</div>
	<!--     <script src="/_js/chunk-vendors.00854387.js"></script>
    <script src="/_js/app.33cc59e9.js"></script> -->
</body>
<script>


	
/*  const figure = document.getElementsByClassName('mb-2 w-100 bg-img ratio-60 position-relative');
 const div = document.getElementsByClassName('position-absolute text-white text-center w-100 px-3 d-none');
 const div2 = document.getElementsByClassName('dim position-absolute w-100 h-100 d-none');
 
 for(var i=0; i<=figure.length; i++){
	 figure[i].onmouseover =  function(){
		 for(var a=0; a<=div.length;a++){
			 div[a].style.cssText ='bottom: 1rem; left: 50%; transform: translate(-50%, 0%) skew(-8deg); z-index: 3; transition: all 0.4s ease 0s; display: block !important;'
			 div2[a].style.cssText=" top: 0px; left: 0px; background: rgb(0, 0, 0); opacity: 0.3; transition: all 0.4s ease 0s; display:block !important;"
		 }
	};
	 figure[i].onmouseout = function(){
		 for(var a=0; a<=div.length;a++){
			 div[a].style.cssText ='bottom: 1rem; left: 50%; transform: translate(-50%, 0%) skew(-8deg); z-index: 3; transition: all 0.4s ease 0s; display: none !important;'
			 div2[a].style.cssText="top: 0px; left: 0px; background: rgb(0, 0, 0); opacity: 0.3; transition: all 0.4s ease 0s; display:none !important;"
		 }
	 };
 }  */
</script>