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
		<div class="d-flex justify-content-center align-items-center">
			<img src="https://cdn.pixabay.com/photo/2018/01/15/15/43/closeout-3084174_1280.png" width="300">
			<div class="">쿠폰보유개수 db에서 땡겨오기</div>
		</div>
	
		<button>나의 할인쿠폰</button>
		<button>지난 쿠폰내역</button>
		<div>
			<table class="table text-center">
				<thead>
					<tr>
						<th>쿠폰명</th>
						<th>할인금액</th>
						<th>적용기준</th>
						<th>제한조건</th>
						<th>유효기간</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>쿠폰명</td>
						<td>할인금액</td>
						<td>적용기준</td>
						<td>제한조건</td>
						<td>유효기간</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>