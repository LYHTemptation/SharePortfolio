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
		var userInputId = getCookie("userInputId");
		var IdSaveYn = getCookie("IdSaveYn");
		$(document).ready(function(){
			$("#id").val(userInputId);
			
			if(IdSaveYn != null && IdSaveYn == "Y"){
				$("#id_Ch").attr("checked","checked");
			}
			if($("#id").val()!=''){
				$("#password").focus();
			}
			
			$("input[type='text']").keyup(function(e) {
				if(e.keyCode == "13") {
					login();
				}
			});
			
			$("input[type='password']").keyup(function(e) {
				if(e.keyCode == "13") {
					login();
				}
			});
			
		});
		function login(){
			console.log($('#id').val());
			if($('#id').val()=="admin"){
				$("#frm").attr("action","/web/admin.do");
				$("#frm").submit();
			} else if(isCheck()){
				//아이디 저장 
				if($("#id_Ch").is(":checked")){
					var userInputId = $("#id").val();
					setCookie("userInputId",userInputId,60);
					setCookie("IdSaveYn","Y",60);
				}
				else{
					delCookie("userInputId");
					delCookie("IdSaveYn");
				}
				$("#frm").attr("action","/web/main.do");
				$("#frm").submit();
			}
		}
		function isCheck(){
			var isPass = true;
			if($("#id").val()==""){
				alert("아이디를 입력해주세요.");
				$("#id").focus();
				return isPass = false;
			}
			if($("#password").val()==""){
				alert("비밀번호를 입력해주세요.");
				$("#password").focus();
				return isPass = false;
			}
			return isPass;
		}
		
		
		
		function setCookie(cookieName, value, exdays){
			var exdate = new Date();
			exdate.setDate(exdate.getDate()+exdays);
			var cookieValue = escape(value) + ((exdays==null)? "":"; expires="+ exdate.toUTCString());
			document.cookie = cookieName +"="+ cookieValue;
		}
		
		function getCookie(cookieName){
			cookieName = cookieName + '=';
			var cookieData = document.cookie;
			var start = cookieData.indexOf(cookieName);
			var cookieValue = "";
			if(start != -1){
				start += cookieName.length;
				var end = cookieData.indexOf(';',start);
				if(end == -1){
					end = cookieData.length;
				}
				cookieValue = cookieData.substring(start, end);
			}
			return unescape(cookieValue);
		}
		
		function delCookie(cookieName){
			var exdate = new Date();
			exdate.setDate(exdate.getDate() - 1);
			document.cookie = cookieName +"="+ "; expires="+exdate.toUTCString();
		}
    
    </script>
    
    </head>
    <body>
     <div class="layout bg-darkest">
            <nav class="navbar d-block m-0 p-0 position-fixed w-100 navbar-light bg-transparent navbar-expand-lg"
                style="z-index: 2000;">
                <div style="background: rgba(15, 25, 46, 0.5);">
                    <div class="justify-content-between py-2 container-fluid" style="height: 75px;">
                    <a href="/web/list.do" class="navbar-brand m-0 d-none d-md-block" target="_self" style="display: none;">
                    <img src="/_img/logo.1829973f.svg" alt=""></a>
                        <div class="m-0 d-block d-md-none">
                        <button type="button" class="btn p-0 btn-text">
                        <i class="icon icon-back icon-20"></i></button>
                            <h6 class="text-white position-absolute mt-n4 mb-0" style="left: 50%; transform: translateX(-50%);"> 인터렉션디자인 </h6>
                        </div>
                        <span class="d-none d-md-block text-uppercase text-18 fw-400 text-varela text-dark"
                            style="cursor: pointer;">  </span><span
                            class="d-none d-md-block text-uppercase text-18 fw-400 text-varela router-link-active text-white"
                            style="cursor: pointer;"> </span><span
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
            <img data-v-0911bb43="" src="/_img/bg-top.c9fbe891.svg" class="position-absolute top-0 left-0 w-100 mt-5" style="opacity: 0.5;">
        <div id="login_main" style="z-index: 980;">
		<h3><img src="/_img/school-logo.57531ae7.svg" alt="위드시스템"></h3>
		<form name="loginForm" id="frm" action="/web/login.do" method="post">
		<input type="hidden" name="message" id="message" value="">			
		<input type="hidden" name="mode" id="mode" value="">
		<input type="hidden" name="url" id="url" value="">
			<table class="login_ta">
				<colgroup><col width="73px"><col width=""><col width="109px"></colgroup>
				<tbody><tr>
					<th class='colortext'>아이디</th>
					<td><input name="orgId2" id="id" type="text" class="login-input-user" value="" onfocus="javascript:if (this.value == 'Admin') { this.value=''; };" onblur="if(this.value=='') this.value='Admin'" style="ime-mode:inactive;" tabindex="1"></td>
					<td rowspan="2" class="lo_bt"> <a href="javascript:login();" class="button">LOGIN</a></td>
				</tr>				
				<tr>
					<th class='colortext'>비밀번호</th>
					<td><input name="orgPw2" id="password" type="password" value="" class="login-input-pass" onfocus="javascript:if (this.value == 'password') { this.value=''; };" onkeydown="javascript:if (event.keyCode == 13) { actionLogin(); }" tabindex="2"></td>
					<td></td>
				</tr>	
			</tbody></table>
			</form>
			<p class="id_remember"><label style="cursor:pointer;">
			<input type="checkbox" name="id_Ch" id="id_Ch" class="colortext" style="opacity: 1;"><span style="color:#6EBAC2;">아이디 기억하기 </span></label></p>
			<div class="btn_bottom" style="z-index: 960;">
				<p class="re_file_plus_btn">
					<a class="button-dark-gray01" href="/web/joinAgree.do">회원가입</a> 
				</p>
				<p class="colortext">포트폴리오 관리 시스템(PMS) -010.3110.7347-</p>						
			</div>
		</div>
	</div>
	
	
        </div>
            </body>