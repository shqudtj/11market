package com.Market.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/user")
@Controller
public class UserController {

	@GetMapping("/sign_up_view")
	public String signUpView(Model model) {
		model.addAttribute("view", "user/signUp");
		
		return "template/layout";
	}
	
	@GetMapping("/sign_in_view")
	public String signInView(Model model) {
		model.addAttribute("view", "user/signIn");
		
		return "template/layout";
	}
	
	@GetMapping("/myOrder_view")
	public String myOrderView(Model model) {
		model.addAttribute("view", "user/myOder");
		
		return "template/layout";
	}
	
	@GetMapping("/myCoupon_view")
	public String myCouponView(Model model) {
		model.addAttribute("view", "user/myCoupon");
		
		return "template/layout";
	}
	
	@GetMapping("/myPost_qna_view")
	public String myPostQnaView(Model model) {
		model.addAttribute("view", "user/myPostQna");
		
		return "template/layout";
	}
	
	@GetMapping("/myPost_qna_detail_view")
	public String myPostQnaDetailView(Model model) {
		model.addAttribute("view", "user/myPostQnaDetail");
		
		return "template/layout";
	}
	
	@GetMapping("/myPost_review_view")
	public String myPostReviewView(Model model) {
		model.addAttribute("view", "user/myPostReview");
		
		return "template/layout";
	}
	
	@GetMapping("/myPost_review_detail_view")
	public String myPostReviewDetailView(Model model) {
		model.addAttribute("view", "user/myPostReviewDetail");
		
		return "template/layout";
	}
	
	@GetMapping("/myPost_message_view")
	public String myPostMessageView(Model model) {
		model.addAttribute("view", "user/myPostMessage");
		
		return "template/layout";
	}
	
	@GetMapping("/mySetting_view")
	public String mySettingView(Model model) {
		model.addAttribute("view", "user/mySetting");
		
		return "template/layout";
	}
	
	@GetMapping("/mySetting_check_view")
	public String mySettingCheckView(Model model) {
		model.addAttribute("view", "user/check");
		
		return "template/layout";
	}
	
	@GetMapping("/mySetting_password_view")
	public String mySettingPasswordView(Model model) {
		model.addAttribute("view", "user/password");
		
		return "template/layout";
	}
	
	@GetMapping("/announcement_view")
	public String announcementView(Model model) {
		model.addAttribute("view", "user/announcement");
		
		return "template/layout";
	}
	
	@GetMapping("/announcement_detail_view")
	public String announcementDetailView(Model model) {
		model.addAttribute("view", "user/announcementDetail");
		
		return "template/layout";
	}
	
	@GetMapping("/basket_view")
	public String basketView(Model model) {
		model.addAttribute("view", "user/basket");
		
		return "template/layout";
	}
}
