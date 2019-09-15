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

/* 공지사항 게시글 전체 조회 */
	public List<Notice> notice_selectAll(){
		AdminMapper mapper = session.getMapper(AdminMapper.class);
		List<Notice> list = mapper.notice_selectAll(null);
		
		return list;
	}

/* 공지사항 게시글 조회 */	
	public Notice notice_selectOne(Notice notice) {
		System.out.println("리파지토리 테스트"+notice.getNoticeseq());
		AdminMapper mapper = session.getMapper(AdminMapper.class);
		Notice detail = mapper.notice_selectOne(notice);
		
		System.out.println(detail.getNotice_title());
		System.out.println(detail.getNotice_date());
		System.out.println(detail.getNotice_contents());
		System.out.println(detail.getUserid());
		
		return detail;
	}	
	
	
/* 공지사항 글 등록 처리 */
	public int notice_write(Notice notice) {
		
		/*
		System.out.println(notice.getNotice_title());
		System.out.println(notice.getNotice_date());
		System.out.println(notice.getNotice_contents());
		System.out.println(notice.getUserid());
		*/
		
		AdminMapper mapper = session.getMapper(AdminMapper.class);
		int result = mapper.notice_write(notice);
		
		return result;
	}



}
