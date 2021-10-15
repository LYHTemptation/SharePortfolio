package egovframework.zipper.web.service;

import egovframework.zipper.web.service.EgovZipperWebMainVO;
import egovframework.zipper.web.service.projectLoginVO;

import java.util.List;
import java.util.Map;

import egovframework.cms.com.service.EgovCmsComFileVO;
import egovframework.rte.psl.dataaccess.util.EgovMap;
/**
 * 사용자(인증기관) 로그인 Service
 * @author
 * @since 
 * @version 1.0
 * @see
 */
public interface EgovZipperWebMainService {

	/**
	 * 인증기관 스킴 등록 Ajax
	 * @param vo
	 * @throws Exception
	 */

	public EgovZipperWebMainVO loginInfo(EgovZipperWebMainVO vo) throws Exception;

	public EgovZipperWebMainVO adminInfo(EgovZipperWebMainVO vo) throws Exception;
	
	public void insertInfo(EgovZipperWebMainVO vo) throws Exception;
	
	public List<EgovMap> list(EgovZipperWebMainVO zipperVO) throws Exception;
	
	public List<EgovMap> userInfo(EgovZipperWebMainVO zipperVO) throws Exception;
	
	public int listCount() throws Exception;
	
	public EgovMap selectOne(EgovZipperWebMainVO vo) throws Exception;
	
	public void update(EgovZipperWebMainVO vo) throws Exception;
	
	public void delete(EgovZipperWebMainVO vo ) throws Exception;
	
	public Map<String, Object> selectCompanyList(EgovZipperWebMainVO vo) throws Exception;
	
	public int chkDupOrgId(EgovZipperWebMainVO companyVO) throws Exception;
	
	public String myCompanyInfoInsert(EgovZipperWebMainVO vo) throws Exception;
	
	public void statusUpdate(EgovZipperWebMainVO vo)throws Exception;
	public void statusUpdate2(EgovZipperWebMainVO vo)throws Exception;
	
	public void boardStatusUpdate(EgovZipperWebMainVO vo)throws Exception;
	public void boardStatusUpdate2(EgovZipperWebMainVO vo)throws Exception;
	
	// 파일 db등록
	void fileInsert(EgovZipperWebMainVO vo) throws Exception;
	void fileUpdate(EgovZipperWebMainVO vo) throws Exception;
	void fileDelete(EgovZipperWebMainVO vo) throws Exception;
	void fileDeleteAll(EgovZipperWebMainVO vo) throws Exception;
	public Map<String, Object> selectFileDelList(EgovZipperWebMainVO vo) throws Exception;
	public List<EgovCmsComFileVO> selectFileList(EgovZipperWebMainVO vo) throws Exception;
	EgovCmsComFileVO fileSelectById(EgovZipperWebMainVO vo) throws Exception;
	EgovCmsComFileVO fileSelectByIdPath(EgovZipperWebMainVO vo) throws Exception;
}
