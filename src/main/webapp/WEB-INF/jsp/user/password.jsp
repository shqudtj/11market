<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="d-flex justify-content-center">
	<div class="find-box">
		<div>비밀번호 재설정하기</div>
		
		
		
		<form id="findPasswordForm" action="/search/search_password" method="post">
	
			<div class="input-group mb-3 phoneNumber-box">
				<div class="input-group-prepend">
					<span class="input-group-text">비밀번호</span>
				</div>
				<input type="password" class="form-control" id="password" name="password" placeholder="비밀번호를 입력해주세요.">
			</div>
			<div class="input-group mb-3 phoneNumber-box">
				<div class="input-group-prepend">
					<span class="input-group-text">비밀번호 확인</span>
				</div>
				<input type="password" class="form-control" id="passwordCheck" name="passwordCheck" placeholder="비밀번호를 입력해주세요.">
			</div>

			<input type="submit" id="searchLoginId" class="btn btn-block btn-primary" value="비밀번호 변경">
		</form>
	</div>
	
	
</div>   