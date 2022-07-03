package kr.cracker.web;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.cracker.mapper.MemberMapper;
import kr.cracker.mapper.MemberVO;
import kr.cracker.mapper.NoticeMapper;
import kr.cracker.mapper.NoticeVO;

@Controller
public class NoticeController {

	@Inject
	private NoticeMapper mapper;

	// 공지사항 페이지 이동 및 공지사항 데이터 불러오기
	@RequestMapping("/notice.do")
	public String notice(HttpServletRequest request) {
		HttpSession session = request.getSession();
		System.out.println("공지사항실행");

		List<NoticeVO> notice_list = mapper.notice_list();
		session.setAttribute("notice_list", notice_list);
		return "redirect:/#notice";
	}

	// 공지사항 글쓰기
	@PostMapping("/noticeinsert.do")
	public String noticeinsert(NoticeVO VO) {
		mapper.notice_insert(VO);
		return "redirect:/notice.do";

	}

	// 공지사항 글쓰기 페이지 이동
	@RequestMapping("/notice_add.do")
	public String noticeinsert(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("notice_content");
		return "redirect:/#notice_addedit";
	}

	// 클릭한 게시물 불러오기 및 게시글 내용 페이지 이동
	@RequestMapping("/noticeContent.do")
	public String noticeContent(@RequestParam("nt_seq") int nt_seq, HttpServletRequest request) {
		HttpSession session = request.getSession();
		NoticeVO notice_content = mapper.notice_content(nt_seq);
		session.setAttribute("notice_content", notice_content);
		mapper.count(nt_seq);
		return "redirect:/#notice_content";

	}

	// 공지사항 수정
	@PostMapping("/noticeUpdate.do")
	public String noticeUpdate(NoticeVO VO) {
		mapper.noticeUpdate(VO);
		return "redirect:/notice.do";
	}

	// 공지사항 삭제
	@RequestMapping("/noticeDelete.do")
	public String noticeDelete(@RequestParam("nt_seq") int nt_seq) {
		mapper.noticeDelete(nt_seq);
		return "redirect:/notice.do";
	}

}
