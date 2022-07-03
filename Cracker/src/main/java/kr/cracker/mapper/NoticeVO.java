package kr.cracker.mapper;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class NoticeVO {
	private int nt_seq;
	private String mb_id;
	private String nt_title;
	private String nt_content;
	private int nt_cnt;
	private String nt_date;
	public int getNt_seq() {
		return nt_seq;
	}
	public void setNt_seq(int nt_seq) {
		this.nt_seq = nt_seq;
	}
	public String getMb_id() {
		return mb_id;
	}
	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}
	public String getNt_title() {
		return nt_title;
	}
	public void setNt_title(String nt_title) {
		this.nt_title = nt_title;
	}
	public String getNt_content() {
		return nt_content;
	}
	public void setNt_content(String nt_content) {
		this.nt_content = nt_content;
	}
	public int getNt_cnt() {
		return nt_cnt;
	}
	public void setNt_cnt(int nt_cnt) {
		this.nt_cnt = nt_cnt;
	}
	public String getNt_date() {
		return nt_date;
	}
	public void setNt_date(String nt_date) {
		this.nt_date = nt_date;
	}
	
}
