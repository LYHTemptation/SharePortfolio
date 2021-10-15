package egovframework.zipper.web.web;



import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import egovframework.cms.com.service.EgovCmsComService;
import egovframework.cms.com.util.EgovCmsUserDetailsHelper;
import egovframework.com.cmm.EgovCmsCommonUtil;
import egovframework.com.cmm.EgovCmsFileUtil;
import egovframework.com.cmm.EgovMessageSource;
import egovframework.com.cmm.service.EgovProperties;
import egovframework.zipper.web.service.EgovZipperWebMainService;
import egovframework.zipper.web.service.EgovZipperWebMainVO;
import egovframework.zipper.web.service.projectLoginVO;
import egovframework.rte.psl.dataaccess.util.EgovMap;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

/**
 * 사용자(기관) 컨트롤러
 * @author 
 * @since 
 * @version 1.0
 * @see
 */
@Controller
public class EgovZipperWebMainController {

    
    @Resource(name = "egovMessageSource")
	EgovMessageSource egovMessageSource;
    
    @Resource(name="commonService")
    EgovCmsComService commonService;
    
    @Resource(name="zipperService")
    EgovZipperWebMainService zipperService;
  
    

    @RequestMapping(value="/web/login.do")
	public String main(HttpServletRequest request) throws Exception {
		return "zipper/login";
	}
    
    @RequestMapping(value="/web/admin/login.do")
	public String adminLogin(HttpServletRequest request) throws Exception {
		return "zipper/login";
	}
    
	@RequestMapping(value = "/web/logoutAction.do")
	public String logout(ModelMap model, HttpServletRequest request) throws Exception {
		request.getSession().setAttribute("orgSessionVo", null);
		request.getSession().setAttribute("admissionSessionVo", null);
		return "redirect:/";
	}
    
    @RequestMapping(value="/web/joinAgree.do")
    public String joinAgree(@ModelAttribute("zipperVO")EgovZipperWebMainVO zipperVO,
    		SessionStatus status, ModelMap model, HttpServletRequest request) throws Exception {
    	
    	return "/zipper/join2";
    }
    @RequestMapping(value="/web/asd.do")
    public String joinAgree1(@ModelAttribute("zipperVO")EgovZipperWebMainVO zipperVO,
    		SessionStatus status, ModelMap model, HttpServletRequest request) throws Exception {
    	
    	return "/zipper/join";
    }
    
	@RequestMapping(value = "/web/myjoinInfoInsert.do")
	public String myjoinInfoInsert(@ModelAttribute("zipperVO") EgovZipperWebMainVO zipperVO, ModelMap model,
			HttpServletRequest request) throws Exception {
		zipperVO.setUseYn("Y");
		String orgIdx = "";
		//해쉬화
		zipperVO.setOrgPw2(EgovCmsCommonUtil.genMD5(zipperVO.getOrgPw2()));
		orgIdx = zipperService.myCompanyInfoInsert(zipperVO);
		System.out.println("셋팅 후 joinAction 값 확인 ::: ::: " + zipperVO.toString());
		if (!orgIdx.equals("")) {
			return "redirect:/web/login.do";
		} else {
			return EgovCmsCommonUtil.alertMove(model, egovMessageSource.getMessage("fail.common.insert"), "/");
		}
	}
	
	@RequestMapping(value="/web/admin.do")
	public String AdminPage(@ModelAttribute("zipperVO") EgovZipperWebMainVO zipperVO, ModelMap model,
			HttpServletRequest request) throws Exception {
		if(zipperVO.getOrgId2()!=null){
			String loginId = zipperVO.getOrgId2();
			String loginPw2 = zipperVO.getOrgPw2();
			EgovZipperWebMainVO resultVO2 = zipperService.adminInfo(zipperVO);
			
			 if(resultVO2 !=null){
					if(loginId.equals(resultVO2.getOrgId()) && loginPw2.equals(resultVO2.getOrgPw())){
						System.out.println("관리자로그인 성공 ::");
						projectLoginVO sessionVO = new projectLoginVO();
						sessionVO.setOrgIdx("1");
						sessionVO.setAdmissionId(resultVO2.getOrgId());
						sessionVO.setAdmissionPw(resultVO2.getOrgPw());
						
						request.getSession().setAttribute("orgSessionVo", sessionVO);
						
						PaginationInfo paginationInfo = new PaginationInfo();
						zipperVO.setPageUnit(4); 
						paginationInfo.setCurrentPageNo(zipperVO.getPageIndex());
						paginationInfo.setRecordCountPerPage(zipperVO.getPageUnit());
						paginationInfo.setPageSize(4);
						zipperVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
						zipperVO.setLastIndex(paginationInfo.getLastRecordIndex());
						zipperVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());
						
						Map<String, Object> map = zipperService.selectCompanyList(zipperVO);
						paginationInfo.setTotalRecordCount(Integer.parseInt((String) map.get("totalCnt")));
						
						List<EgovMap> list = zipperService.list(zipperVO);
						List<EgovMap> resultVO = zipperService.userInfo(zipperVO);
						model.addAttribute("list", list);
						model.addAttribute("resultVO", resultVO);
						model.addAttribute("paginationInfo", paginationInfo);
						
						return "/zipper/AdminPage";
					} else{
						System.out.println("관리자로그인 실패 ::");
						return EgovCmsCommonUtil.alertMove(model, egovMessageSource.getMessage("fail.common.login"), "/web/login.do"); 
					}
				}
			 
				PaginationInfo paginationInfo = new PaginationInfo();
				zipperVO.setPageUnit(4); 
				paginationInfo.setCurrentPageNo(zipperVO.getPageIndex());
				paginationInfo.setRecordCountPerPage(zipperVO.getPageUnit());
				paginationInfo.setPageSize(4);
				zipperVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
				zipperVO.setLastIndex(paginationInfo.getLastRecordIndex());
				zipperVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());
				
				Map<String, Object> map = zipperService.selectCompanyList(zipperVO);
				paginationInfo.setTotalRecordCount(Integer.parseInt((String) map.get("totalCnt")));
				
				List<EgovMap> list = zipperService.list(zipperVO);
				List<EgovMap> resultVO = zipperService.userInfo(zipperVO);
				model.addAttribute("list", list);
				model.addAttribute("resultVO", resultVO);
				model.addAttribute("paginationInfo", paginationInfo);
		}
		
		return "/zipper/AdminPage";
	} 
	
    @RequestMapping(value="/web/goWrite.do")
	public String goWrite(@ModelAttribute("zipperVO")EgovZipperWebMainVO zipperVO,
			@ModelAttribute("page") projectLoginVO pageVO, 
			ModelMap model, HttpServletRequest request) throws Exception {
    	if(request.getParameter("boardIdx")!=null){
    		EgovMap result  = zipperService.selectOne(zipperVO);
    		System.out.println(result);
    		model.addAttribute("result", result);
    		model.addAttribute("fileList", zipperService.selectFileList(zipperVO));
    	}else{
    		return "zipper/goWrite";
    	}
		return "zipper/goWrite";
	}
    
    @RequestMapping(value="/web/main.do")
	public String loginAction(@ModelAttribute("zipperVO")EgovZipperWebMainVO zipperVO,
			@ModelAttribute("page") projectLoginVO pageVO, ModelMap model, HttpServletRequest request) throws Exception {
			System.out.println("loginAction ::");
			if(zipperVO.getOrgId2()!=null){
				String loginId = zipperVO.getOrgId2();
				String loginPw = zipperVO.getOrgPw2();
				/*String loginPw2 = zipperVO.getOrgPw2();*/
				String md5Pw = EgovCmsCommonUtil.genMD5(loginPw);
				
				EgovZipperWebMainVO resultVO1 = zipperService.loginInfo(zipperVO);
				/*EgovZipperWebMainVO resultVO2 = zipperService.adminInfo(zipperVO);*/
				
				if(!"".equals(md5Pw)){
					loginPw=md5Pw;
				}
				if(resultVO1 != null){
					if(loginId.equals(resultVO1.getOrgId2()) && loginPw.equals(resultVO1.getOrgPw2())){
						System.out.println("로그인 성공 ::");
						//session
						projectLoginVO sessionVO = new projectLoginVO();
						sessionVO.setOrgIdx(resultVO1.getOrgIdx2());
						sessionVO.setOrgId(resultVO1.getOrgId2());
						sessionVO.setOrgPw(resultVO1.getOrgPw2());
						sessionVO.setOrgNmKr(resultVO1.getOrgName2());
						sessionVO.setUserStatus(resultVO1.getStatus());
						sessionVO.setLogType("CAB");

						request.getSession().setAttribute("orgSessionVo", sessionVO);
						
						return "redirect:/web/list.do";
					} else{
						System.out.println("로그인 실패 ::");
						return EgovCmsCommonUtil.alertMove(model, egovMessageSource.getMessage("fail.common.login"), "/web/login.do"); 
					}
			} /*else if(resultVO2 !=null){
				if(loginId.equals(resultVO2.getOrgId()) && loginPw2.equals(resultVO2.getOrgPw())){
					System.out.println("관리자로그인 성공 ::");
					projectLoginVO sessionVO = new projectLoginVO();
					sessionVO.setOrgIdx("1");
					sessionVO.setAdmissionId(resultVO2.getOrgId());
					sessionVO.setAdmissionPw(resultVO2.getOrgPw());
					
					request.getSession().setAttribute("orgSessionVo", sessionVO);
					
					return "redirect:/";
				} else{
					System.out.println("관리자로그인 실패 ::");
					return EgovCmsCommonUtil.alertMove(model, egovMessageSource.getMessage("fail.common.login"), "/web/login.do"); 
				}
			}*/
				} else { //아이디가 비어있으면 에러
				return EgovCmsCommonUtil.alertMove(model, egovMessageSource.getMessage("fail.common.login"), "/web/login.do");
			}
			return EgovCmsCommonUtil.alertMove(model, egovMessageSource.getMessage("fail.common.login"), "/web/login.do");
	}
    
    
				
    
    
    @RequestMapping(value="/web/list.do")
    public String list(@ModelAttribute("zipperVO")EgovZipperWebMainVO zipperVO,
    		SessionStatus status, ModelMap model, HttpServletRequest request) throws Exception {
    	//session 불러오기
    	projectLoginVO sessionVO = (projectLoginVO) EgovCmsUserDetailsHelper
				.getAuthenticatedWebUserInfo();
    	if(sessionVO != null){
    		zipperVO.setOrgIdx2(sessionVO.getOrgIdx());
    		zipperVO.setStatus(sessionVO.getUserStatus());
    		zipperVO.setOrgId2(sessionVO.getOrgId());
    	}
    	
    	if(sessionVO ==null){
    		zipperVO.setOrgIdx2(null);
    	}
    	
    	//page
		PaginationInfo paginationInfo = new PaginationInfo();
		zipperVO.setPageUnit(4); 
		paginationInfo.setCurrentPageNo(zipperVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(zipperVO.getPageUnit());
		paginationInfo.setPageSize(4);
		zipperVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		zipperVO.setLastIndex(paginationInfo.getLastRecordIndex());
		zipperVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());
		
		Map<String, Object> map = zipperService.selectCompanyList(zipperVO);
		paginationInfo.setTotalRecordCount(Integer.parseInt((String) map.get("totalCnt")));
		//
		
		List<EgovMap> list = zipperService.list(zipperVO);
		model.addAttribute("list", list);
		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("orgIdx", zipperVO.getOrgIdx2());
		model.addAttribute("userStatus",zipperVO.getStatus());
		model.addAttribute("ID",zipperVO.getOrgId2());
		
    	
    	return "/zipper/main";
    }
    
    @RequestMapping(value="/web/golist.do")
	public String myList(@ModelAttribute("zipperVO")EgovZipperWebMainVO zipperVO,
			@ModelAttribute("page") projectLoginVO pageVO, 
			SessionStatus status, ModelMap model, HttpServletRequest request) throws Exception {
		
    	projectLoginVO sessionVO = (projectLoginVO) EgovCmsUserDetailsHelper
				.getAuthenticatedWebUserInfo();
    	if(sessionVO != null){
    		zipperVO.setOrgIdx2(sessionVO.getOrgIdx());
    	}
    	if(sessionVO ==null){
    		zipperVO.setOrgIdx2(null);
    	}
    	if (zipperVO.getBoardIdx().equals("")) {
			MultipartHttpServletRequest mptRequest = (MultipartHttpServletRequest) request;
			Iterator<String> fileIter = mptRequest.getFileNames();
			String folderName = "";
			String convertedFileName = "";
			zipperVO.setRegAdmYn("Y");
			zipperVO.setRegIdx(sessionVO.getOrgIdx());
			zipperVO.setRegName(sessionVO.getOrgNmKr());
			zipperVO.setRegIp(EgovCmsCommonUtil.getClientIP(request));
			// 파일 추가
			while (fileIter.hasNext()) {
				String inputFileName = fileIter.next();
				MultipartFile mFile = mptRequest.getFile(inputFileName);
				if (mFile.getSize() > 0) {
					if (inputFileName.equals("input_usr_file")) {
						convertedFileName = EgovCmsFileUtil.fileSingleUpload(mFile, folderName);
						zipperVO.setUsrFile(mFile.getOriginalFilename() + "|" + (mFile.getSize() / 1024) + "KB");
						zipperVO.setSrvFile(convertedFileName);
						zipperVO.setFilUsrName(mFile.getOriginalFilename());
						zipperVO.setFilSvrName(EgovCmsFileUtil.fileSingleUpload(mFile, zipperVO.getFilPath()));
						zipperService.fileInsert(zipperVO);
					}
				}
			}
			zipperVO.setOrgIdx2(sessionVO.getOrgIdx());
			zipperVO.setBoardOrgIdx(zipperVO.getOrgIdx2());
			zipperService.insertInfo(zipperVO);
		}
		return "redirect:/web/list.do";
	}
    
    @RequestMapping(value="/web/goShow.do")
	public String showProject(@ModelAttribute("zipperVO")EgovZipperWebMainVO zipperVO,
			@ModelAttribute("page") projectLoginVO pageVO, 
			SessionStatus status, ModelMap model, HttpServletRequest request) throws Exception {
    	
    	projectLoginVO sessionVO = (projectLoginVO) EgovCmsUserDetailsHelper
				.getAuthenticatedWebUserInfo();
    	if(sessionVO != null){
    		zipperVO.setOrgIdx2(sessionVO.getOrgIdx());
    	}
    	if(sessionVO ==null){
    		zipperVO.setOrgIdx2(null);
    	}
		model.addAttribute("orgIdx", zipperVO.getOrgIdx2());
    	
    	if(request.getParameter("boardIdx")!=null){
    		EgovMap result  = zipperService.selectOne(zipperVO);
    		model.addAttribute("result", result);
    		model.addAttribute("orgIdx",zipperVO.getOrgIdx2());
    	}else{
    		return "zipper/goWrite";
    	}
		return "zipper/showProject";
    }
    
    @RequestMapping(value="/web/modify.do")
	public String modify(@ModelAttribute("zipperVO")EgovZipperWebMainVO zipperVO,
			@ModelAttribute("page") projectLoginVO pageVO, 
			SessionStatus status, ModelMap model, HttpServletRequest request) throws Exception {
    	
		MultipartHttpServletRequest mptRequest = (MultipartHttpServletRequest) request;
		Iterator<String> fileIter = mptRequest.getFileNames();
		String folderName = "";
		String convertedFileName = "";

		// 파일 추가
		while (fileIter.hasNext()) {
			String inputFileName = fileIter.next();
			MultipartFile mFile = mptRequest.getFile(inputFileName);
			if (mFile.getSize() > 0) {
				if (inputFileName.equals("input_usr_file")) {
					convertedFileName = EgovCmsFileUtil.fileSingleUpload(mFile, folderName);
					zipperVO.setUsrFile(mFile.getOriginalFilename() + "|" + (mFile.getSize() / 1024) + "KB");
					zipperVO.setSrvFile(convertedFileName);
				}
			}
		}
		// 파일 삭제
		if (zipperVO.getFileDel().equals("Y")) {
			if (!EgovCmsFileUtil.deleteFile(folderName, zipperVO.getSrvFile()).equals("")) {
				zipperVO.setUsrFile("");
				zipperVO.setSrvFile("");
			}
		}
    	zipperService.update(zipperVO);
		List<EgovMap> list = zipperService.list(zipperVO);
		model.addAttribute("list", list);
    	return "redirect:/web/list.do";
    	}
    
    @RequestMapping(value="/web/delete.do")
	public String delete(@ModelAttribute("zipperVO")EgovZipperWebMainVO zipperVO,
			@ModelAttribute("page") projectLoginVO pageVO, 
			SessionStatus status, ModelMap model, HttpServletRequest request) throws Exception {
		MultipartHttpServletRequest mptRequest = (MultipartHttpServletRequest) request;
		Iterator<String> fileIter = mptRequest.getFileNames();
		String folderName = "";
		String convertedFileName = "";
		zipperVO.setFileDel("Y");
		if (zipperVO.getFileDel().equals("Y")) {
			if (!EgovCmsFileUtil.deleteFile(folderName, zipperVO.getSrvFile()).equals("")) {
				zipperVO.setUsrFile("");
				zipperVO.setSrvFile("");
			}
		}
		
    	zipperService.delete(zipperVO);
		List<EgovMap> list = zipperService.list(zipperVO);
		model.addAttribute("list", list);
    	return "redirect:/web/list.do";
    	}

		@RequestMapping("/web/chkDupOrgId.do")
		public String chkDupOrgId(@ModelAttribute("zipperVO") EgovZipperWebMainVO zipperVO, SessionStatus status,
				ModelMap model) throws Exception {
			int cnt = zipperService.chkDupOrgId(zipperVO);
			System.out.println("카운트 확인 : " + cnt);
			model.addAttribute("result", cnt);
			return "/zipper/_inc/ajaxResult";
			}
		
		@RequestMapping(value= "/web/myAjax2.do")
		public String myAjax2(@ModelAttribute("companyVO") EgovZipperWebMainVO companyVO,
				 ModelMap model,
				HttpServletRequest request) throws Exception{
			
			if(request.getParameter("status")=="0"){
				zipperService.statusUpdate(companyVO);
				zipperService.boardStatusUpdate(companyVO);
			}else{
				zipperService.statusUpdate(companyVO);
				zipperService.boardStatusUpdate(companyVO);
			}
		return "kab/adm/_inc/ajaxResult";
	}
		
		@RequestMapping(value= "/web/myAjax3.do")
		public String myAjax3(@ModelAttribute("companyVO") EgovZipperWebMainVO companyVO,
				 ModelMap model,
				HttpServletRequest request) throws Exception{
			if(request.getParameter("status")=="0"){
				zipperService.statusUpdate2(companyVO);
				zipperService.boardStatusUpdate2(companyVO);
			}else{
				zipperService.statusUpdate2(companyVO);
				zipperService.boardStatusUpdate2(companyVO);
			}
		return "kab/adm/_inc/ajaxResult";
	}
		
		
		
}