package com.Market.find;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/find")
public class FindController {

	@GetMapping("/find_loginId_view")
	public String findLoginIdView(Model model) {
		model.addAttribute("view", "find/loginId");
		
		return "template/layout";		
	}
}
