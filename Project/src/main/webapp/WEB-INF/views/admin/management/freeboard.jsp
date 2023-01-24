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
									<div class="row m-3">
										<h6 class="col-11 mr-2">
											<small class="px-1">자유 게시판 관리</small>
										</h6>
										<button onclick="location.href='create_Announcement'"
											class="col-1 btn btn-primary btn-sm text-center d-flex jsutify-content-end">
											공지사항</button>

									</div>
								</div>
								<div class="container">
									<div class="row no-gutters">
										<div class="col-lg-2 col-md-2 col-sm-12 p-0">
											<select class="form-control" id="exampleFormControlSelect1">
												<option>제목</option>
												<option>내용</option>
											</select>
										</div>
										<div class="col-lg-9 col-md-7 col-sm-12 p-0">
											<input type="text" placeholder="검색할 내용을 입력해주세요"
												class="form-control" id="search" name="search">
										</div>

										<div class="col-lg-1 col-md-3 col-sm-12 p-0">
											<button type="submit" class="btn btn-base">
												<svg xmlns="http://www.w3.org/2000/svg" width="24"
													height="24" viewBox="0 0 24 24" fill="none"
													stroke="currentColor" stroke-width="2"
													stroke-linecap="round" stroke-linejoin="round"
													class="feather feather-search">
													<circle cx="11" cy="11" r="8"></circle>
													<line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>
											</button>
										</div>
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
											<tr>
												<td class="align-middle">1</td>
												<td class="align-middle align-middle">스터디</td>
												<td class="text-nowrap align-middle">자유게시판 제목</td>
												<td class="text-nowrap align-middle">양형준</td>
												<td class="text-center align-middle"><span>2022-10-20</span></td>
												<td class="text-center align-middle">
													<div class="btn-group align-top">
														<button class="btn btn-sm btn-outline-secondary "
															type="button" data-bs-toggle="modal" data-bs-target="#answer-modal">수정</button>
														<button class="btn btn-sm btn-outline-secondary "
															type="button" data-bs-toggle="modal" data-bs-target="#delete-modal">삭제</button>
														
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


				<!-- User Form Modal -->
				<div class="modal fade" role="dialog" tabindex="-1"
					id="user-form-modal">
					<div class="modal-dialog modal-lg" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title">Create User</h5>
								<button type="button" class="close" data-dismiss="modal">
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
															<label>Full Name</label> <input class="form-control"
																type="text" name="name" placeholder="John Smith"
																value="John Smith">
														</div>
													</div>
													<div class="col">
														<div class="form-group">
															<label>Username</label> <input class="form-control"
																type="text" name="username" placeholder="johnny.s"
																value="johnny.s">
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col">
														<div class="form-group">
															<label>Email</label> <input class="form-control"
																type="text" placeholder="user@example.com">
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col mb-3">
														<div class="form-group">
															<label>About</label>
															<textarea class="form-control" rows="5"
																placeholder="My Bio"></textarea>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-12 col-sm-6 mb-3">
												<div class="mb-2">
													<b>Change Password</b>
												</div>
												<div class="row">
													<div class="col">
														<div class="form-group">
															<label>Current Password</label> <input
																class="form-control" type="password"
																placeholder="••••••">
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col">
														<div class="form-group">
															<label>New Password</label> <input class="form-control"
																type="password" placeholder="••••••">
														</div>
													</div>
													<div class="col">
														<div class="form-group">
															<label>Confirm <span class="d-none d-xl-inline">Password</span></label>
															<input class="form-control" type="password"
																placeholder="••••••">
														</div>
													</div>
												</div>
											</div>
											<div class="col-12 col-sm-5 offset-sm-1 mb-3">
												<div class="mb-2">
													<b>Keeping in Touch</b>
												</div>
												<div class="row">
													<div class="col">
														<label>Email Notifications</label>
														<div class="custom-controls-stacked px-2">
															<div class="custom-control custom-checkbox">
																<input type="checkbox" class="custom-control-input"
																	id="notifications-blog" checked=""> <label
																	class="custom-control-label" for="notifications-blog">Blog
																	posts</label>
															</div>
															<div class="custom-control custom-checkbox">
																<input type="checkbox" class="custom-control-input"
																	id="notifications-news" checked=""> <label
																	class="custom-control-label" for="notifications-news">Newsletter</label>
															</div>
															<div class="custom-control custom-checkbox">
																<input type="checkbox" class="custom-control-input"
																	id="notifications-offers" checked=""> <label
																	class="custom-control-label" for="notifications-offers">Personal
																	Offers</label>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col d-flex justify-content-end">
												<button class="btn btn-primary" type="submit">Save
													Changes</button>
											</div>
										</div>
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


<%@include file="../include/footer.jsp"%>