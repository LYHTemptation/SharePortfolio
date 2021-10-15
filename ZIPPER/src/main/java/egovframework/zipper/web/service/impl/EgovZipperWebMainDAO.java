package egovframework.zipper.web.service.impl;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Repository;

import egovframework.cms.com.service.EgovCmsComFileVO;
import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import egovframework.zipper.web.service.EgovZipperWebMainVO;
import egovframework.zipper.web.service.projectLoginVO;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Repository("zipperDAO")
public class EgovZipperWebMainDAO extends EgovComAbstractDAO{
	
	public EgovZipperWebMainVO loginInfo(EgovZipperWebMainVO vo){
		return(EgovZipperWebMainVO)select("zipperMainDAO.LoginInfo",vo);
	}
	
	public EgovZipperWebMainVO  adminInfo(EgovZipperWebMainVO vo){
		return (EgovZipperWebMainVO) select("zipperMainDAO.adminInfo",vo);
	}
	
	public void insertInfo(EgovZipperWebMainVO vo){
		 insert("zipperDAO.insertInfo", vo);
	}
	
	@SuppressWarnings("unchecked")
	public List<EgovMap> list(EgovZipperWebMainVO vo) throws Exception{
		return (List<EgovMap>) list("zipperMainDAO.list",vo);
	}
	
	@SuppressWarnings("unchecked")
	public List<EgovMap> userInfo(EgovZipperWebMainVO vo) throws Exception{
		return (List<EgovMap>) list("zipperMainDAO.userInfo",vo);
	}
	
	
	public String listCnt(EgovZipperWebMainVO vo) throws Exception {
		return (String) select("zipperMainDAO.listCnt", vo);
	}
	
	public int listcount() throws Exception{
		return (int) select("zipperMainDAO.listCount");
	}
	
	@SuppressWarnings("unchecked")
	public EgovMap selectOne(EgovZipperWebMainVO vo){
		return  (EgovMap) select("zipperMainDAO.selectOne",vo);
	}
	
	public void delete(EgovZipperWebMainVO vo) throws Exception{
		delete("zipperDAO.Delete",vo);
	}
	
	public void update(EgovZipperWebMainVO vo) throws Exception{
		update("zipperDAO.Update", vo);
	}
	
	public int chkDupOrgId(EgovZipperWebMainVO vo) throws Exception {
		return (Integer) select("zipperDAO.chkDupOrgId", vo);
	}
	
	public String myCompanyInfoInsert(EgovZipperWebMainVO vo) throws Exception {
		return (String) insert("zipperDAO.myCompanyInfoInsert", vo);
	}
	
	public void statusUpdate(EgovZipperWebMainVO vo) throws Exception {
		update("zipperDAO.statusUpdate", vo);
	}

	public void statusUpdate2(EgovZipperWebMainVO vo) throws Exception {
		update("zipperDAO.statusUpdate2", vo);
	}
	
	public void boardStatusUpdate(EgovZipperWebMainVO vo) throws Exception {
		update("zipperDAO.boardStatusUpdate", vo);
	}

	public void boardStatusUpdate2(EgovZipperWebMainVO vo) throws Exception {
		update("zipperDAO.boardStatusUpdate2", vo);
	}

/*	*//** log *//*
	protected static final Log LOG = LogFactory.getLog(EgovCmsComzipperDAO.class);*/
	
	public void fileInsert(EgovZipperWebMainVO vo) throws Exception {					// insert
        insert("zipperDAO.fileInsert", vo);
   }
	public void fileUpdate(EgovZipperWebMainVO vo) throws Exception {					// insert
        insert("zipperDAO.fileUpdate", vo);
   }
	public void fileDelete(EgovZipperWebMainVO vo) throws Exception {					// delete
        delete("zipperDAO.fileDelete", vo);
   }
	public void fileDeleteAll(EgovZipperWebMainVO vo) throws Exception {					// deleteAll
        delete("zipperDAO.fileDeleteAll", vo);
   }
	
	@SuppressWarnings("unchecked")
 	public List<EgovCmsComFileVO> selectFileList(EgovZipperWebMainVO vo) throws Exception {			// list
         return (List<EgovCmsComFileVO>) list("zipperDAO.selectFileList", vo);
    }
	@SuppressWarnings("unchecked")
 	public List<EgovCmsComFileVO> selectFileDelList(EgovZipperWebMainVO vo)				// list
             throws Exception {
         return (List<EgovCmsComFileVO>) list("zipperDAO.selectFileDelList", vo);
    }
	// select by Id
 	public EgovCmsComFileVO fileSelectById(EgovZipperWebMainVO vo) throws Exception {	 // select idx
    	return (EgovCmsComFileVO)select("zipperDAO.fileSelectById", vo);
    }
 	
 // select by Id
  	public EgovCmsComFileVO fileSelectByIdPath(EgovZipperWebMainVO vo) throws Exception {	 // select idx
     	return (EgovCmsComFileVO)select("zipperDAO.fileSelectByIdPath", vo);
     }
		
}

