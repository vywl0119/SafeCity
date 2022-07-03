package kr.cracker.mapper;

import java.util.List;

public interface NoticeMapper {
	
	
	public void notice_insert(NoticeVO VO);
	
	public List<NoticeVO> notice_list();
	
	public NoticeVO notice_content(int nt_seq);
	
	public void noticeUpdate(NoticeVO VO);

	public void noticeDelete(int nt_seq);

	public void count(int nt_seq);

}
