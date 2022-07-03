package kr.cracker.mapper;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PotholeVO {
	private int pt_seq;
	private double pt_latitude;
	private double pt_longitude;
	private String mb_id;
	private String pt_pic;
	private String pt_date;
	private String pt_yn;
	private String pt_video;
	public int getPt_seq() {
		return pt_seq;
	}
	public void setPt_seq(int pt_seq) {
		this.pt_seq = pt_seq;
	}
	public double getPt_latitude() {
		return pt_latitude;
	}
	public void setPt_latitude(double pt_latitude) {
		this.pt_latitude = pt_latitude;
	}
	public double getPt_longitude() {
		return pt_longitude;
	}
	public void setPt_longitude(double pt_longitude) {
		this.pt_longitude = pt_longitude;
	}
	public String getMb_id() {
		return mb_id;
	}
	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}
	public String getPt_pic() {
		return pt_pic;
	}
	public void setPt_pic(String pt_pic) {
		this.pt_pic = pt_pic;
	}
	public String getPt_date() {
		return pt_date;
	}
	public void setPt_date(String pt_date) {
		this.pt_date = pt_date;
	}
	public String getPt_yn() {
		return pt_yn;
	}
	public void setPt_yn(String pt_yn) {
		this.pt_yn = pt_yn;
	}
	public String getPt_video() {
		return pt_video;
	}
	public void setPt_video(String pt_video) {
		this.pt_video = pt_video;
	}

}
