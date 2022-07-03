package kr.cracker.web;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.cracker.mapper.PotholeMapper;
import kr.cracker.mapper.PotholeVO;

@Controller
public class MoveController {

	@Inject
	private PotholeMapper mapper;

}
