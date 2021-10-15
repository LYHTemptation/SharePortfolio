      <%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta name="theme-color" content="#0f192e">
    <meta name="title" content="2021 건국대학교 이윤호">
    <meta name="description" content="2021 건국대학교 이윤호">
    <meta property="og:image" content="https://kku-2021.s3.ap-northeast-2.amazonaws.com/ogimage.png">
    <meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
    <title>2021 건국대학교 이윤호</title>
    <link href="/_css/web/app.982e1a75.css" rel="preload" as="style">
    <link href="/_css/web/chunk-vendors.096ddd0e.css" rel="preload" as="style">
    <link href="/_js/app.33cc59e9.js" rel="preload" as="script">
    <link href="/_js/chunk-vendors.00854387.js" rel="preload" as="script">
    <link href="/_css/web/chunk-vendors.096ddd0e.css" rel="stylesheet">
    <link href="/_css/web/app.982e1a75.css" rel="stylesheet">
    <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    <script>
    
	function modify(){
		$("#frm").attr("action","/web/goWrite.do");
		$("#frm").submit();
	}
	
	function del(){
		$("#frm").attr("action","/web/delete.do");
		$("#frm").submit();
	}
	function golist(){
		$("#frm").attr("action","/web/list.do");
		$("#frm").submit();
	}
    
    </script>
</head>
    <body>
    <div class="layout bg-darkest">
    <nav
        class="navbar d-block m-0 p-0 position-fixed w-100 navbar-light bg-transparent navbar-expand-lg"
        style="z-index: 2000;">
        <div style="background: rgba(15, 25, 46, 0.5);">
            <div class="justify-content-between py-2 container-fluid" style="height: 75px;">
                <a href="/web/list.do"
                    class="navbar-brand m-0 d-none d-md-block"
                    target="_self"
                    style="display: none;">
                    <img src="/_img/logo.1829973f.svg" alt=""></a>
                    <span
                        class="d-none d-md-block text-uppercase text-18 fw-400 text-varela text-dark"
                        style="cursor: pointer;">
                    </span>
                    <span
                        class="d-none d-md-block text-uppercase text-18 fw-400 text-varela router-link-active text-dark"
                        style="cursor: pointer;">
                    </span>
                    <span
                        class="d-none d-md-block text-uppercase text-18 fw-400 text-varela text-dark"
                        style="cursor: pointer;">
                    </span>
                    <button
                        type="button"
                        class="btn ml-auto mr-0 p-0 position-relative d-block d-md-none btn-transparant"
                        style="z-index: 2020;">
                        <div class="hbg-btn">
                            <span class="hbg-line"></span>
                            <span class="hbg-line"></span>
                            <span class="hbg-line"></span>
                        </div>
                    </button>
                    <!---->
                </div>
            </div>
        </nav>
        <form id="frm" action="/web/list.do" method="post" enctype="multipart/form-data">
        <input type="hidden" id="boardIdx" name="boardIdx" value="${result.boardIdx }">
        <input type="hidden" id="boardName" name="boardName" value="${result.boardName }">
        <input type="hidden" id="boardEmail" name="boardEmail" value="${ result.boardEmail }">
        <input type="hidden" id="boardNumber" name="boardNumber" value="${result.boardNumber}">
        <input type="hidden" id="boardContent" name="boardContent" value="${result.boardContent }">
		<input type="hidden" name="usrFile" value="${result.usrFile}"/> 
		<input type="hidden" name="srvFile" value="${result.srvFile}"/> 
        <div class="layout-body">
            <div
                data-v-0911bb43=""
                class="pb-5 mx-3 position-relative"
                style="padding-top: 75px;">
                <img
                    data-v-0911bb43=""
                    src="/_img/bg-top.c9fbe891.svg"
                    class="position-absolute top-0 left-0 w-100 mt-5"
                    style="opacity: 0.5;">
                    <div
                        data-v-0911bb43=""
                        class="container-paper bg-white my-4 pb-5 position-relative container-fluid">
                        <img
                            data-v-0911bb43=""
                            src="/_img/tip.6efe1856.svg"
                            class="position-absolute left-0 top-0 ml-n1 mt-n1"
                            style="width: 6rem;">
                            <div data-v-0911bb43="" class="py-5">
                                <div
                                    data-v-0911bb43=""
                                    class="row p-0 p-lg-5 flex-row-reverse flex-md-row align-items-end">
                                    <div data-v-0911bb43=""
                                        class="mt-5 pt-md-5 pr-lg-5 col-lg-4 order-lg-1 col-12 order-2 mine">
                                        <h3 data-v-0911bb43="" class="mt-5 mb-lg-4 fw-700 text-24">포트폴리오
                                        </h3>
                                        <div
                                            data-v-0911bb43=""
                                            class="row work-title py-2 text-14 text-lg-16 text-dark"
                                            style="border-bottom: 3px solid rgb(15, 25, 46);">
                                            <div data-v-0911bb43="" class="col-md-6 col-3">Name</div>
                                            <div data-v-0911bb43="" class="col-md-6 col-9">
                                                <!---->
                                                <span data-v-0911bb43="">
                                                    ${result.boardName}
                                                </span>
                                            </div>
                                        </div>
                                        <div
                                            data-v-0911bb43=""
                                            class="row py-2 text-14 text-lg-16 text-dark border-bottom border-darkest">
                                            <div data-v-0911bb43="" class="col-md-6 col-3">Number</div>
                                            <div data-v-0911bb43="" class="col-md-6 col-9">
                                                <span data-v-0911bb43="" class="text-e">
                                                     ${result.boardNumber}
                                                </span>
                                            </div>
                                        </div>
                                        <div
                                            data-v-0911bb43=""
                                            class="row py-2 text-14 text-lg-16 text-dark border-bottom border-darkest">
                                            <div data-v-0911bb43="" class="col-md-6 col-3">E-mail</div>
                                            <div data-v-0911bb43="" class="col-md-6 col-9">
                                                <span data-v-0911bb43="" class="text-e">
                                                     ${result.boardEmail}
                                                </span>
                                            </div>
                                        </div>
                                        <div data-v-0911bb43="" class="row mt-3">
                                            <div data-v-0911bb43="" class="col-12">
                                                <div data-v-0911bb43="" class="work-desc">
                                                    <p data-v-0911bb43="" class=" p-4 text-14 text-lg-16 text-dark lh-180">
                                                        ${result.boardContent}
                                                        <!---->
                                                    </p>
                                                    <!---->
                                                </div>
                                                <button
                                                    data-v-0911bb43=""
                                                    type="button"
                                                    class="btn link-dark mt-3 p-0 btn-transparant mb-3" style="cursor:pointer;" onclick="golist();">
                                                    &lt; 목록 &gt;
                                                </button>
                                                
                                                <c:choose>
                                                <c:when test='${orgIdx==null}'>
                                                </c:when>
                                                <c:otherwise>
                                                <c:if test='${result.boardOrgIdx==orgIdx || orgIdx=="1" }'>
                                                <button
                                                    data-v-0911bb43=""
                                                    type="button"
                                                    class="btn link-dark mt-3 p-0 btn-transparant mb-3" style="cursor:pointer;" onclick="modify();">
                                                    &lt; 수정 &gt;
                                                </button>
                                                </c:if>                                                
                                                </c:otherwise>
                                                </c:choose>
                                                
<!--                                                 <button
                                                    data-v-0911bb43=""
                                                    type="button"
                                                    class="btn link-dark mt-3 p-0 btn-transparant mb-3" onclick="del();">
                                                    &lt; 삭제 &gt;
                                                </button> -->
                                                
                                                
                                                
                                            </div>
                                        </div>
                                    </div>
                                    <div
                                        data-v-0911bb43=""
                                        class="mt-4 mt-lg-0 px-0 pl-lg-5 col-lg-8 order-lg-2 col-12 order-1">
                                        <div
                                            data-v-0911bb43=""
                                            class="VueCarousel carousel position-relative mt-5 mt-lg-0">
                                            <div class="VueCarousel-wrapper">
                                                <div
                                                    class="VueCarousel-inner"
                                                    style="transform: translate(0px, 0px); transition: transform 0.5s ease 0s; flex-basis: 981px; visibility: visible; height: auto;">
                                            		<c:url value="/fileDownload.do" var="fileUrl">
														<c:param name="srvFile" value="${result.srvFile}" />
														<c:param name="usrFile" value="${result.usrFile}" />
													</c:url>
		                                                <div
                                                        data-v-0911bb43=""
                                                        tabindex="-1"
                                                        role="tabpanel"
                                                        class="VueCarousel-slide VueCarousel-slide-active VueCarousel-slide-center">
                                                        <div
                                                            data-v-0911bb43=""
                                                            class="bg-img  w-100 ratio-67"
                                                            style="background-image: url('${fileUrl}'); background-size: cover;"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- <div data-v-453ad8cd="" class="VueCarousel-navigation">
                                                <button
                                                    data-v-453ad8cd=""
                                                    type="button"
                                                    aria-label="Previous page"
                                                    tabindex="-1"
                                                    class="VueCarousel-navigation-button VueCarousel-navigation-prev VueCarousel-navigation--disabled"
                                                    style="padding: 12px; margin-right: -12px;">
                                                    <b-btn class="mr-n5 p-0">
                                                        <i class="icon icon-32 icon-prev mt-n5 mb-3 mr-n4 my-md-0 mr-md-n5"></i>
                                                    </b-btn>
                                                </button>
                                                <button
                                                    data-v-453ad8cd=""
                                                    type="button"
                                                    aria-label="Next page"
                                                    tabindex="0"
                                                    class="VueCarousel-navigation-button VueCarousel-navigation-next"
                                                    style="padding: 12px; margin-left: -12px;">
                                                    <b-btn class="ml-n5 p-0">
                                                        <i class="icon icon-32 icon-next mt-n5 mb-3 ml-n4 my-md-0 ml-md-n5"></i>
                                                    </b-btn>
                                                </button>
                                            </div> -->
                                            <!-- <div data-v-438fd353="" class="VueCarousel-pagination" style="">
                                                <div
                                                    data-v-438fd353=""
                                                    role="tablist"
                                                    class="VueCarousel-dot-container"
                                                    style="margin-top: 12px;">
                                                    <button
                                                        data-v-438fd353=""
                                                        aria-hidden="false"
                                                        role="tab"
                                                        title="Item 0"
                                                        value="Item 0"
                                                        aria-label="Item 0"
                                                        aria-selected="true"
                                                        class="VueCarousel-dot VueCarousel-dot--active"
                                                        style="margin-top: 12px; padding: 6px; width: 12px; height: 12px; background-color: rgb(147, 147, 147);"></button>
                                                    <button
                                                        data-v-438fd353=""
                                                        aria-hidden="false"
                                                        role="tab"
                                                        title="Item 1"
                                                        value="Item 1"
                                                        aria-label="Item 1"
                                                        aria-selected="false"
                                                        class="VueCarousel-dot"
                                                        style="margin-top: 12px; padding: 6px; width: 12px; height: 12px; background-color: rgb(211, 211, 211);"></button>
                                                    <button
                                                        data-v-438fd353=""
                                                        aria-hidden="false"
                                                        role="tab"
                                                        title="Item 2"
                                                        value="Item 2"
                                                        aria-label="Item 2"
                                                        aria-selected="false"
                                                        class="VueCarousel-dot"
                                                        style="margin-top: 12px; padding: 6px; width: 12px; height: 12px; background-color: rgb(211, 211, 211);"></button>
                                                    <button
                                                        data-v-438fd353=""
                                                        aria-hidden="false"
                                                        role="tab"
                                                        title="Item 3"
                                                        value="Item 3"
                                                        aria-label="Item 3"
                                                        aria-selected="false"
                                                        class="VueCarousel-dot"
                                                        style="margin-top: 12px; padding: 6px; width: 12px; height: 12px; background-color: rgb(211, 211, 211);"></button>
                                                    <button
                                                        data-v-438fd353=""
                                                        aria-hidden="false"
                                                        role="tab"
                                                        title="Item 4"
                                                        value="Item 4"
                                                        aria-label="Item 4"
                                                        aria-selected="false"
                                                        class="VueCarousel-dot"
                                                        style="margin-top: 12px; padding: 6px; width: 12px; height: 12px; background-color: rgb(211, 211, 211);"></button>
                                                    <button
                                                        data-v-438fd353=""
                                                        aria-hidden="false"
                                                        role="tab"
                                                        title="Item 5"
                                                        value="Item 5"
                                                        aria-label="Item 5"
                                                        aria-selected="false"
                                                        class="VueCarousel-dot"
                                                        style="margin-top: 12px; padding: 6px; width: 12px; height: 12px; background-color: rgb(211, 211, 211);"></button>
                                                    <button
                                                        data-v-438fd353=""
                                                        aria-hidden="false"
                                                        role="tab"
                                                        title="Item 6"
                                                        value="Item 6"
                                                        aria-label="Item 6"
                                                        aria-selected="false"
                                                        class="VueCarousel-dot"
                                                        style="margin-top: 12px; padding: 6px; width: 12px; height: 12px; background-color: rgb(211, 211, 211);"></button>
                                                    <button
                                                        data-v-438fd353=""
                                                        aria-hidden="false"
                                                        role="tab"
                                                        title="Item 7"
                                                        value="Item 7"
                                                        aria-label="Item 7"
                                                        aria-selected="false"
                                                        class="VueCarousel-dot"
                                                        style="margin-top: 12px; padding: 6px; width: 12px; height: 12px; background-color: rgb(211, 211, 211);"></button>
                                                    <button
                                                        data-v-438fd353=""
                                                        aria-hidden="false"
                                                        role="tab"
                                                        title="Item 8"
                                                        value="Item 8"
                                                        aria-label="Item 8"
                                                        aria-selected="false"
                                                        class="VueCarousel-dot"
                                                        style="margin-top: 12px; padding: 6px; width: 12px; height: 12px; background-color: rgb(211, 211, 211);"></button>
                                                    <button
                                                        data-v-438fd353=""
                                                        aria-hidden="false"
                                                        role="tab"
                                                        title="Item 9"
                                                        value="Item 9"
                                                        aria-label="Item 9"
                                                        aria-selected="false"
                                                        class="VueCarousel-dot"
                                                        style="margin-top: 12px; padding: 6px; width: 12px; height: 12px; background-color: rgb(211, 211, 211);"></button>
                                                </div>
                                            </div> -->
                                        </div>
                                    </div>
                                    <!---->
                                    <!---->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </form>
                <footer
                    class="d-none d-md-block position-fixed text-primary-dark text-14"
                    style="right: 6rem; bottom: 1rem; z-index: 1990;">
                    <div class="d-flex container-fluid">
                        <span class="mx-0">
                            건국대학교 이윤호
                        </span>
                        <button type="button" class="btn mx-5 p-0 text-primary btn-transparant">
                            <i class="icon icon-18 icon-instagram mr-2 mb-n1"></i>
                            2021_kku_vd
                        </button>
                        <img
                            src="/_img/school-logo.57531ae7.svg"
                            alt=""
                            class="mt-n1"
                            style="width: 6rem;"></div>
                    </footer>
                </div>
             </body>