package global.sesoc.tasukete.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.tasukete.dao.AdminMapper;
import global.sesoc.tasukete.dto.Notice;

@Repository
public class AdminRepository {
	
	@Autowired
	SqlSession session;
	
	public List<Notice> notice_selectAll(){
		AdminMapper mapper = session.getMapper(AdminMapper.class);
		List<Notice> noticeList = mapper.notice_selectAll(null);
		
		return noticeList;
	}

}
