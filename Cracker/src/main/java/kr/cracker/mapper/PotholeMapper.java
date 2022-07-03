package kr.cracker.mapper;

import java.util.List;

public interface PotholeMapper {
	
	public List<PotholeVO> my_potholeY(String mb_id);
	
	public List<PotholeVO> my_potholeN(String mb_id);
	
	public List<PotholeVO> all_pothole();
	
	public List<PotholeVO> map_pothole(int pt_seq);
	
	public double pt_latitude(int pt_seq);
	
	public double pt_longitude(int pt_seq);
	
	public List<PotholeVO> pothole_n();
	
	public List<PotholeVO> pothole_y();
	
	public void pothole_yn(int pt_seq);
	
	public String pt_video();


	
}
