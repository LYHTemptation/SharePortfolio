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
    </head>
    <body>
     <div class="layout bg-darkest">
            <nav class="navbar d-block m-0 p-0 position-fixed w-100 navbar-light bg-transparent navbar-expand-lg"
                style="z-index: 2000;">
                <div style="background: rgba(15, 25, 46, 0.5);">
                    <div class="justify-content-between py-2 container-fluid" style="height: 75px;">
                    <a href="/web/main.do" class="navbar-brand m-0 d-none d-md-block" target="_self" style="display: none;">
                    <img src="/_img/logo.1829973f.svg" alt=""></a>
                        <div class="m-0 d-block d-md-none">
                        <button type="button" class="btn p-0 btn-text">
                        <i class="icon icon-back icon-20"></i></button>
                            <h6 class="text-white position-absolute mt-n4 mb-0" style="left: 50%; transform: translateX(-50%);"> 인터렉션디자인 </h6>
                        </div><i class="dot d-none d-md-block rounded-circle bg-dark" style="width: 4px; height: 4px;"></i>
                        <span class="d-none d-md-block text-uppercase text-18 fw-400 text-varela text-dark"
                            style="cursor: pointer;">  </span><i
                            class="dot d-none d-md-block rounded-circle bg-white"
                            style="width: 4px; height: 4px;"></i><span
                            class="d-none d-md-block text-uppercase text-18 fw-400 text-varela router-link-active text-white"
                            style="cursor: pointer;"> </span><i
                            class="dot d-none d-md-block rounded-circle bg-dark"
                            style="width: 4px; height: 4px;"></i><span
                            class="d-none d-md-block text-uppercase text-18 fw-400 text-varela text-dark"
                            style="cursor: pointer;">  </span><button type="button"
                            class="btn ml-auto mr-0 p-0 position-relative d-block d-md-none btn-transparant"
                            style="z-index: 2020;">
                            <div class="hbg-btn"><span class="hbg-line"></span><span class="hbg-line"></span><span
                                    class="hbg-line"></span></div>
                        </button>
                    </div>
                </div>
            </nav>
           </div>
    <form action="/web/mylist.do" method="post">
        <div class="mycontainer">
            <h2>Write YourSelf</h2>
                <div class="row100">
                    <div class="col">
                        <div class="inputbox">
                        <input type="text" id="name" class="name" name="boardName" required="required"/>
                        <span class="text">Name</span>
                        <span class="text"></span>
                    </div>
                </div>
            </div>
                <div class="row100">
                    <div class="col">
                        <div class="inputbox">
                        <input type="text" id="name" class="name" name="boardEmail" required="required"/>
                        <span class="text">Email</span>
                        <span class="text"></span>
                        </div>
                    </div>
                </div>
                <div class="row100">
                    <div class="col">
                        <div class="inputbox">
                        <input type="text" id="name" class="name" name="boardNumber" required="required"/>
                        <span class="text">Phone Number</span>
                        <span class="text"></span>
                        </div>
                    </div>
                </div>
                <div class="row100">
                    <div class="col">
                        <div class="inputbox">
                        <input type="text" id="name" class="name" name="boardContent" required="required"/>
                        <span class="text">Content</span>
                        <span class="text"></span>
                        </div>
                    </div>
                </div>
				<div class="row100">
                    <div class="col">
                        <div class="inputbox">
                        <input type="text" id="name" class="name" name="boardFn" required="required"/>
                        <span class="text">Add File</span>
                        <span class="text"></span>
                        </div>
                    </div>
                </div>
                <div class="row100">
                    <div class="col">
                        <div class="inputbox">
                        <input type="submit" class="submit" value="등록" >
                        <span class="text"></span>
                        <span class="text"></span>
                        </div>
                    </div>
                </div>
         </div>
    </form>
</body>
</html>
          