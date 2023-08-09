package com.Market.user.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.Market.user.dao.UserRepository;
import com.Market.user.entity.UserEntity;

@Service
public class UserBO {

	@Autowired
	private UserRepository userRepository;
	
	// input: loginId
	// output: UserEntity(null or 채워져 있거나)
	public UserEntity getUserEntityByLoginId(String loginId) {
		return userRepository.findByLoginId(loginId);
	}
	
	// input: user 관련 파라미터들 (loginId등)
	// output: UserEntity => id pk 추출
	public Integer addUser(String loginId, String password, String name, String phoneNumber, String email, String type) {
		// save
		UserEntity userEntity = userRepository.save(
				UserEntity.builder()
				.loginId(loginId)
				.password(password)
				.name(name)
				.phoneNumber(phoneNumber)
				.email(email)
				.type(type)
				.build()
				);
	
		
		return userEntity == null ? null : userEntity.getId(); // pk만 리턴
	}
	
	// input: loginId, password
	// output: UserEntity
	public UserEntity getUserEntityByLoginIdAndPassword(String loginId, String password) {
		return userRepository.findByLoginIdAndPassword(loginId, password);
	}
	
	public UserEntity getUserEntityByNameAndPhoneNumberAndEmail(String name, String phoneNumber, String email) {
		
		if (phoneNumber == null) {
			return userRepository.findByNameAndEmail(name, email);
		}
		
		if (email == null) {
			return userRepository.findByNameAndEmail(name, phoneNumber);
		}
		
		return userRepository.findByNameAndPhoneNumberAndEmail(name, phoneNumber, email);
	}
}
