<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="d-flex justify-content-center">
	<div class="find-box">
		<div>비밀번호 재설정하기</div>
		
		
		
		<form id="findPasswordForm" action="/search/search_password" method="post">
			<label><input type="radio" name="type" value="phoneNumber" checked>휴대폰으로 찾기</label>
			<label><input type="radio" name="type" value="email">이메일로 찾기</label>
			
			
			
	
			<div class="input-group mb-3 phoneNumber-box">
				<div class="input-group-prepend">
					<span class="input-group-text">휴대폰 번호</span>
				</div>
				<input type="text" class="form-control" id="phoneNumber" name="phoneNumber" placeholder="휴대폰 번호를 -없이 입력해주세요.">
			</div>


			<div class="input-group mb-3 email-box d-none">
				<div class="input-group-prepend">
					<span class="input-group-text">이메일</span>
				</div>
				<input type="text" class="form-control" id="email" name="email" placeholder="이메일을 입력해주세요.">
			</div>
			
			<input type="submit" id="searchLoginId" class="btn btn-block btn-primary" value="비밀번호 변경">
		</form>
	</div>
	
	
</div>    