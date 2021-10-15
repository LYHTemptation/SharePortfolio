 <%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="utf-8">
<head>
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
<style>
table th, table td{
    border-style:solid;
}
th,td {
    padding:10px;
}
</style>
</head>
<body>
<div id="wrap">
    <div class="cont_view">
        <!-- 리스트디자인 -->
        <h3>회원가입</h3>
        <form name="frm" id="frm" autocomplete="off" method="post">
            <input type="hidden" name="useYn" value="${resultVO.useYn}">
        <table class="table02" summary="회원가입 인증기관 정보입력">
            <tbody>
            <tr>
                <th scope="row">ID 입력 <span class="star">*</span></th>
                <td colspan="3">
                            <input id="orgId2" name="orgId2" style="width: 200px;" type="text" placeholder="아이디를 입력해주세요." data-msg="아이디를" required/>
                            <label class="f_0" for="orgId2">아이디 선택</label> 
                            <a class="sm_line" href="javascript:void(0);" id="chkDupOrgIdBtn">ID Check</a> 
                            <span id="dupOrgIdYn" class="pass"></span> 
                </td>
            </tr>
                <tr>
                    <th scope="row">비밀번호 <span class="star">*</span></th>
                    <td>
                        <input type="password" id="orgPw" name="orgPw2" maxlength="25" style="width: 200px" onclick="passwordCheck(this.value)" onkeydown="passwordCheck(this.value)" onblur="passwordCheck(this.value)" placeholder="비밀번호를 입력해주세요." data-msg="비밀번호를" required />
                        <label class="f_0" for="orgPw">비밀번호 입력</label> 
                        <c:choose>
                            <c:when test="${empty resultVO.orgIdx}">
                                <p style="padding-top:6px; font: 12px/16px &quot;malgun gothic&quot;,&quot;Dotum&quot;,&quot; Gulim&quot;,&quot;Arial&quot;,&quot;verdana&quot;,&quot;Helvetica&quot;,sans-serif; display: inline-block; color:#2573cf;">※ 6자 이상의 대소문자, 숫자, 특수문자</p>
                            </c:when>
                        </c:choose>
                        <br>
                        <span id="orgPwChkMsg1" class="unpass pass_msg_1"></span> 
                    </td>
                    </tr>
                    <tr>
                    <th scope="row">비밀번호 확인<span class="star">*</span></th>
                    <td>
                        <input type="password" id="orgPwChk" style="width: 200px" maxlength="25"  data-msg="비밀번호를 다시" required />
                        <label class="f_0" for="orgPwChk">비밀번호 확인 입력</label>
                        <br>
                        <span id="orgPwChkMsg2" class="unpass pass_msg_2"></span> 
                    </td>
                </tr>
            <tr>
                <th scope="row">이름 <span class="star">*</span></th>
                <td>
                    <input class="w300" type="text" id="personNm" value="" name="orgName2" data-msg="대표자명을" required>
                    <label class="f_0">이름</label>
                </td>
                <tr>
                    
                    <th scope="row">핸드폰 번호 <span class="star">*</span></th>
                    <td>
                        <input type="hidden" name="orgPhone2" id="orgPhone2" value="" />
                            <select id="telNo1" name="telNo1" class="select01" style="width: 90px" style="cursor: pointer;">
                                <option value="1" selected="selected">직접입력</option>
                                <option value="2">010</option>
                                <option value="3">011</option>
                                <option value="4">012</option>
                            </select>
                        <span class="v_middle">-</span> 
                        <input type="text" id="telNo2" name="telNo2" value="" class="w300" style="width: 100px" maxlength="4" data-msg="전화번호를" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" required />
                        <span class="v_middle">-</span> 
                        <input type="text" id="telNo3" name="telNo3" value="" class="w300" style="width: 100px" maxlength="4" data-msg="전화번호를" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" required />
                    </td>
                </tr>
                <tr>
                    <th scope="row">대표이메일<span class="star">*</span></th>
                    <td >
                        <input type="hidden" name="orgEmail2" id="orgEmail2" value="" data-msg="대표 이메일 주소를" > 
                        <input type="text" id="email1" name="email1" value="" class="w100"/>
                        <label class="f_0">이메일 입력</label> 
                        <span class="hyphen">@</span> 
                        <input type="text" id="email2" name="email2" value="" class="w100"/>
                        <label class="f_0">이메일 입력</label> 
                        <select id="email3" name="email3" class="select01" style="cursor: pointer; width:120px;">
                            <option value="">직접입력</option>
                        </select>
                    </td>
                </tr>
            </tbody>
        </table>
        </form>
        			<p class="btn_area c">
					<a href="javascript:fn_submit('ins');" class="btn_submit">회원가입</a>
			</p>
    </div>		
</div>

</body>

</html>