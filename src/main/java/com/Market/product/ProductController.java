package com.Market.product;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/product")
public class ProductController {

	@GetMapping("/main_view")
	public String mainView(Model model) {
		model.addAttribute("view", "product/productMain");
		
		return "template/layout";
	}
}
