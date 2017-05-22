package com.kosta.admin.controller.delivery;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DFrontController {
	@RequestMapping("/delivery.do")
	public String delivery(Model model){
		System.out.println("컨트롤러 들어옴");
		return "delivery.delivery";
	}
}