a
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
											<small class="px-1">동호회 신청 목록 </small>
										</h6>
										<button onclick="location.href='/admin/club_registration'" style="margin:10px;"
											class="col-2 btn btn-primary btn-sm d-flex jsutify-content-end text-center">
											신규 동호회 개설</button>

									</div>
								</div>
								

							</div>



							<div class="e-table">
								<div class="table-responsive table-lg mt-3">
									<table class="table table-bordered">
										<thead>
											<tr>
												<th class="align-top">번호</th>
												<th>신청자 이름</th>
												<th class="max-width">동호회 이름</th>
												<th>카테고리</th>
												<th class="sortable">신청일</th>
												<th></th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td class="align-middle">1</td>
												<td class="align-middle align-middle">양형준</td>
												<td class="text-nowrap align-middle">알고리즘 공부</td>
												<td class="text-nowrap align-middle">스터디</td>
												<td class="text-center align-middle"><span>2022-10-20</span></td>
												<td class="text-center align-middle">
													<div class="btn-group align-top">
														<button class="btn btn-sm btn-outline-secondary "
															type="button" data-bs-toggle="modal"
															data-bs-target="#detail-modal">상세보기</button>
														<button class="btn btn-sm btn-outline-secondary "
															type="button" data-bs-toggle="modal"
															data-bs-target="#ok-modal">확인</button>
													</div>
												</td>
											</tr>

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


<!-- detail Modal -->
<div class="modal fade" role="dialog" tabindex="-1" id="detail-modal">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">상세보기</h5>
				<button type="button" class="close" data-dismiss="modal">
				<!-- todo: x 닫기 이벤트 추가해야됨   -->
					<span aria-hidden="true">×</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="py-1">
					<form class="form" novalidate="">
						<div class="row">
							<div class="col">
								<div class="row">
									<div class="col">
										<div class="form-group">
											<label>신청자 이름</label><input class="form-control" readonly="readonly"
												type="text" name="name" placeholder="양형준"
												value="1">
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<label>카테고리</label> <input class="form-control"  readonly="readonly"
												type="text" name="category" 
												value="스터디">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<div class="form-group">
											<label>동호회 이름</label> <input class="form-control" type="text" readonly="readonly"
												 value="알고리즘 공부.">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col mb-3">
										<div class="form-group">
											<label>Content</label>
											<textarea class="form-control" rows="5" readonly="readonly"> 내용입니다. 내용입니다. 내용입니다. </textarea>
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




<!-- ok Modal -->
<div class="modal fade" id="ok-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Check</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        	해당 동호회를 등록 하시겠습니까?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
        <button type="button" class="btn btn-primary">확인</button>
      </div>
    </div>
  </div>
</div>




<%@include file="../include/footer.jsp"%>