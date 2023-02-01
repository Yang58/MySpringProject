a
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@include file="../include/header.jsp"%>

<link rel="stylesheet" href="../resources/css/boardcss.css">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet">

<div class="container" style="padding-top: 100px;">
	<div class="row flex-lg-nowrap">
		<div class="col">
			<div class="row flex-lg-nowrap">
				<div class="col mb-3">
					<div class="e-panel card">
						<div class="card-body">
							<div class="card-title">
								<div class="container">
									<div class="row m-3">
										<h6 class="col-11 mr-2">
											<small class="px-1">Q&A 게시판 관리</small>
										</h6>
									</div>
								</div>
							</div>

							<div class="e-table">
								<div class="table-responsive table-lg mt-3">
									<table class="table table-bordered">
										<thead>
											<tr>
												<th class="align-top text-center">번호</th>
												<th>유형</th>
												<th class="max-width">제목</th>
												<th>작성자</th>
												<th class="sortable">작성일</th>
												<th></th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${qnaList}" var="qnaboard">
												<tr>
													<td class="align-middle align-middle text-center "><c:out
															value="${qnaboard.bno}" /></td>
													<td class="align-middle align-middle "><c:out
															value="${qnaboard.cate_kind}" /></td>
													<td class="align-middle align-middle"><c:out
																value="${qnaboard.title}" /></td>
													<td class="align-middle align-middle"><c:out
															value="${qnaboard.id}" /></td>
													<td class="align-middle align-middle"><fmt:formatDate
															value="${qnaboard.reg_date}" pattern="yyyy-MM-dd" /></td>
													<td class="text-center align-middle">
														<div class="btn-group align-top">
															
															<c:choose>
																<c:when test="${qnaboard.ans_type eq 1 }">
																	<button class="btn btn-sm btn-outline-secondary "
																	type="button" data-bs-toggle="modal"
																	data-bs-target="#answer-modal"
																	data-backdrop="static" 
																	data-rno= "${qnaboard.bno}"
																	data-cate="${qnaboard.cate_kind}"
																	data-id="${qnaboard.id}"
																	data-title="${qnaboard.title}"
																	data-content="${qnaboard.content}"
																	>수정</button>
																</c:when>
																<c:otherwise>
																	<button class="btn btn-sm btn-outline-secondary "
																	type="button" data-bs-toggle="modal"
																	data-bs-target="#answer-modal"
																	data-backdrop="static" 
																	data-cate="${qnaboard.cate_kind}"
																	data-id="${qnaboard.id}"
																	data-title="${qnaboard.title}"
																	data-content="${qnaboard.content}"
																	>답변</button>
																</c:otherwise>
															</c:choose>
														
														
															<button class="btn btn-sm btn-outline-secondary "
																type="button" data-bs-toggle="modal"
																data-bs-target="#delete-modal">삭제</button>	
														</div>
													</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
								<div class="d-flex justify-content-end">
									<div class="records">
										Showing: <b>1-20</b> of <b>200</b> result
									</div>
								</div>
								<div class="d-flex justify-content-center">
									<ul class="pagination mt-3 mb-0">
										<li class="disabled page-item"><a href="#"
											class="page-link">‹</a></li>
										<li class="active page-item"><a href="#"
											class="page-link">1</a></li>
										<li class="page-item"><a href="#" class="page-link">2</a></li>
										<li class="page-item"><a href="#" class="page-link">3</a></li>
										<li class="page-item"><a href="#" class="page-link">4</a></li>
										<li class="page-item"><a href="#" class="page-link">5</a></li>
										<li class="page-item"><a href="#" class="page-link">›</a></li>
										<li class="page-item"><a href="#" class="page-link">»</a></li>
									</ul>
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
			<div class="modal-body">해당 문의 글을 정말 삭제하시겠습니까?</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">취소</button>
				<button type="button" class="btn btn-danger">삭제하기</button>
			</div>
		</div>
	</div>
</div>


<!-- answer Modal -->
<div class="modal fade" role="dialog" tabindex="-1" id="answer-modal">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">답변하기</h5>
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">×</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="py-1">
					<form class="form" action="#">
						<div class="row">
							<div class="col">
								<div class="row">
									<div class="col">
										<div class="form-group">
											<label>유형</label><input class="form-control"
												readonly="readonly" type="text" name="cate"
												value="${cate}">
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<label>작성자</label> <input class="form-control"
												readonly="readonly" type="text" name="id"
												value="양형준">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<div class="form-group">
											<label>제목</label> <input class="form-control" type="text" name ="title"
												readonly="readonly" value="더 많은 활동을 추가해주세요.">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col mb-3">
										<div class="form-group">
											<label>상세 내용</label>
											<textarea class="form-control" rows="5" name="content" placeholder=""
												readonly="readonly"></textarea>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col mb-3">
										<div class="form-group">
											<label>답변</label>
											<textarea class="form-control" rows="5"
												placeholder="답변을 입력해주세요"></textarea>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col d-flex justify-content-end">
								<button class="btn btn-primary" type="submit">완료</button>
							</div>
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
    $(document).ready(function() {
        $("#answer-modal").on("show.bs.modal", function(e) {
            var cate = $(e.relatedTarget).data('cate');
            var id = $(e.relatedTarget).data('id');
            var title = $(e.relatedTarget).data('title');
            var content  = $(e.relatedTarget).data('content');
			
            $("input[name=cate]").attr("value", cate);
            $("input[name=id]").attr("value", id);
            $("input[name=title]").attr("value", title);
            $("textarea[name=content]").prop("placeholder", content);
        });
    });
</script>


<%@include file="../include/footer.jsp"%>