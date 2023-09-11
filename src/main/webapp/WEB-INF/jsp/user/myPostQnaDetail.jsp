<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div>
	문의답변 상세페이지
	<div>
		<table class="table ">
			<tr>
				<th>제목</th>
				<td>제목가져오기</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>내용가져오기</td>
			</tr>
		</table>
		<button type="submit" id="update" class="btn btn-primary text-white mt-2">수정하기</button>
		<button type="submit" id="refresh" class="btn btn-primary text-white mt-2">취소(새로고침)</button>
	</div>
	<div>
		<table class="table ">
			<tr>
				<th>답변</th>
				<td>답변내용</td>
			</tr>
		</table>
		<a href="/user/myPost_qna_view" class="btn btn-primary text-white float-right">이전</a>
	</div>
	
</div>