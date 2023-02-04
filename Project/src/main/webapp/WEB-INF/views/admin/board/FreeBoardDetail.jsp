
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<%@include file="../include/header.jsp"%>

<style>
.reply_answer {
	display: none;
	border-radius: 5px;
}
</style>
<script>
	$('.reply_re').on('click', function() {
		$('.reply_answer').toggle();
	});
</script>

<!-- TODO : 동호회  이미지 불러와서 띄워줘야함   -->
<div class="container" style="margin-top: 100px;">
	<img src="../resources/images/golf1.jpg" width="100%" height="300px">
</div>

<div class="container">
	<div class="row">
		<form role="form" method="post" autocomplete="off">
			<table class="table table-striped">
				<%-- 홀,짝 행 구분 --%>
				<tbody>
					<tr>
						<td><input type="hidden" id="bno" name="bno"
							value="${read.bno}" /> <c:out value="${read.title}" /></td>
					</tr>
					<tr>
						<td>
							<div class="container">
								<div class="row">
									<div class="col text-left d-flex justify-content-start">
										작성자 :
										<c:out value="${read.id}" />
									</div>
									<div class="col">
										작성일 :
										<fmt:formatDate value="${read.reg_date}" pattern="yyyy-MM-dd" />
									</div>
									<div class="col">
										<c:if test="${!empty read.mod_date}">
											수정일 : <fmt:formatDate value="${read.mod_date}"
												pattern="yyyy-MM-dd" />
										</c:if>
									</div>
									<div class="col d-flex justify-content-end">
										조회수 :
										<c:out value="${read.view_count}" />
									</div>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<td><textarea class="form-control" maxlength="4000"
								style="height: 350px;" readonly="readonly"
								placeholder="<c:out value="${read.content}" />"></textarea></td>
					</tr>
				</tbody>
			</table>

			<div class="btn-groupp" role="group" aria-label="Basic example"
				style="text-align: end;">
				<c:if test="${read.cate_num eq '00' }">
					<button id="modity_btn" class="btn btn-primary">수정</button>
				</c:if>

				<button id="delete_btn" class="btn btn-primary">삭제</button>

				<button type="button" class="btn btn-primary"
					onclick="location.href='/admin/freelist'">목록보기</button>
			</div>
		</form>


	</div>

</div>
<c:if test="${read.board_type eq '01'}">
	<!-- 댓글리스트 -->
	<hr>
	<div class="container">
		<div class="u_cbox_info">
			<span class="u_cbox_info_main"><a
				href="https://blog.naver.com/donaldpak" class="u_cbox_name"
				data-log="RPC.nick" target="_blank"> <span
					class="u_cbox_name_area"><span class="u_cbox_nick_area">
							<span class="u_cbox_nick">작성자 아이디</span>
					</span></span>
			</a></span> <span class="u_cbox_info_sub"></span>
		</div>
		<div class="u_cbox_text_wrap">
			<span class="u_cbox_contents" data-lang="ko"> 댓글 </span>
		</div>
		<div class="u_cbox_info_base">
			<span class="u_cbox_date" data-value="2023-02-01T12:01:40+0900">댓글
				작성일</span><span class="u_cbox_work_main"><a href="#"
				class="u_cbox_btn_report" data-action="report#request"
				data-param="commentNo:'782259250444370282',objectId:'102238556_201_223001416099'"
				data-log="RPC.report" target="_blank"><span
					class="u_cbox_ico_bar"></span> <span class="u_cbox_ico_report"></span>
					<span class="u_cbox_in_report">신고</span></a></span>
		</div>
		<!--    <div class="u_cbox_tool"><a role="button"  class="u_cbox_btn_reply reply_re" >
        <strong class="u_cbox_reply_txt">답글</strong></a> -->
	</div>


	<!-- 댓글리스트에 답글달기 -->
	<div class="container reply_answer"
		style="border: 1px solid black; padding: 10px; margin-top: 20px; width: 85%;">
		<div style="padding: 5px;">
			<i class="fa-solid fa-user"></i>weasel
		</div>
		<textarea placeholder="블로그가 더 훈훈해지는 댓글 부탁드립니다. @별명을 입력하면 서로이웃이 소환됩니다."
			style="width: 100%; height: 100px; overflow-y: scroll"></textarea>
		<button class="btn btn-primary">댓글달기</button>
	</div>
	<hr>

	<!-- 페이징 -->

	<div class="d-flex justify-content-center">
		<ul class="pagination mt-3 mb-0">
			<li class="disabled page-item"><a href="#" class="page-link">‹</a></li>
			<li class="active page-item"><a href="#" class="page-link">1</a></li>
			<li class="page-item"><a href="#" class="page-link">2</a></li>
			<li class="page-item"><a href="#" class="page-link">3</a></li>
			<li class="page-item"><a href="#" class="page-link">4</a></li>
			<li class="page-item"><a href="#" class="page-link">5</a></li>
			<li class="page-item"><a href="#" class="page-link">›</a></li>
			<li class="page-item"><a href="#" class="page-link">»</a></li>
		</ul>
	</div>

	<!-- 댓글달기 -->
	<form action="#">
		<div class="container"
			style="border: 1px solid black; padding: 10px; margin-top: 20px;">
			<div style="padding: 5px;">
				<i class="fa-solid fa-user"></i>weasel
			</div>
			<textarea placeholder="댓글을 입력해주세요"
				style="width: 100%; height: 100px; overflow-y: scroll"></textarea>
			<button class="btn btn-primary">등록</button>
		</div>
	</form>


</c:if>
<!-- 사이드바 맨위 맨아래 -->
<a style="display: scroll; position: fixed; bottom: 80px; right: 30px;"
	rel="nofollow" href="#" style="font-size:2.0em">▲</a>
<a style="display: scroll; position: fixed; bottom: 40px; right: 30px;"
	rel="nofollow" href="#scrollbottom" style="font-size:2.0em">▼</a>
<div id="scrollbottom"></div>
<script>
	// 폼을 변수에 저장
	var formObj = $("form[role='form']");

	// 수정 버튼 클릭
	$("#modity_btn").click(function() {

		formObj.attr("action", "/admin/freemodify");
		formObj.attr("method", "get");
		formObj.submit();

	});

	// 삭제 버튼 클릭
	$("#delete_btn").click(function() {

		formObj.attr("action", "/admin/freedelete");
		formObj.attr("method", "post");
		formObj.submit();

	});
</script>

<%@include file="../include/footer.jsp"%>
