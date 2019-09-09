package global.sesoc.tasukete.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import global.sesoc.tasukete.dto.Tasukete_user;

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
}

