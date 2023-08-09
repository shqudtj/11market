<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="d-flex justify-content-center">
	<div class="find-box">
		<div>로고자리->홈페이지이동</div>
		<div>아이디 찾기</div>
		
		
		
		<form id="findLoginForm" action="/search/search_loginId" method="post">
			<div>
				<label><input type="radio" name="type" value="phoneNumber" checked>휴대폰으로 찾기</label>
				<label><input type="radio" name="type" value="email">이메일로 찾기</label>
			</div>
			<div class="input-group mb-3 d-flex">
				<div class="input-group-prepend">
					<span class="input-group-text">이름</span>
				</div>
				<input type="text" class="form-control" id="name" name="name" placeholder="이름을 입력해주세요">
			</div>
	
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
			
			
			<button type="submit" id="searchLoginId" class="btn btn-primary text-white mt-2">아이디 찾기</button>
		</form>
	</div>
	
	
</div>

<script>
	$(document).ready(function() {
		//alert("준비완료");
		
		$('input[name=type]').on('change', function() {
			
			$('.phoneNumber-box').addClass('d-none');
			$('.email-box').addClass('d-none');

            let type = $('input[name=type]:checked').val();
            
            if (type == 'phoneNumber') {
                $('.phoneNumber-box').removeClass('d-none');
            } else {
            	$('.email-box').removeClass('d-none');
            }
        });
		
		$('#findLoginForm').on('submit', function(e) {
			//e.preventDefault();
			
			let name = $('#name').val().trim();
			let phoneNumber = $('#phoneNumber').val();
			let email = $('#email').val();
			console.log(name);
			console.log(phoneNumber);
			console.log(email);
			
			if (!name) {
				alert("이름을 입력하세요");
				return false;
			}
			
			
			if ($('.email-box').has('d-none')) {
				if (phoneNumber.length < 1) {
					alert("이메일박스 d-none진입");
					alert("전화번호를 입력하세요");
				}
				return;
			}
			
			if ($('.phoneNumber-box').has('d-none')) {
				if (!email) {
					alert("phoneNumber d-none진입");
					alert('이메일을 입력하세요.')
				}	
				return;
			}
			
			
			$.ajax({
				// request
				url:"/search/search_logindId"
				, data: {"loginId":loginId, "phoneNumber":phoneNumber, "email":email}
			
				// response
				, success: function(data) {
					if (data.isExistId) {
						// 있음
						location.href = "/search/provide_loginId_view"
					} else {
						// 없음 
						alert("아이디가 존재하지 않습니다. 내용을 다시 확인해주세요.");
					}	
					
				}
				, error: function(request, status, error) {
					alert('아이디확인에 실패했습니다.');
				}
			});

			
		});
		
	});

</script>




