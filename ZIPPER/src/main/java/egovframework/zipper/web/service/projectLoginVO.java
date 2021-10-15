package egovframework.zipper.web.service;


import java.io.Serializable;

import egovframework.com.cmm.ComDefaultVO;
/**
 * 사용자(기관) 로그인 Value Object
 * @author 
 * @since 
 * @version 1.0
 * @see
 */
@SuppressWarnings("serial")
public class projectLoginVO extends ComDefaultVO implements Serializable {
	private String orgId = "";   //아이디
	private String orgPw = "";   // 비밀번호
	private String orgIdx = "";  //고유번호
	private String orgNmKr = ""; // 이름
	private String personNm ="";//담당자 명
	private String orgDiv = ""; // 기관구분
	
	private String userStatus=""; //mine
	private String admin="";
	
	public String getAdmin() {
		return admin;
	}
	public void setAdmin(String admin) {
		this.admin = admin;
	}
	public String getUserStatus() {
		return userStatus;
	}
	public void setUserStatus(String userStatus) {
		this.userStatus = userStatus;
	}
	
	
	//혁제추가
	private String logType  =""; //CAB AB 구분 위해 필요
	
	//입회용
	private String admissionId = "";//입회용 ID
	private String admissionPw = "";//입회용 PW
	
	
	
	
	public String getOrgDiv() {
		return orgDiv;
	}
	public void setOrgDiv(String orgDiv) {
		this.orgDiv = orgDiv;
	}
	public String getLogType() {
		return logType;
	}
	public void setLogType(String logType) {
		this.logType = logType;
	}
	public String getAdmissionId() {
		return admissionId;
	}
	public void setAdmissionId(String admissionId) {
		this.admissionId = admissionId;
	}
	public String getAdmissionPw() {
		return admissionPw;
	}
	public void setAdmissionPw(String admissionPw) {
		this.admissionPw = admissionPw;
	}
	public String getPersonNm() {
		return personNm;
	}
	public void setPersonNm(String personNm) {
		this.personNm = personNm;
	}
	public String getOrgId() {
		return orgId;
	}
	public void setOrgId(String orgId) {
		this.orgId = orgId;
	}
	public String getOrgPw() {
		return orgPw;
	}
	public void setOrgPw(String orgPw) {
		this.orgPw = orgPw;
	}
	public String getOrgIdx() {
		return orgIdx;
	}
	public void setOrgIdx(String orgIdx) {
		this.orgIdx = orgIdx;
	}
	public String getOrgNmKr() {
		return orgNmKr;
	}
	public void setOrgNmKr(String orgNmKr) {
		this.orgNmKr = orgNmKr;
	}
	
	
}
