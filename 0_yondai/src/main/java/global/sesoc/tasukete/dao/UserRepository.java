package global.sesoc.tasukete.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import global.sesoc.tasukete.dto.Report;
import global.sesoc.tasukete.dto.Request;
import global.sesoc.tasukete.dto.Suggestion;
import global.sesoc.tasukete.dto.Tasukete_user;
import global.sesoc.tasukete.dao.UserMapper;
import global.sesoc.tasukete.dto.Suggestion;

/**
 * 회원 관련 DAO
 */
@Repository
public class UserRepository {

	@Autowired
	SqlSession session;

	//로그인
	public Tasukete_user selectOne(Tasukete_user user) {
		UserMapper mapper = session.getMapper(UserMapper.class);
		Tasukete_user m = mapper.selectOne(user);
		return m;
	}
	//회원가입
	public int signup(Tasukete_user user) {
		UserMapper mapper = session.getMapper(UserMapper.class);
	
		return mapper.signup(user);
	}
	//건의사항
	public List<Suggestion> suggestion_selectAll(){
		UserMapper mapper = session.getMapper(UserMapper.class);
		List<Suggestion> suggestionList = mapper.suggestion_selectAll(null);
		
		return suggestionList;
	}
	//요청목록
	public List<Request> request_selectAll(){
		UserMapper mapper = session.getMapper(UserMapper.class);
		List<Request> request = mapper.request_selectAll(null);
			
		return request;
		}
	//신고하기
	public int report(Report report) {
		UserMapper mapper = session.getMapper(UserMapper.class);
	
		return mapper.report(report);
	}
	//건의 글 올리기
	public int suggestion(Suggestion suggestion) {
		UserMapper mapper = session.getMapper(UserMapper.class);
	
		return mapper.suggestion(suggestion);
	}
	//건의디테일
	public Suggestion selectOne(int suggestionseq) {
		UserMapper mapper = session.getMapper(UserMapper.class); 
		Suggestion suggestion = mapper.selectOne(suggestionseq);
		
		return suggestion;
	}
}

