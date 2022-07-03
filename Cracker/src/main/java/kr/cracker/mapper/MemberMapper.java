package kr.cracker.mapper;

import java.util.List;

public interface MemberMapper {
	
	public void Join(MemberVO VO);
	
	public MemberVO login(MemberVO VO);
	
	public void edit(MemberVO VO);
	
	public List<MemberVO> users();

	public void update_ptcnt(String mb_id);

}
