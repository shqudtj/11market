package com.Market.search;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/search")
public class SearchController {

	@GetMapping("/search_loginId_view")
	public String searchLoginIdView(Model model) {
		model.addAttribute("view", "search/loginId");
		
		return "template/layout";		
	}
	
	@GetMapping("/search_password_view")
	public String searchPasswordView(Model model) {
		model.addAttribute("view", "search/password");
		
		return "template/layout";		
	}
}
