package com.Market.search;

import java.util.HashMap;
import java.util.Map;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.Market.user.bo.UserBO;
import com.Market.user.entity.UserEntity;

@RestController
@RequestMapping("/search")
public class SearchRestController {
	
	private UserBO userBO;


	@PostMapping("/search_logindId")
	public Map<String, Object> searchLoginId(
				@RequestParam("name") String name,
				@RequestParam("phoneNumber") String phoneNumber,
				@RequestParam("email") String email
			) {
	
		Map<String, Object> result = new HashMap<>();
		
		// 파라미터들 db에 있는지 검사
		UserEntity userEntity = userBO.getUserEntityByNameAndPhoneNumberAndEmail(name, phoneNumber, email);
		
		if (userEntity != null) {
			result.put("code", 1);
			result.put("isExistId", true);
		} else {
			result.put("code", 1);
			result.put("isExistId", false);
		}
		
		return result;
		
		
		// 있으면 해당 아이디의 비밀번호 가르쳐 주기
		
		
	}
	
}







