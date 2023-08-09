package com.Market.user.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.Market.user.entity.UserEntity;

@Repository
public interface UserRepository extends JpaRepository<UserEntity, Integer> {
	
	public UserEntity findByLoginId(String loginId);

	public UserEntity findByLoginIdAndPassword(String loginId, String password);
	
	public UserEntity findByNameAndPhoneNumberAndEmail(String name, String phoneNumber, String email);
	
	public UserEntity findByNameAndPhoneNumber(String name, String phoneNumber);
	
	public UserEntity findByNameAndEmail(String name, String email);
}
