
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
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
$(document).ready(function() {
/* 	var checkAll = $('.checkAll');

	showGPSInfo = localStorage['showGPSInfo'] || false;
	showGPSInfo = showGPSInfo === "true";

	var checkAll = $(".checkAll");
	checkAll.prop('checked', showGPSInfo);

	checkAll.change(function() {
		showGPSInfo = !!checkAll.is(":checked");
		localStorage['showGPSInfo'] = showGPSInfo;
	}); */
	
});

function checkAll() {
/* 	var checkAll = $('.checkAll');
	checkAll.change(function() {
		showGPSInfo = !!checkAll.is(":checked");
		localStorage['showGPSInfo'] = showGPSInfo;
	}); */

	if ($('.checkAll').is(":checked")) {
		$(".checkEach").prop("checked", true);
		$.ajax({
			type : "post",
			url : "/web/myAjax2.do",
			data : {
				"status" : "1"
			}
		});
	} else {
		$(".checkEach").prop("checked", false);
		$.ajax({
			type : "post",
			url : "/web/myAjax2.do",
			data : {
				"status" : "0"
			}
		});

	}
}
function checkBox(a) {
	var boardOrgIdx = $(a).prev().attr('value');
	console.log(boardOrgIdx);
	var b = $(a);
	if (b.is(":checked")) {
		$.ajax({
			type : "post",
			url : "/web/myAjax3.do",
			data : {
				"status" : "1",
				"boardOrgIdx" : boardOrgIdx
			}
		});
	} else {
		$.ajax({
			type : "post",
			url : "/web/myAjax3.do",
			data : {
				"status" : "0",
				"boardOrgIdx" : boardOrgIdx
			}
		});
	}
}

</script>
</head>
<body>
	<div id="app">
		<div class="layout bg-darkest">
			<nav
				class="navbar d-block m-0 p-0 position-fixed w-100 navbar-light bg-transparent navbar-expand-lg"
				style="z-index: 2000;">
				<div style="background: rgba(15, 25, 46, 0.5);">
					<div class="justify-content-between py-2 container-fluid"
						style="height: 75px;">
						<a href="/web/list.do" class="navbar-brand m-0 d-none d-md-block"
							target="_self" style="display: none;"> <img
							src="/_img/logo.1829973f.svg" alt=""></a> <span
							class="d-none d-md-block text-uppercase text-18 fw-400 text-varela router-link-active text-white"
							style="cursor: pointer;"></span> <i
							class="dot d-none d-md-block rounded-circle bg-dark"
							style="width: 4px; height: 4px;"></i> <i
							class="dot d-none d-md-block rounded-circle bg-dark"
							style="width: 4px; height: 4px;"></i> <span
							class="d-none d-md-block text-uppercase text-14 fw-400 text-varela router-link-active text-white"
							style="cursor: pointer;"> <a href="javascript:void(0);"
							class="pink"> 회원관리</a>
							<ul class="depth" style="display: none;">
								<li><a href="/kabadm/user/userList.do" class="on">사용자승인</a></li>
							</ul>
						</span> <span
							class="d-none d-md-block text-uppercase text-14 fw-400 text-varela text-white"
							style="cursor: pointer;"><a href="/web/list.do"
							class="pink"> 게시판관리</a>
							<ul class="depth" style="display: none;">
								<li><a href="/kabadm/board/boardList.do?bbsDiv=notices">공지사항</a></li>
								<li><a href="/kabadm/board/boardList.do?bbsDiv=qna">Q&amp;A</a></li>
								<li><a href="/kabadm/board/boardList.do?bbsDiv=faq">FAQ</a></li>
							</ul></span>
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
		</div>
		<img data-v-0911bb43="" src="/_img/bg-top.c9fbe891.svg"
			class="position-absolute top-0 left-0 w-100 mt-5"
			style="opacity: 0.5;">
		<div class="layout-body">
			<div data-v-768bc943="" class="min-vh-100" style="padding-top: 75px;">
				<div data-v-768bc943="" class="position-realtive">
					<div data-v-768bc943="" class="d-none d-lg-block container">
						<header data-v-768bc943=""
							class="mt-4 py-4 d-md-flex align-items-center justify-content-center position-relative">
							<button href="" data-v-768bc943="" type="button"
								class="btn mx-4 px-2 py-3 btn-text rounded-0"
								style="color: rgb(240, 189, 206); border-bottom: 2px solid rgb(15, 25, 46);">
								사</button>
							<button data-v-768bc943="" type="button"
								class="btn mx-4 px-2 py-3 btn-text rounded-0"
								style="color: rgb(240, 189, 206); border-bottom: 2px solid rgb(15, 25, 46);">
								용</button>
							<button data-v-768bc943="" type="button"
								class="btn mx-4 px-2 py-3 btn-text rounded-0"
								style="color: rgb(240, 189, 206); border-bottom: 2px solid rgb(15, 25, 46);">
								자</button>
							<button data-v-768bc943="" type="button"
								class="btn mx-4 px-2 py-3 btn-text rounded-0"
								style="color: rgb(240, 189, 206); border-bottom: 2px solid rgb(15, 25, 46);">
								관</button>
							<button data-v-768bc943="" type="button"
								class="btn mx-4 px-2 py-3 btn-text rounded-0"
								style="color: rgb(240, 189, 206); border-bottom: 2px solid rgb(15, 25, 46);">
								리</button>
							<!-- 								<button data-v-768bc943="" type="button" class="btn mx-4 px-2 py-3 btn-text rounded-0" style="color: rgb(240, 189, 206); border-bottom: 2px solid rgb(15, 25, 46);">
									C</button>
								<button data-v-768bc943="" type="button" class="btn mx-4 px-2 py-3 btn-text rounded-0" style="color: rgb(240, 189, 206); border-bottom: 2px solid rgb(15, 25, 46);">
									T</button> -->
						</header>
						<div data-v-768bc943=""
							class="VueCarousel gallery mt-4 w-100 h-100"
							style="scroll-behavior: smooth;">
							<table class="table01" summary="list">
								<colgroup>
									<col width="10%">
									<col width="15%">
									<col width="30%">
									<col width="30%">
									<col width="15%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">순번</th>
										<th scope="col">ID</th>
										<th scope="col">이름</th>
										<th scope="col">이메일</th>
										<th scope="col">전체 선택&nbsp;<input class="checkAll" type="checkbox"
											name="mych" onclick="checkAll()"></th>
									</tr>
								</thead>
								<tbody>
										<c:choose>
											<c:when test="${fn:length(resultVO) > 0}">								
									<c:forEach items="${resultVO}" var="resultVO" varStatus="status">
										<input type="hidden" value="${resultVO.orgIdx2}" />
										<tr style="cursor: pointer;">
											<td>${paginationInfo.totalRecordCount - (((libraryVO.pageIndex) - 1) * libraryVO.pageUnit) - status.count + 1}</td>
											<td>${resultVO.orgId2}</td>
											<td>${resultVO.orgName2}</td>
											<td>${resultVO.orgEmail2}</td>
											<c:if test='${resultVO.status=="1"}'>
											<td class="mine2"><input type="hidden" class="myInx"
												name="boardOrgIdx" value="${resultVO.orgIdx2}" /> <input
												class="checkEach" type="checkbox" name="mych"
												onclick="checkBox(this);" checked></td>													
											</c:if>
											<c:if test='${resultVO.status=="0"}'>
											<td class="mine2"><input type="hidden" class="myInx"
												name="boardOrgIdx" value="${resultVO.orgIdx2}" /> <input
												class="checkEach" type="checkbox" name="mych"
												onclick="checkBox(this);"></td>												
											</c:if>
										</tr>
									</c:forEach>
									</c:when>
									<c:otherwise>
									<tr class="no_cont">
										<td colspan="5">등록(검색)된 자료가 없습니다.</td>
									</tr>
									</c:otherwise>
									</c:choose>								
<%-- 										<c:choose>
											<c:when test="${fn:length(list) > 0}">								
									<c:forEach items="${list}" var="resultInfo" varStatus="status">
										<input type="hidden" value="${resultInfo.boardIdx}" />
										<tr style="cursor: pointer;">
											<td>${paginationInfo.totalRecordCount - (((libraryVO.pageIndex) - 1) * libraryVO.pageUnit) - status.count + 1}</td>
											<td>${resultInfo.boardName}</td>
											<td>${resultInfo.boardContent}</td>
											<td>${resultInfo.boardEmail}</td>
											<c:if test='${resultInfo.userStatus=="1"}'>
											<td class="mine2"><input type="hidden" class="myInx"
												name="orgIdx" value="${resultInfo.boardOrgIdx}" /> <input
												class="checkEach" type="checkbox" name="mych"
												onclick="checkBox(this);" checked></td>													
											</c:if>
											<c:if test='${resultInfo.userStatus=="0"}'>
											<td class="mine2"><input type="hidden" class="myInx"
												name="orgIdx" value="${resultInfo.boardOrgIdx}" /> <input
												class="checkEach" type="checkbox" name="mych"
												onclick="checkBox(this);"></td>												
											</c:if>
										</tr>
									</c:forEach>
									</c:when>
									<c:otherwise>
									<tr class="no_cont">
										<td colspan="5">등록(검색)된 자료가 없습니다.</td>
									</tr>
									</c:otherwise>
									</c:choose> --%>
								</tbody>
							</table>


<%-- 								<p class="pn">
								<ui:pagination paginationInfo="${paginationInfo}" type="image" jsFunction="fnLinkPage"/>
								</p> --%>




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




							<!-- 								<div class="myclass">
									<button class="mybutton" onclick="javascript=goWrite()">프로젝트
										등록</button>
								</div>	 -->
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>