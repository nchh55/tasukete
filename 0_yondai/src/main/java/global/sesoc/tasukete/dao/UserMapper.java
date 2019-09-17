package global.sesoc.tasukete.dao;

import java.util.List;


import global.sesoc.tasukete.dto.Report;
import global.sesoc.tasukete.dto.Request;
import global.sesoc.tasukete.dto.Suggestion;
import global.sesoc.tasukete.dto.Tasukete_user;

public interface UserMapper {
		// 로그인
		public Tasukete_user selectOne(Tasukete_user user);
		//회원가입
		public int signup(Tasukete_user user);
		//건의사항
		public List<Suggestion> suggestion_selectAll(Suggestion suggestion);
		//요청하기
		public List<Request> request_selectAll(Request request);
		//신고하기
		public int report(Report report);
		//건의하기 글 올리기
		public int suggestion(Suggestion suggestion); 
		//건의디테일
		public Suggestion selectOne(int suggestionseq);
}
