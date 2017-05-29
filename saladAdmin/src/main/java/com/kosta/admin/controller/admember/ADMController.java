package com.kosta.admin.controller.admember;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.kosta.admin.dao.admember.ADMemberDAO;
import com.kosta.admin.dto.admember.AdMemberDto;

@Controller
@RequestMapping("/admember/")
public class ADMController {

	@Resource
	private ADMemberDAO memberdao;
	
	/*****로그인 처리*****/
	@RequestMapping("/login.do")
	public String Login(Model model,AdMemberDto dto){
		String member_id = memberdao.idCheck(dto);
		if(member_id.equals("id_false")) { //아이디가 없을시에
			model.addAttribute("id_false", "id_false");
			return "home.index";
		} else { //아이디가 있을시에
			String member_pwd = memberdao.pwdCheck(dto);
			if(member_pwd.equals("pwd_false")){ //비밀번호가 다를시에
				model.addAttribute("pwd_false", "pwd_false"); 
				return "home.index";
			} else { //비밀번호가 일치할시에
				model.addAttribute(member_id); //아이디 비밀번호가 일치시에 세션유지를 위해 아이디 넘김
				return "delivery.delivery";	
			}	
		}
	}
}
