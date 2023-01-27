
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@include file="../include/header.jsp"%>

<link href="../resources/css/membercss.css" rel="stylesheet" />

<div class="container" style="padding-top: 150px;">

	<div class="row">
		<div class="col-12">
			<div class="card card-margin">
				<div class="card-body">
					<div class="row search-body">
						<div class="col-lg-12">
							<div class="search-result">
								<div class="result-header">
									<div class="row">
										<div class="col-lg-6">
											<div class="records">
												Showing: <b>1-10</b> of <b>200</b> result
											</div>
										</div>
										<div class="col-lg-6">
											<div class="result-actions  d-flex justify-content-end">
												<div class="records">회원 정보 관리</div>
											</div>
										</div>
									</div>
								</div>
								<div class="result-body">
									<div class="table-responsive">
										<table class="table widget-26">
											<tbody>
												<tr>
													<td>
														<div class="widget-26-job-emp-img">
															<img
																src="https://bootdey.com/img/Content/avatar/avatar5.png"
																alt="Company" />
														</div>
													</td>
													<td>
														<div class="widget-26-job-title">
															<a href="#"> 사원 번호 </a>
															<p class="m-0">
																<a href="#" class="employer-name">이름</a> <span
																	class="text-muted time">이름</span>
															</p>
														</div>
													</td>
													<td>
														<div class="widget-26-job-info">
															<p class="type m-0">가입일자</p>
															<p class="text-muted m-0">
																<span class="location">2010/10/10</span>
															</p>
														</div>
													</td>
													<td>
															<div class="widget-26-job-info">
															<p class="type m-0">활동 개수</p>
															<p class="text-muted m-0">
																<span class="location">3</span>
															</p>
														</div>
													</td>

													<td>
														<div class="widget-26-job-starred">

															<button class="btn btn btn-danger btn-xs " type="button"
																data-bs-toggle="modal" data-bs-target="#delete-modal">
																<i class="fa fa-trash-o"></i>삭제
															</button>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>


					<!-- 페이징 기능  -->
					<nav class="d-flex justify-content-center">
						<ul
							class="pagination pagination-base pagination-boxed pagination-square mb-0">
							<li class="page-item"><a class="page-link no-border"
								href="#"> <span aria-hidden="true">«</span> <span
									class="sr-only">Previous</span>
							</a></li>
							<li class="page-item active"><a class="page-link no-border"
								href="#">1</a></li>
							<li class="page-item"><a class="page-link no-border"
								href="#">2</a></li>
							<li class="page-item"><a class="page-link no-border"
								href="#">3</a></li>
							<li class="page-item"><a class="page-link no-border"
								href="#">4</a></li>
							<li class="page-item"><a class="page-link no-border"
								href="#"> <span aria-hidden="true">»</span> <span
									class="sr-only">Next</span>
							</a></li>
						</ul>
					</nav>
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
			<div class="modal-body">해당 회원을 정말 삭제하시겠습니까?</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">취소</button>
				<button type="button" class="btn btn-danger">삭제하기</button>
			</div>
		</div>
	</div>
</div>

<%@include file="../include/footer.jsp"%>