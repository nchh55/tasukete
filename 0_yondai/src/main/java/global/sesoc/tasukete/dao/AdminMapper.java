package global.sesoc.tasukete.dao;

import java.util.List;

import global.sesoc.tasukete.dto.Notice;

public interface AdminMapper {

	public List<Notice> notice_selectAll(Notice notice);

}
