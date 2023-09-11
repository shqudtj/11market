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
		<nav>
			<ul class="nav nav-fill bg-secondary">
            	<li class="nav-item"><a href="/user/myPost_qna_view" class="nav-link text-dark font-weight-bold">문의/답변</a></li>
                <li class="nav-item"><a href="/user/myPost_review_view" class="nav-link text-dark font-weight-bold">상품평</a></li>
                <li class="nav-item"><a href="/user/myPost_message_view" class="nav-link text-dark font-weight-bold">쪽지함</a></li>
            </ul>
        </nav>
		
		<div>
			<div>
				<table class="table text-center">
					<thead>
						<tr>
							<th>번호</th>
							<th>종류</th>
							<th>내용</th>
							<th>수신일</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>번호</td>
							<td>종류</td>
							<td>내용</td>
							<td>수신일</td>
						</tr>
					</tbody>
				</table>
				<button>이전</button>
				<button>다음</button>
			</div>
			<div>페이지번호들</div>
		</div>
	</div>
</div>