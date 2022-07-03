package kr.cracker.web;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.cracker.mapper.MemberMapper;
import kr.cracker.mapper.MemberVO;
import kr.cracker.mapper.NoticeVO;
import kr.cracker.mapper.PotholeVO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class MemberController {

	@Inject
	private MemberMapper mapper;

	// 회원가입
	@PostMapping("/Join.do")
	public String insert(MemberVO VO) {
		mapper.Join(VO);
		return "redirect:/";
	}

	// 로그인
	@PostMapping(value = "/login.do")
	public String login(MemberVO VO, HttpServletRequest request) {

		HttpSession session = request.getSession();
		MemberVO info = mapper.login(VO);

		session.setAttribute("info", info);

		if (info != null)
			System.out.println("로그인 성공" + info);
		else
			System.out.println("로그인 실패");

		return "redirect:/";

	}

	// 로그아웃
	@RequestMapping("/logout.do")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("info");
		return "redirect:/";

	}

	// 회원정보수정
	@PostMapping("/edit.do")
	public String edit(MemberVO VO, HttpServletRequest request) {

		HttpSession session = request.getSession();
		mapper.edit(VO);
		session.removeAttribute("info");
		return "redirect:/";
	}

	// user 페이지 이동
	@RequestMapping("/user.do")
	public String user(MemberVO VO, HttpServletRequest request) {

		HttpSession session = request.getSession();
		List<MemberVO> users = mapper.users();

		session.setAttribute("users", users);

		users.size();

		return "redirect:/#users";
	}

	@RequestMapping("/update_ptcnt.do")
	public void update_ptcnt(@RequestParam("mb_id") String mb_id) {

		mapper.update_ptcnt(mb_id);
		System.out.println(mb_id);

	}

}
