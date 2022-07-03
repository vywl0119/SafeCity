package kr.cracker.web;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.cracker.mapper.MemberVO;
import kr.cracker.mapper.NoticeVO;
import kr.cracker.mapper.PotholeMapper;
import kr.cracker.mapper.PotholeVO;

@Controller
public class PotholeController {

	@Inject
	private PotholeMapper mapper;

	// 포트홀 신고내역 불러오기 및 포트홀페이지 이동
	@RequestMapping("/loadpothole.do")
	public String loadpothole(HttpServletRequest request) {
		HttpSession session = request.getSession();
		System.out.println("포트홀실행");
		MemberVO info = (MemberVO) session.getAttribute("info");

		List<PotholeVO> pothole_n = mapper.pothole_n();
		session.setAttribute("pothole_n", pothole_n);

		List<PotholeVO> pothole_y = mapper.pothole_y();
		session.setAttribute("pothole_y", pothole_y);

		if (info != null) {

			String mb_id = info.getMb_id();

			List<PotholeVO> my_potholeY = mapper.my_potholeY(mb_id);
			session.setAttribute("my_potholeY", my_potholeY);
			List<PotholeVO> my_potholeN = mapper.my_potholeN(mb_id);
			session.setAttribute("my_potholeN", my_potholeN);

		}
		return "redirect:/#contact";

	}

	// 지도 페이지 이동
	@RequestMapping("/loadmap.do")
	public String map(HttpServletRequest request) {
		HttpSession session = request.getSession();
		List<PotholeVO> map_pothole = mapper.pothole_n();
		session.setAttribute("map_pothole", map_pothole);
		session.removeAttribute("pt_latitude");
		session.removeAttribute("pt_longitude");

		return "redirect:/#map";
	}

	// 클릭한 게시물 불러오기 및 게시글 내용 페이지 이동
	@RequestMapping("/map_pothole.do")
	public String map_pothole(@RequestParam("pt_seq") int pt_seq, HttpServletRequest request) {
		HttpSession session = request.getSession();
		List<PotholeVO> map_pothole = mapper.pothole_n();

		double pt_latitude = mapper.pt_latitude(pt_seq);
		session.setAttribute("pt_latitude", pt_latitude);

		double pt_longitude = mapper.pt_longitude(pt_seq);
		session.setAttribute("pt_longitude", pt_longitude);

		session.setAttribute("map_pothole", map_pothole);

		return "redirect:/#map";

	}

	// 보수완료가 되면 이동
	@RequestMapping("/pothole_yn.do")
	public String pothole_yn(@RequestParam("pt_seq") int pt_seq) {

		mapper.pothole_yn(pt_seq);

		return "redirect:/loadpothole.do";

	}

	// 보수완료가 되면 이동
	@RequestMapping("/loadvideo.do")
	public String loadvideo(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String pt_video = mapper.pt_video();
		session.setAttribute("pt_video", pt_video);
		System.out.println(pt_video);

		return "redirect:/#video";

	}

}
