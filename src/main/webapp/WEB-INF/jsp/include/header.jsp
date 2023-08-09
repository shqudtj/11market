<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div>

	<div  class="d-flex justify-content-between">
		<!-- 로고 및 홈페이지바로가기 -->
		<a href="/product/main_view" class="more-btn">
			<img src="https://cdn.pixabay.com/photo/2017/01/26/16/51/supermarket-2011060_1280.png" width="100">
		</a>
		
		<!-- 검색란 -->
		<div class="search col-7 d-flex justify-content-center align-items-center">
			<div class="searchbar col-10">
				<!-- input-group에 기본으로 적용된 값 때문에 하나를 더 감싸서 위치를 잡아준다. -->
				<div class="input-group mb-3">
					<input type="text" class="form-control">
					<button class="btn btn-light" type="button">검색</button>
				</div>
			</div>
		</div>
		
		<!-- 유저정보페이지 -->
		<div>
			<a href="#" class="">
				<img src="https://cdn.pixabay.com/photo/2017/03/05/21/55/emoticon-2120024_1280.png" width="50">
			</a>
			
			<!-- 장바구니페이지 -->
			<a href="#" class="">
				<img src="https://cdn.pixabay.com/photo/2015/10/22/16/42/icon-1001596_1280.png" width="50">
			</a>
			
			<!-- 최근본상품 -->
			<a href="#" class="">
				<img src="https://cdn.pixabay.com/photo/2017/06/26/00/46/flat-2442462_1280.png" width="50">
			</a>
		</div>
	</div>
	
	
	<div class="d-flex justify-content-between">
		<a href="#" class="more-btn" data-toggle="modal" data-target="#modal">
			<img src="https://cdn.pixabay.com/photo/2016/12/04/18/58/list-1882326_1280.png" width="50">
		</a>
		
		<nav>
			<ul class="nav nav-fill">
            	<li class="nav-item"><a href="#" class="nav-link text-white font-weight-bold">베스트</a></li>
                <li class="nav-item"><a href="#" class="nav-link text-white font-weight-bold">쿠폰</a></li>
                <li class="nav-item"><a href="#" class="nav-link text-white font-weight-bold">신선식품</a></li>
                <li class="nav-item"><a href="#" class="nav-link text-white font-weight-bold">공지사항</a></li>
            </ul>
        </nav>
		
		<nav>
			<ul class="nav nav-fill">
            	<li class="nav-item"><a href="/user/sign_up_view" class="nav-link text-white font-weight-bold">회원가입</a></li>
                <li class="nav-item"><a href="/user/sign_in_view" class="nav-link text-white font-weight-bold">로그인</a></li>
                <li class="nav-item"><a href="#" class="nav-link text-white font-weight-bold">고객센터</a></li>
            </ul>
        </nav>
		
	</div>
	
	
	
	
</div>





