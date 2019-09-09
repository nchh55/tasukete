package global.sesoc.tasukete.dao;

import global.sesoc.tasukete.dto.Tasukete_user;

public interface UserMapper {
		// 로그인
		public Tasukete_user selectOne(Tasukete_user user);
		//회원가입
		public int signup(Tasukete_user user);
	
}
