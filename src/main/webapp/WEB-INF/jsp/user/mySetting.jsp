<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="d-flex">    
	<aside class="col-2 bg-dark">
	<!-- 수직(세로)방향 메뉴: nav + flex-column -->
		<ul class="nav flex-column">
	        <li class="nav-item font-weight-bold"><a href="/user/myOrder_view" class="nav-link">전체 주문내역</a></li>
	        <li class="nav-item font-weight-bold"><a href="/user/myCoupon_view" class="nav-link">쿠폰함</a></li>
	        <li class="nav-item font-weight-bold"><a href="/user/myPost_qna_view" class="nav-link">내가 쓴 글</a></li>
			<li class="nav-item font-weight-bold"><a href="/user/mySetting_view" class="nav-link">나의 설정</a></li>
		</ul>
	</aside>
	
	<div>
		<table class="table ">
			<tr>
				<th>이름</th>
				<td><input type="text">
				<button>이름 변경</button></td>
			</tr>
			<tr>
				<th>아이디</th>
				<td>aaaaa***</td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><button>비밀번호 변경</button></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input type="text">@<input type="text">
				<button>이메일 변경</button></td>
			</tr>
			<tr>
				<th>휴대폰 번호</th>
				<td><input type="text">
				<button>인증하기</button></td>
			</tr>
			<tr>
				<th>주소</th>
				<td><input type="text">
				<button>주소 변경</button></td>
			</tr>

		</table>
	</div>
</div>