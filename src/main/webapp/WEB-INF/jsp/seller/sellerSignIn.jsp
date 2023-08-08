<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="d-flex justify-content-center">
	<div class="login-box">
		<h1 class="mb-4">판매회원 로그인</h1>
		
		<form id="loginForm" action="/user/sign_in" method="post">
			<div class="input-group mb-3">

				<div class="input-group-prepend">
					<span class="input-group-text">ID</span>
				</div>
				<input type="text" class="form-control" id="loginId" name="loginId" placeholder="아이디를 입력해주세요">
			</div>
	
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text">PW</span>
				</div>
				<input type="password" class="form-control" id="password" name="password" placeholder="****">
			</div>

			
			<input type="submit" id="loginBtn" class="btn btn-block btn-primary" value="로그인">
			<a class="btn btn-block btn-dark" href="/seller/seller_sign_up_view">회원가입</a>
			
			<a class="btn btn-block btn-primary" href="/user/sign_in_view">구매회원 로그인</a>
		</form>
	</div>
</div>
<script>
$(document).ready(function() {
		//alert("준비완료");
		
		// 로그인
		$('#loginForm').on('submit', function(e) {
			//alert("ㅎㅇㅎㅇ");
			e.preventDefault(); // form submit 중단
			
			let loginId = $('input[name=loginId]').val().trim();
			let password = $('#password').val();

			if (!loginId) {
				alert("아이디를 입력하세요");
				return false;
			}
			if (password.length < 1) {
				alert("비밀번호를 입력하세요");
				return false;
			}
			
			let url = $(this).attr("action");
			console.log(url);
			let params = $(this).serialize();	// form의 name 속성으로 data를 구성함
			console.log(params);
			
			$.post(url, params)	// request
			.done(function(data) {
				if (data.code == 1) {
					location.href="/seller/product_main_view"; // 이거말고 이전페이지로 가게하기?
				} else {
					alert(data.errerMessage);
				}
			});
			
		}); // 로그인 끝
		
	});
</script>