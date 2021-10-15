package egovframework.zipper.web.service;

import java.io.Serializable;

import egovframework.com.cmm.ComDefaultVO;

/**
 * 계획관리 체크 VO
 * @author
 *
 */
@SuppressWarnings("serial")
public class EgovZipperWebMainVO extends ComDefaultVO implements Serializable {
	private String orgIdx2="";
	private String useYn="";
	private String orgId2="";
	private String orgPw2="";
	private String regDate2="";
	private String orgName2="";
	private String orgEmail2="";
	private String orgPhone2="";
	private String boardIdx="";
	private String boardName="";
	private String boardEmail="";
	private String boardNumber="";
	private String boardContent="";
	private String boardFn="";
	private String usrFile="";
	private String fileDel="";
	private String boardOrgIdx="";
	private String status="";
	private String userStatus="";
	
	public String getUserStatus() {
		return userStatus;
	}
	public void setUserStatus(String userStatus) {
		this.userStatus = userStatus;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getBoardOrgIdx() {
		return boardOrgIdx;
	}
	public void setBoardOrgIdx(String boardOrgIdx) {
		this.boardOrgIdx = boardOrgIdx;
	}
	public String getFileDel() {
		return fileDel;
	}
	public void setFileDel(String fileDel) {
		this.fileDel = fileDel;
	}
	public String getUsrFile() {
		return usrFile;
	}
	public void setUsrFile(String usrFile) {
		this.usrFile = usrFile;
	}
	public String getSrvFile() {
		return srvFile;
	}
	public void setSrvFile(String srvFile) {
		this.srvFile = srvFile;
	}
	private String srvFile="";
	
	public String getBoardIdx() {
		return boardIdx;
	}
	public void setBoardIdx(String boardIdx) {
		this.boardIdx = boardIdx;
	}
	
	public String getBoardName() {
		return boardName;
	}
	public void setBoardName(String boardName) {
		this.boardName = boardName;
	}
	public String getBoardEmail() {
		return boardEmail;
	}
	public void setBoardEmail(String boardEmail) {
		this.boardEmail = boardEmail;
	}
	public String getBoardNumber() {
		return boardNumber;
	}
	public void setBoardNumber(String boardNumber) {
		this.boardNumber = boardNumber;
	}
	public String getBoardContent() {
		return boardContent;
	}
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
	public String getBoardFn() {
		return boardFn;
	}
	public void setBoardFn(String boardFn) {
		this.boardFn = boardFn;
	}
	public String getOrgIdx2() {
		return orgIdx2;
	}
	public void setOrgIdx2(String orgIdx2) {
		this.orgIdx2 = orgIdx2;
	}
	public String getUseYn() {
		return useYn;
	}
	public void setUseYn(String useYn) {
		this.useYn = useYn;
	}
	public String getOrgId2() {
		return orgId2;
	}
	public void setOrgId2(String orgId2) {
		this.orgId2 = orgId2;
	}
	public String getOrgPw2() {
		return orgPw2;
	}
	public void setOrgPw2(String orgPw2) {
		this.orgPw2 = orgPw2;
	}
	public String getRegDate2() {
		return regDate2;
	}
	public void setRegDate2(String regDate2) {
		this.regDate2 = regDate2;
	}
	public String getOrgName2() {
		return orgName2;
	}
	public void setOrgName2(String orgName2) {
		this.orgName2 = orgName2;
	}
	public String getOrgEmail2() {
		return orgEmail2;
	}
	public void setOrgEmail2(String orgEmail2) {
		this.orgEmail2 = orgEmail2;
	}
	public String getOrgPhone2() {
		return orgPhone2;
	}
	public void setOrgPhone2(String orgPhone2) {
		this.orgPhone2 = orgPhone2;
	}

	private String adminIdx="1";
	private String orgId="";
	private String orgPw="";
	private String admin="";
	
	public String getAdmin() {
		return admin;
	}
	public void setAdmin(String admin) {
		this.admin = admin;
	}
	public String getAdminIdx() {
		return adminIdx;
	}
	public void setAdminIdx(String adminIdx) {
		this.adminIdx = "1";
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
	
	
	private String filIdx  	="";	/** 파일	idx */
	private String idx 	="";	/** 기관	idx */
	private String filPath	="";	/** 파일경로 */
	private String filUsrName ="";	/** 파일명 사용자 */
	private String filSvrName ="";	/** 파일명 서버명 */
	private String filSize ="";		/** 파일사이즈 */
	private String regAdmYn ="";	/** 관리자등록 */
	private String modAdmYn ="";	/** 관리자수정 */
	//private List<?> fileList = new ArrayList<?>();
	
	public String getFilIdx() {
		return filIdx;
	}
	public void setFilIdx(String filIdx) {
		this.filIdx = filIdx;
	}
	public String getIdx() {
		return idx;
	}
	public void setIdx(String idx) {
		this.idx = idx;
	}
	public String getFilPath() {
		return filPath;
	}
	public void setFilPath(String filPath) {
		this.filPath = filPath;
	}
	public String getFilUsrName() {
		return filUsrName;
	}
	public void setFilUsrName(String filUsrName) {
		this.filUsrName = filUsrName;
	}
	public String getFilSvrName() {
		return filSvrName;
	}
	public void setFilSvrName(String filSvrName) {
		this.filSvrName = filSvrName;
	}
	public String getFilSize() {
		return filSize;
	}
	public void setFilSize(String filSize) {
		this.filSize = filSize;
	}
	public String getRegAdmYn() {
		return regAdmYn;
	}
	public void setRegAdmYn(String regAdmYn) {
		this.regAdmYn = regAdmYn;
	}
	public String getModAdmYn() {
		return modAdmYn;
	}
	public void setModAdmYn(String modAdmYn) {
		this.modAdmYn = modAdmYn;
	}
	@Override
	public String toString() {
		return "EgovCmsComFileVO [filIdx=" + filIdx + ", Idx=" + idx
				+ ", filPath=" + filPath + ", filUsrName=" + filUsrName
				+ ", filSvrName=" + filSvrName + ", filSize=" + filSize
				+ ", regAdmYn=" + regAdmYn + ", modAdmYn=" + modAdmYn + "]";
	}
}