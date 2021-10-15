      <%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="fileListLen" value="${fn:length(fileList)}"/>

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
	$(document).ready(function() {
		/* 30MB-30720 */
		if('${fileListLen}'==''){
			var cnt = 0;	
		}else {
			var cnt = ${fileListLen};
			
		}
		var fileLen = 0;
		var maxSize = 30720;
		var nowSize = 0;

		
		$("#input_usr_file").on("change",function(){
			var f_val = $("#input_usr_file").val().split('\\');
			var f_val2 = $("#input_usr_file")[0].files;
			var s_val= f_val[f_val.length-1];
			var usrFile = $(this).siblings();
			var usrFile2 = $(this);
			console.log(usrFile);
			console.log(usrFile2);
			fileLen = $(".fileList").children('.input_usr_file').length;
			nowSize += (f_val2[0].size/1024);
			var splitFileName = s_val.split(".");
			var regex = /^(jpg|jpeg|png|gif|bmp|pdf|hwp|doc|docx|ppt|pptx|xls|xlsx)$/;
			if(splitFileName[splitFileName.length-1].match(regex)){
				if(nowSize >= maxSize){
					nowSize -= (file.size/1024);
					initFile();
					alert("파일 업로드는 30MB까지 가능합니다.");
				} else if ( fileLen >= 4){
					initFile();
					alert("파일은 최대 3개까지 업로드 가능합니다.");
				} else {
					usrFile.attr("value",s_val);	
					
				}
				return;
			} else {
				alert("지원하지 않는 형식의 파일입니다.");
				return false;
			}
		});	
		
		
		
/* 		function fileFormChk(file){
			console.log("!!!"+file);
			var fileName = file.name;
			console.log("###"+fileName);
			var splitFileName = fileName.split(".");
			var regex = /^(jpg|jpeg|png|gif|bmp|pdf|hwp|doc|docx|ppt|pptx|xls|xlsx)$/;
			if(splitFileName[splitFileName.length-1].match(regex)){
				return true;
			} else {
				alert("지원하지 않는 형식의 파일입니다.");
				return false;
			}
		}
	
		function fileChk(file){
			if(nowSize >= maxSize){
				nowSize -= (file.size/1024);
				initFile();
				alert("파일 업로드는 30MB까지 가능합니다.");
			} else if ( fileLen >= 4){
				initFile();
				alert("파일은 최대 3개까지 업로드 가능합니다.");
			} else {
				var str = '<p class="file_note" id="fileUp'+cnt+'"><span id="fileUp'+cnt+'">'+file.name+'<a class="lg_del" href="javascript:void(0);" id="delFile"></a></span></p>'
				$("#fileList").append(str);
				cnt ++;
				str = '<input class="file fileUp" type="file" id="fileUp'+cnt+'" name="fileUp'+cnt+'" style="display: none;">';
				$("#fileList").append(str);
			}
		} */
		
		function initFile(){
			//input[type=file] 초기화
			var agent = navigator.userAgent.toLowerCase();
			if ((navigator.appName == 'Netscape' && agent.indexOf('trident') != -1) || (agent.indexOf("msie") != -1)) { // ie 일때  
				$("#fileUp"+cnt).replaceWith( $("#fileUp"+cnt).clone(true) ); 
			} else { // other browser 일때
				$("#fileUp"+cnt).val(""); 
			}
		}
		
	});
	var str='<div class="row100">';
	str += '<div class="col">';
	str += '<div class="inputbox">'
	str += '<div class="fileList">';
	str += '<input type="file" class="file" name="input_usr_file" id="input_usr_file" data-value="1"  data-value="2" style="display: none;" />';
	str += '<input type="hidden" name="usrFile" value="${result.usrFile}"/> ';
	str += '<input type="hidden" name="srvFile" value="${result.srvFile}"/>';
	str += '<c:if test="${!empty result.boardIdx && !empty result.usrFile}">';
	str += '<input type="text" id="fileInfo" class="name" name="boardFn" required="required" value="   "/>';
	str += '<span class="text">Add File</span>';
	str += '<span class="text"></span>';
	str += '<input type="hidden" id="fileDel" name="fileDel" value="N" />';
	str += '<p id="fileLink" class="sm_line2" style="display:block; margin-top:7px; margin-left:2px;">';
	str += '<a href="${fileUrl}"  >${fn:split(result.usrFile,'|')[0]}(${fn:split(result.usrFile,'|')[1]})</a>';
	str += '<button class="sm_del" onclick="fnDelFile(); return false;" ></button>';
	str += '</p>';	
	str += '</c:if>';	
	str += '<c:if test="${empty result.usrFile}">';	
	str += '<input type="text" id="fileInfo" class="name" name="boardFn" required="required" value=""/>';	
	str += '<span class="text">Add File</span>';	
	str += '<span class="text"></span>';	
	str += '</c:if>';	
	str += '<a href="javascript:deleteInput();" id="delete" class="sm">파일삭제</a>';	
	str += '<a href="javascript:openFile();" id="search" class="sm_line">파일검색</a>';	
	str += '</div></div></div>';	
	
	function addInput(){
		var usrFile = $('.sm_line').siblings('#fileInfo');
		$('#addInput').append(str);
	}
	
	function openFile(){
		$("#input_usr_file").trigger("click");
	}
	function regist(){
		$("#frm").attr("action","/web/golist.do");
		$("#frm").submit();
	}
	function modify(){
		$("#frm").attr("action","/web/modify.do");
		$("#frm").submit();
	}
	
	function del(){
		$("#frm").attr("action","/web/delete.do");
		$("#frm").submit();
	}
	
	function fnDelFile(){
		if(confirm("정말 파일을 삭제하시겠습니까?")){
		$("#fileDel").val("Y");
		$("#fileLink").css("display", "none");
		}
	}
	
	function deleteInput(){
		console.log('asd');
		$('#delete').closest('.row100').remove();
	}
    
    
    </script>
    </head>
    <body>
     <div class="layout bg-darkest">
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
							<span class="d-none d-md-block text-uppercase text-18 fw-400 text-varela text-white"
							style="cursor: pointer;"></span>
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
           <img data-v-0911bb43="" src="/_img/bg-top.c9fbe891.svg" class="position-absolute top-0 left-0 w-100 mt-5" style="opacity: 0.5;">
    
    <form id="frm" action="/web/mylist.do" method="post" enctype="multipart/form-data">
    <input type="hidden" name="boardIdx" value="${result.boardIdx }">
    <c:choose>
    <c:when test="${empty result.boardIdx}">
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
				<div id="addInput" class="row100">
                    <div class="col">
                        <div class="inputbox">
                        <input type="file" class="file" name="input_usr_file" id="input_usr_file" data-value="1"  data-value="2" style="display: none;" />
                        <input type="hidden" name="usrFile" value="${result.usrFile}"/> 
						<input type="hidden" name="srvFile" value="${result.srvFile}"/> 
                        <input type="text" id="fileInfo" class="name" name="boardFn" required="required"/>
                        <span class="text">Add File</span>
                        <span class="text"></span>
                        <a href="javascript:addInput();" id="" class="sm">파일추가</a>
                        <a href="javascript:openFile();" id="search" class="sm_line">파일검색</a>
                        </div>
                    </div>
                </div>
                    <div class="col">
                        <div class="a">
                        <a class ="regist" href="javascript:regist();">등록</a>
                        </div>
                    </div>
         </div>
    </c:when>
	<c:otherwise>
			<div class="mycontainer">
            <h2>Write YourSelf</h2>
                <div class="row100">
                    <div class="col">
                        <div class="inputbox">
                        <input type="text" id="name" class="name" name="boardName" required="required" value="${result.boardName}"/>
                        <span class="text">Name</span>
                        <span class="text"></span>
                    </div>
                </div>
            </div>
                <div class="row100">
                    <div class="col">
                        <div class="inputbox">
                        <input type="text" id="name" class="name" name="boardEmail" required="required" value="${result.boardEmail}"/>
                        <span class="text">Email</span>
                        <span class="text"></span>
                        </div>
                    </div>
                </div>
                <div class="row100">
                    <div class="col">
                        <div class="inputbox">
                        <input type="text" id="name" class="name" name="boardNumber" required="required" value="${result.boardNumber}"/>
                        <span class="text">Phone Number</span>
                        <span class="text"></span>
                        </div>
                    </div>
                </div>
                <div class="row100">
                    <div class="col">
                        <div class="inputbox">
                        <input type="text" id="name" class="name" name="boardContent" required="required" value="${result.boardContent}"/>
                        <span class="text">Content</span>
                        <span class="text"></span>
                        </div>
                    </div>
                </div>
				<div id="addInput" class="row100 asd">
                    <div class="col">
                        <div class="inputbox">
                        <input type="file" class="file" name="input_usr_file" id="input_usr_file" data-value="1"  data-value="2" style="display: none;" />
                        <input type="hidden" name="usrFile" value="${result.usrFile}"/> 
						<input type="hidden" name="srvFile" value="${result.srvFile}"/> 
						
						
                        <c:if test="${!empty result.boardIdx && !empty result.usrFile}">
                        <input type="text" id="fileInfo" class="name" name="boardFn" required="required" value="   "/>
                        <span class="text">Add File</span>
                        <span class="text"></span>
							<input type="hidden" id="fileDel" name="fileDel" value="N" />
								<p id="fileLink" class="sm_line2" style="display:block; margin-top:7px; margin-left:2px;">
									<a href="${fileUrl}"  >${fn:split(result.usrFile,'|')[0]}(${fn:split(result.usrFile,'|')[1]})</a>
									<button class="sm_del" onclick="fnDelFile(); return false;" ></button>
								</p>
						</c:if> 
						
						<c:if test="${empty result.usrFile}">
						<input type="text" id="fileInfo" class="name" name="boardFn" required="required" value=""/>
                        <span class="text">Add File</span>
                        <span class="text"></span>
						</c:if>
						
						<a href="javascript:addInput();" class="sm">파일추가</a>
                        <a href="javascript:openFile();" class="sm_line">파일검색</a>
                        </div>
                    </div>
                </div>
                    <div class="col">
                        <div class="a">
                        <a class ="regist" href="javascript:modify();">수정</a>
                        </div>
                    </div>
                    <div class="col">
                        <div class="a">
                        <a class ="regist" href="javascript:del();">삭제</a>
                        </div>
                    </div>
                                        <div class="col">
                        <div class="a">
                        <a class ="regist" href="/web/list.do">목록</a>
                        </div>
                    </div>
         </div>
	</c:otherwise>    
    </c:choose>
    </form>
</body>
</html>
          