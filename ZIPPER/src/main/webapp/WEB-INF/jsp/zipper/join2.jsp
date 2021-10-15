 <%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="/_css/web/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    <script>

    $(document).ready(function(){
    	var mailList = new Array('gmail.com','naver.com','hanmail.com');
        for(var i=0; i<mailList.length; i++){
            var option = $("<option>"+mailList[i]+'</option>');
            $('#email3').append(option);
        }
    $("#email3").change(function() {
		$("#email2").attr("readonly", $(this).val() != "");
		$("#email2").val($(this).val());
		$("#email2").focus();
	});
    });
                //ID 체크
        			$(document).on("click","#chkDupOrgIdBtn",function(){
				var chkBool = true;
				var idReg1 = /^[a-zA-Z0-9]*$/;
				/* if(chkLength($("#orgId"), 0, 5)){
					alert("아이디를 6자리 이상으로 입력해주세요.");
					$("#orgId").focus();
					chkBool = false;
				} */
				/* if(!idReg1.test($("#orgId").val())){
					alert("아이디는 영문, 숫자 조합으로 입력해주세요.");
					$("#orgId").focus();
					chkBool = false;
				} */
				if($("#orgId2").val()==""){
					alert("아이디를 입력해주세요.");
					$("#orgId").focus();
					chkBool = false;
				}	
				
				if(chkBool){
					$.ajax({
						type : "post",
						url : "/web/chkDupOrgId.do",
						data : {
							orgId2 : $("#orgId2").val()
						},
						success : function(tmp){
							if(tmp > -1){
								if(tmp == 0){
									$("#dupOrgIdYn").removeClass("unpass");
									$("#dupOrgIdYn").addClass("pass");
									$("#dupOrgIdYn").text("사용 가능한 아이디입니다.");
									$("#chkDupOrgId").val("Y");
								} else {
									$("#dupOrgIdYn").removeClass("pass");
									$("#dupOrgIdYn").addClass("unpass");
									$("#dupOrgIdYn").text("이미 사용중인 아이디입니다.");
									$("#chkDupOrgId").val("N");
								}	
							}
						}
					});
				}
				
			});


            		 // 비밀번호 체크
			var passwordCheck = function(pw) {
			 	pwChk();
				var $msgObj = $('.pass_msg_1');
				
				if (!pw) {
					return false;
				}
								
				// 4자리 이상 체크
				if (chkLength($("#orgPw"), 0, 3)) {
					$msgObj.html("<font color='#e45555' style=\"vertical-align: unset;\">4자리이상 입력해 주십시오.<font>");
					$("#orgPwChkMsg1").removeClass("pass");
					$("#orgPwChkMsg1").addClass("unpass");
					return false;
				}

				 // 영문 대소문자 ,숫자
				if (!/^[0-9a-zA-Z]*$/g.test($("#orgPw").val())) {
					$msgObj.html("<font color='#e45555' style=\"vertical-align: unset;\">영문 대소문자 및 숫자를 사용해주세요.(4자이상)<font>");
					$("#orgPwChkMsg1").removeClass("pass");
					$("#orgPwChkMsg1").addClass("unpass");
					return false;
				} 
					$msgObj.html("");
					$("#orgPwChkMsg1").text("사용 가능한 비밀번호입니다.");
					$("#orgPwChkMsg1").removeClass("unpass");
					$("#orgPwChkMsg1").addClass("pass");
					return true;
			}



            $(document).on("keyup","#orgPwChk",function(){
		 		pwChk();
		 	});
		 	
		 	function pwChk(){
		 		var $msgObj = $('.pass_msg_2');
				// 비밀번호와 비밀번호 확인 비교
				if ($("#orgPw").val().trim() != $("#orgPwChk").val().trim()) {
					$msgObj.html("<font color='#e45555' style=\"vertical-align: unset;\">비밀번호가 서로 일치하지 않습니다.<font>");
					$("#orgPwChkMsg2").removeClass("pass");
					$("#orgPwChkMsg2").addClass("unpass");
					return false;
				} else {
					$msgObj.html("");
					$("#orgPwChkMsg2").text("비밀번호가 서로 일치합니다.");
					$("#orgPwChkMsg2").removeClass("unpass");
					$("#orgPwChkMsg2").addClass("pass");
					return true;
				}
		 	}

             function chkLength(obj, min, max) {
				if (obj.val().length < min || obj.val().length > max) {
					return false;
				} else {
					return true;
				}
            }


			function fn_submit(mode) {
	 			if(isSubmit()) {
					if(mode == 'ins') {
						$("#frm").attr("action", "/web/myjoinInfoInsert.do");
						$("#frm").submit();
					} 
				}
			}
			function isSubmit() {
				if($("#email1").val()!="" ||$("#email2").val()!=""){
					$("#orgEmail2").val($("#email1").val()+"@"+$("#email2").val());	
				}
				
				$("#orgPhone2").val($("#telNo1").val()+"-"+$("#telNo2").val()+"-"+$("#telNo3").val());
				
				
				var isPass = true;
				$("input[required]").each(function() {
					if(compactTrim($(this).val()) == "") {
						$(this).focus();
						alert("필수항목입니다. " + $(this).data("msg") + " 입력해주세요.");
						return isPass = false;
					}
				});
				
				if(isPass){
					if($("#email1").val() != ""){
						console.log($("#orgEmail2").val());
						if(!checkEmail($("#orgEmail2").val())) {
							$("#orgEmail2").focus();
							alert("이메일형식이 올바르지 않습니다.");
							return isPass = false;
						}
					}
					if($("#orgPw").val()!=""){
						if($("#orgPwChkMsg1").hasClass('unpass') || $("#orgPwChkMsg2").hasClass('unpass')){
							$('#orgPw').focus();
							alert("비밀번호 입력이 정확하지 않습니다.");
							return isPass = false;
						}
					}
				}
					
				function compactTrim(str) {
					return str.replace( /(\s*)/g, "" );
				}
					
				return isPass;	
			}
			
			function checkEmail(str){
			    var regexr = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/;
			    return regexr.test(str); //이메일형식이 아니면 false, 맞으면 true
			}

    </script>
</head>
<body>
    <section>
<form name="frm" id="frm" autocomplete="off" method="post" action="javascript:fn_submit('ins');">
<input type="hidden" name="useYn" value="${resultVO.useYn}">    
    <div class="container">
        <h2>회원가입</h2>        
    <div class="row100">
        <div class="col">
            <div class="inputBox">              
                <input id="orgId2" name="orgId2" type="text" required="required"/>              
                <span class="text">ID 입력	               
                </span>
                <span class="line"></span>                
            </div>
                            <a class="sm_line" href="javascript:void(0);" id="chkDupOrgIdBtn">ID Check</a> 
                            <span id="dupOrgIdYn" class="pass text"></span>               
        </div>
        <div class="col">
            <div class="inputBox">
				<input type="password" id="orgPw" name="orgPw2" maxlength="25" style="width: 200px" onclick="passwordCheck(this.value)" onkeydown="passwordCheck(this.value)" onblur="passwordCheck(this.value)"required />
                <span class="text">비밀번호</span>
                <span class="line"></span>
            </div>
                        <c:choose>
                            <c:when test="${empty resultVO.orgIdx}">
                                <p style="padding-top:6px; font: 12px/16px &quot;malgun gothic&quot;,&quot;Dotum&quot;,&quot; Gulim&quot;,&quot;Arial&quot;,&quot;verdana&quot;,&quot;Helvetica&quot;,sans-serif; display: inline-block; color:#2573cf;">※ 6자 이상의 대소문자, 숫자, 특수문자</p>
                            </c:when>
                        </c:choose>
                        <br>
                        <span id="orgPwChkMsg1" class="unpass pass_msg_1"></span>           
        </div>
        <div class="col">
            <div class="inputBox">
                <input type="password" id="orgPwChk" style="width: 200px" maxlength="25" required />
                <span class="text">비밀번호 확인</span>
                <span class="line"></span>
            </div>
                        <br>
                        <span id="orgPwChkMsg2" class="unpass pass_msg_2"></span>         
             
        </div>
        <div class="col">
            <div class="inputBox">
                <input class="w300" type="text" id="personNm" value="" name="orgName2"required>
                <span class="text">이름</span>
                <span class="line"></span>
            </div>
        </div>
        <div class="col">
            <div class="inputBox">
            	<input class="w300" type="text" id="personNm" value="" name="orgPhone2"required>
                <span class="text">핸드폰 번호</span>
                <span class="line"></span>
            </div>
        </div>
        <div class="col">
            <div class="inputBox">
            	<input type="text" name="orgEmail2" id="orgEmail2" required />
                <span class="text">이메일</span>
                <span class="line"></span>
            </div>
        </div>
    </div>
<!--     <div class="row100">
        <div class="col">
            <div class="inputBox textarea">
                <input type="text" name="" required="required">
                <span class="text">Type your Message Here...</span>
                <span class="line"></span>
            </div>
        </div>
    </div> -->
    <div class="row100">
        <div class="col">
            <input type="submit" value="등록">
        </div>
    </div>
    </div>
    </form>
</section>
</body>
</html>