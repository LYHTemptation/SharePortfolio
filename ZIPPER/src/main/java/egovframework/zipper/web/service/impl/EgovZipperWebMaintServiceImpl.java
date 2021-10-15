package egovframework.zipper.web.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.cms.com.service.EgovCmsComFileVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.zipper.web.service.EgovZipperWebMainService;
import egovframework.zipper.web.service.EgovZipperWebMainVO;
import egovframework.zipper.web.service.projectLoginVO;
import egovframework.rte.psl.dataaccess.util.EgovMap;



@Service("zipperService")
public class EgovZipperWebMaintServiceImpl extends EgovAbstractServiceImpl implements EgovZipperWebMainService{

	@Resource(name = "zipperDAO")
	private EgovZipperWebMainDAO zipperDAO;

	@Override
	public EgovZipperWebMainVO loginInfo(EgovZipperWebMainVO vo) throws Exception {
		return zipperDAO.loginInfo(vo);
	}
	
	@Override
	public EgovZipperWebMainVO adminInfo(EgovZipperWebMainVO vo) throws Exception{
		return zipperDAO.adminInfo(vo);
	}
	@Override
	public void insertInfo(EgovZipperWebMainVO vo) throws Exception{
		 zipperDAO.insertInfo(vo);
	}
	
	@Override
	public List<EgovMap> list(EgovZipperWebMainVO vo) throws Exception{
		return zipperDAO.list(vo);
	}
	
	@Override
	public List<EgovMap> userInfo(EgovZipperWebMainVO vo) throws Exception{
		return zipperDAO.userInfo(vo);
	}
	
	@Override
	public int listCount() throws Exception{
		return zipperDAO.listcount();
	}
	
	@Override
	public EgovMap selectOne(EgovZipperWebMainVO vo) throws Exception{
		return zipperDAO.selectOne(vo);
	}

	@Override
	public void update(EgovZipperWebMainVO vo) throws Exception {
		 zipperDAO.update(vo);
	}

	@Override
	public void delete(EgovZipperWebMainVO vo) throws Exception {
		 zipperDAO.delete(vo);
	}
	
	
	@Override
	public Map<String, Object> selectCompanyList(EgovZipperWebMainVO vo) throws Exception{
		List<EgovMap> companyList = zipperDAO.list(vo);
		String totalCnt = zipperDAO.listCnt(vo);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("companyList", companyList);
		map.put("totalCnt", totalCnt);
		return map;
	}
	
	@Override
	public int chkDupOrgId(EgovZipperWebMainVO vo) throws Exception {
		return zipperDAO.chkDupOrgId(vo);
	}
	
	@Override
	public String myCompanyInfoInsert(EgovZipperWebMainVO vo) throws Exception{
		String lastInsertIdx = zipperDAO.myCompanyInfoInsert(vo);		//기관 정보 입력

		return lastInsertIdx;
	}
	
	@Override
	public void statusUpdate(EgovZipperWebMainVO vo) throws Exception {
		zipperDAO.statusUpdate(vo);		
	}
	
	@Override
	public void statusUpdate2(EgovZipperWebMainVO vo) throws Exception {
		zipperDAO.statusUpdate2(vo);		
	}
	
	@Override
	public void boardStatusUpdate(EgovZipperWebMainVO vo) throws Exception {
		zipperDAO.boardStatusUpdate(vo);		
	}
	
	@Override
	public void boardStatusUpdate2(EgovZipperWebMainVO vo) throws Exception {
		zipperDAO.boardStatusUpdate2(vo);		
	}
	
	// file insert
		@Override
		public void fileInsert(EgovZipperWebMainVO fileVO)	throws Exception {
			zipperDAO.fileInsert(fileVO);
		}
		// file update
		@Override
		public void fileUpdate(EgovZipperWebMainVO fileVO)	throws Exception {
			zipperDAO.fileUpdate(fileVO);
		}
		
		@Override
		public void fileDelete(EgovZipperWebMainVO fileVO)	throws Exception {
			zipperDAO.fileDelete(fileVO);
		}
		@Override
		public void fileDeleteAll(EgovZipperWebMainVO fileVO)	throws Exception {
			zipperDAO.fileDeleteAll(fileVO);
		}

		@Override
		public List<EgovCmsComFileVO> selectFileList(EgovZipperWebMainVO vo) throws Exception {
			return zipperDAO.selectFileList(vo);
		}
		@Override
		public Map<String, Object> selectFileDelList(EgovZipperWebMainVO vo)
				throws Exception {
			// TODO Auto-generated method stub
			List<EgovCmsComFileVO> result = zipperDAO.selectFileDelList(vo);
			//int cnt = zipperDAO.selectContentsBannerListCnt(vo);
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("resultDelList", result);
			//map.put("resultCnt", Integer.toString(cnt));
			return map;
		}
		// banner select by idx
		@Override
		public EgovCmsComFileVO fileSelectById(
				EgovZipperWebMainVO vo) throws Exception {
			// TODO Auto-generated method stub
			return zipperDAO.fileSelectById(vo);
		}
		
		@Override
		public EgovCmsComFileVO fileSelectByIdPath(
				EgovZipperWebMainVO vo) throws Exception {
			// TODO Auto-generated method stub
			return zipperDAO.fileSelectByIdPath(vo);
		}
}
