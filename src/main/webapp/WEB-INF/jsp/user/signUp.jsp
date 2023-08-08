<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="d-flex justify-content-center">
	<div>
		<form id="signUpForm" method="post" action="/user/sign_up">
			<div class="signUpBox">
				<div>ID</div>
				<div>
					<input type="text" id="loginId" name="loginId" class="form-control" placeholder="id를 입력해주세요.">
					<button id="loginIdCheckBtn" type="button" class="btn bg-primary text-white">중복확인</button>
				</div>
					<div id="idCheckLength" class="small text-danger d-none">ID를 4자 이상 입력해주세요.</div>
					<div id="idCheckDuplicated" class="small text-danger d-none">이미 사용중인 ID입니다.</div>
					<div id="idCheckOk" class="small text-success d-none">사용 가능한 ID 입니다.</div>
				
				<div>password</div>
				<input type="password" id="password" name="password" placeholder="****" class="form-control">
				<div>passwordConfirm</div>
				<input type="password" id="passwordConfirm" name="passwordConfirm" placeholder="****" class="form-control">
				<div>이름</div>
				<input type="text" id="name" name="name" placeholder="이름을 입력해주세요" class="form-control">
				<div>휴대폰 번호</div>
				<input type="text" id="phoneNumber" name="phoneNumber" placeholder="휴대폰 번호를 입력해주세요" class="form-control">
				<div>이메일</div>
				<input type="text" id="email" name="email"  placeholder="이메일을 입력해주세요" class="form-control">
				<div>타입</div>
				<input type="text" id="type" name="type"  placeholder="임시타입중" class="form-control">
				<button type="submit" class="btn btn-primary text-white mt-2">회원가입</button>
			</div> 
		</form>
	</div>
</div>
<script>
	$(document).ready(function () {
		//alert("준비완료");
		
		// 중복확인
		$("#loginIdCheckBtn").on('click', function() {
			//alert("중복클릭");
			
			$('#idCheckLength').addClass('d-none');
			$('#idCheckDuplicated').addClass('d-none');
			$('#idCheckOk').addClass('d-none');
			
			let loginId = $('#loginId').val().trim();
			if (loginId.length < 4) {
				$('#idCheckLength').removeClass('d-none');
				return;
			}
			
			// ajax - 중복확인
			$.ajax({
				// request
				url:"/user/is_duplicated_id"
				, data: {"loginId":loginId}
			
				// response
				, success: function(data) {
					if (data.isDupliacated) {
						// 중복
						$('#idCheckDuplicated').removeClass('d-none');
					} else {
						// 중복아님 => 사용 가능
						$('#idCheckOk').removeClass('d-none');
					}	
					
				}
				, error: function(request, status, error) {
					alert('중복확인에 실패했습니다.');
				}
			});
		}); // 중복확인 끝
		
		
		// 회원가입
		$("#signUpForm").on("submit", function(e) {
			e.preventDefault(); // 서브밋 기능 중단
			
			// validation			
			let loginId = $('input[name=loginId]').val().trim();
			let password = $('#password').val();
			let passwordConfirm = $('#passwordConfirm').val();
			let name = $('#name').val().trim();
			let phoneNumber = $('#phoneNumber').val().trim();
			let email = $('#email').val().trim();
			let type = $('#type').val().trim();
			console.log(password);
			console.log(passwordConfirm);
			console.log(email);
			
			if (!loginId) {
				alert("아이디를 입력하세요");
				return false;	// submit일때는 그냥 return이 아니라 return false
			}
			if (!password || !passwordConfirm) {
				alert("비밀번호를 입력하세요");
				return false;
			}
			if (password != passwordConfirm) {
				alert("비밀번호가 일치하지 않습니다");
				return false;
			}
			if (!name) {
				alert("이름을 입력하세요");
				return false;
			}
			if (!phoneNumber) {
				alert("전화번호를 입력하세요");
				return false;
			}
			if (!email) {
				alert("이메일을 입력하세요");
				return false;
			}
			if (!type) {
				alert("타입을 입력하세요");
				return false;
			}
			
			// 아이디 중복확인 완료 됐는지 확인 -> idCheckOk가 d-none이 있으면 얼럿을 띄우기
			if ($('#idCheckOk').hasClass('d-none')) {
				alert("아이디 중복확인을 다시 해주세요");
				return false;
			}
			
			let url = $(this).attr("action");
			console.log(url);
			let params = $(this).serialize();
			console.log(params);
			
			$.post(url, params)
			.done(function(data) {
				//response
				if (data.code == 1) {
					alert("가입이 완료되었습니다. 로그인을 해주세요.");
					location.href="/user/sign_in_view";
				} else {
					alert(data.errorMessage);
				}
			});
		}); // 회원가입 끝
		
		
	});
</script>








