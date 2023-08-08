package com.Market.seller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/seller")
public class SellerController {

	
	/**
	 * 판매회원 로그인
	 * @param model
	 * @return
	 */
	@GetMapping("/seller_sign_in_view")
	public String sellerSignInView(Model model) {
		model.addAttribute("view", "seller/sellerSignIn");
		
		return "template/layout";
	}
	
	@GetMapping("/seller_sign_up_view")
	public String sellerSignUpView(Model model) {
		model.addAttribute("view", "seller/sellerSignUp");
		
		return "template/layout";
	}
}
 