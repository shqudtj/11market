package com.Market.user;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.Market.user.bo.UserBO;
import com.Market.user.entity.UserEntity;

@RequestMapping("/user")
@RestController
public class UserRestController {

	@Autowired
	private UserBO userBO;
	
	/**
	 * 아이디 중복확인 API
	 * @param loginId
	 * @return
	 */
	@RequestMapping("/is_duplicated_id")
	public Map<String, Object> isDupliactedId(
				@RequestParam("loginId") String loginId
			) {
		
		Map<String, Object> result = new HashMap<>();
		
		// select
		UserEntity userEntity = userBO.getUserEntityByLoginId(loginId);
		
		if (userEntity != null) {
			result.put("code", 1);
			result.put("isDuplicatedId", true);
		} else {
			result.put("code", 1);
			result.put("isDuplicatedId", false);
		}
		
		return result;
	}
	
	@PostMapping("/sign_up")
	public Map<String, Object> signUp(
				@RequestParam("loginId") String loginId,
				@RequestParam("password") String password,
				@RequestParam("name") String name,
				@RequestParam("phoneNumber") String phoneNumber,
				@RequestParam("email") String email,
				@RequestParam("type") String type
			) {
		
		// 비밀번호해싱 구현
		
		// db insert
		Integer userId = userBO
		
				Map<String, Object> result = new HashMap<>();
		if (userId != null) {
			result.put("code" , 1);
			result.put("result" , "성공");
		} else {
			result.put("code" , 500);
			result.put("errorMessage" , "회원가입 하는데 실패했습니다.");
		}
		
		return result;
	}
	
	@PostMapping("sign_in")
	public Map<String, Object> signIn(
				@RequestParam("loginId") String loginId,
				@RequestParam("password") String password,
				HttpSession session
			) {
	
		// passwordhashing
		
		// loginId, hashedPassord로 userEntity채우기
		UserEntity userEntity = userBO.getUserEntityByLoginIdAndPassword(loginId, password);
		
		Map<String, Object> result = new HashMap<>();
		if (userEntity != null) {
			// 로그인 처리 이렇게해야 나중에 페이지에 아이디 이름등을 따올 수 있음
			session.setAttribute("userId", userEntity.getId());
			session.setAttribute("userLoginId", userEntity.getLoginId());
			session.setAttribute("userName", userEntity.getName());
			
			result.put("code", 1);
			result.put("result", "성공");
		} else {
			// 로그인 불가
			
			result.put("code", 500);
			result.put("result", "존재하지 않는 사용자입니다.");
		}
		
		return result;
	}
	
}
