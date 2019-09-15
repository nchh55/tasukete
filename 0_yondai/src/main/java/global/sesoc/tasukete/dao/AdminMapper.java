package global.sesoc.tasukete.dao;

import java.util.List;

import global.sesoc.tasukete.dto.Notice;

public interface AdminMapper {

	public List<Notice> notice_selectAll(Notice notice);

	public Notice notice_selectOne(Notice notice);
	
	public int notice_write(Notice notice);

	

}
