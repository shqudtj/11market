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
		<div class="d-flex">
			<div>최근 주문 내역</div>
			<button>지난 주문 내역</button>
		</div>
		
		<table class="table text-center">
			<thead>
				<tr>
					<th>날짜</th>
					<th>상품정보</th>
					<th>상태</th>
					<th>확인/신청</th>
				</tr>
			</thead>
			<tbody>
				
				<tr>
					<td>날짜</td>
					<td>상품 이름</td>
					<td>배송중인지 아닌지 제품 상태</td>
					<td>
						<button>반품신청</button>
						<button>교환신청</button>
					</td>
				</tr>
			</tbody>
		</table>
				
	</div>
</div>