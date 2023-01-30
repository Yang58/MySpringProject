<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@include file="../include/header.jsp"%>

<link rel="stylesheet" href="../resources/css/boardcss.css">


<div class="container" style="padding-top: 100px;">


	<div class="row flex-lg-nowrap">

		<div class="col">


			<div class="row flex-lg-nowrap">
				<div class="col mb-3">
					<div class="e-panel card">


						<div class="card-body">
							<div class="card-title">
								<div class="container">
									<div class="row">
										<h6 class="col-9 mr-2">
											<small class="px-1">자유 게시판 관리</small>
										</h6>
										<button id="write" onclick="location.href='/admin/write'"
											style="width: auto;"
											class="col btn btn-primary btn-sm d-flex jsutify-content-end text-center m-4">
											공지사항 작성</button>
									</div>
								</div>
								<div class="container">
									<div class='row'>
										<div class="col-lg-12">
											<form id='searchForm' action="/admin/list" method='get'>
												<select name='type'>
													<option value=""
														<c:out value="${pageMaker.cri.type == null?'selected':''}"/>>
														--</option>
													<option value="T"
														<c:out value="${pageMaker.cri.type eq 'T' ? 'selected':''}"/>>
														제목</option>
													<option value="C"
														<c:out value="${pageMaker.cri.type eq 'C' ? 'selected':''}"/>>
														내용</option>
													<option value="W"
														<c:out value="${pageMaker.cri.type eq 'W' ? 'selected':''}"/>>
														작성자</option>
													<option value="TC"
														<c:out value="${pageMaker.cri.type eq 'TC' ? 'selected':''}"/>>
														제목 or 내용</option>
													<option value="TW"
														<c:out value="${pageMaker.cri.type eq 'TW' ? 'selected':''}"/>>
														제목 or 작성자</option>
													<option value="TWC"
														<c:out value="${pageMaker.cri.type eq 'TWC' ? 'selected':''}"/>>
														제목 or 내용 or 작성자</option>
												</select> <input type='text' name='keyword'
													value='<c:out value="${pageMaker.cri.keyword}"/>' /> <input
													type='hidden' name='pageNum'
													value='<c:out value="${pageMaker.cri.pageNum}"/>' /> <input
													type='hidden' name='amount'
													value='<c:out value="${pageMaker.cri.amount}"/>' />
												<button class="btn btn-default">Search</button>
											</form>
										</div>
									</div>
								</div>

								<div class="e-table">
									<div class="table-responsive table-lg mt-3">
										<table class="table table-bordered">
											<thead>
												<tr>
													<th class="align-top">번호</th>
													<th>카테고리</th>
													<th class="max-width">제목</th>
													<th>작성자</th>
													<th class="sortable">Date</th>
													<th></th>
												</tr>
											</thead>


											<tbody>

												<c:forEach items="${list}" var="board">
													<tr>
														<td class="align-middle align-middle"><c:out
																value="${board.bno}" /></td>
														<td class="align-middle align-middle"><c:out
																value="${board.cate_kind}" /></td>
														<td class="align-middle align-middle"><a
															href="/admin/read?bno=${board.bno}"><c:out
																	value="${board.title}" /></a></td>
														<td class="align-middle align-middle"><c:out
																value="${board.id}" /></td>
														<td class="align-middle align-middle"><fmt:formatDate
																value="${board.reg_date}" pattern="yyyy-MM-dd" /></td>
														<td class="text-center align-middle">
															<div class="btn-group align-top">
																<a class="btn btn-sm btn-outline-secondary "
																	href="/admin/read?bno=${board.bno}">상세보기</a>
															</div>
														</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
									<div class="d-flex justify-content-end">
										<div class="records">
											Showing: <b><c:out value="${pageMaker.cri.pageNum}" /> -
												<c:out value="${pageMaker.cri.amount}" /> </b> of <b><c:out
													value="${pageMaker.total}" /></b> result
										</div>
									</div>

									<!-- 페이징 기능  -->
									<div class='pull-right'>
										<ul class="pagination">

											<c:if test="${pageMaker.prev}">
												<li class="paginate_button previous"><a
													href="${pageMaker.startPage-1 }"> Previous</a></li>
											</c:if>

											<c:forEach var="num" begin="${pageMaker.startPage}"
												end="${pageMaker.endPage}">
												<li class="paginate_button ${pageMaker.cri.pageNum==num ? "active":""} ">
													<a href="${num}">${num}</a>
												</li>
											</c:forEach>

											<c:if test="${pageMaker.next }">
												<li class="paginate_button next"><a
													href="${pageMaker.endPage +1 }">NEXT</a></li>
											</c:if>
										</ul>
									</div>

									<form id='actionForm' action="/admin/list" method='get'>
										<input type='hidden' name='pageNum'
											value='${pageMaker.cri.pageNum}'> <input
											type='hidden' name='amount' value='${pageMaker.cri.amount}'>
										<input type='hidden' name='type'
											value='<c:out value="${pageMaker.cri.type}"/>'> <input
											type='hidden' name='keyword'
											value='<c:out value="${pageMaker.cri.keyword}"/>'>
									</form>



								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- delete Modal -->
<div class="modal fade" id="delete-modal" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h1 class="modal-title fs-5" id="exampleModalLabel">Delete</h1>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">해당 게시글을 정말 삭제하시겠습니까?</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">취소</button>
				<button type="button" id="deletebtn" class="btn btn-secondary"
					data-bs-dismiss="modal">삭제</button>
				<a class="btn btn-danger" href="/admin1/delete?bno=${board.bno}">remove</a>
			</div>
		</div>
	</div>
</div>


<script>
	$(document).ready(function() {
		var actionForm = $("#actionForm");
		$(".paginate_button a").on("click", function(e) {
			e.preventDefault();
			console.log('click');
			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			actionForm.submit();
		});

		var searchForm = $("#searchForm");

		$("#searchForm button").on("click", function(e) {
			if (!searchForm.find("option:selected").val()) {
				alert("검색종류를 선택하세요");
				return false;
			}
			if (!searchForm.find("input[name='keyword']").val()) {
				alert("키워드를 입력하세요");
				return false;
			}
			searchForm.find("input[name='pageNum']").val("1")
			e.preventDefault();
			searchForm.submit();
		});
	});
</script>




<%@include file="../include/footer.jsp"%>