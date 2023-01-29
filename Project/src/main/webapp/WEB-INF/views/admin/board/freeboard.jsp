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
											<small class="px-1">자유 게시판 관리</small>
										</h6>
										<button id="write" onclick="location.href='/admin/write'"
											style="width:auto;"
											class="col btn btn-primary btn-sm d-flex jsutify-content-end text-center m-4">
											공지사항 작성</button>

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
										
											<c:forEach items="${list}" var="board">
												<tr>
													<td class="align-middle align-middle"><c:out value="${board.bno}"/></td>
													<%-- <td class="align-middle align-middle"><c:out value="${board.kind}" /></td> --%>
													
													<c:choose> 
														<c:when test="${board.kind eq '00' }"> 
															<td class="align-middle align-middle">공지사항</td>
														</c:when>
														<c:when test="${board.kind eq '01' }"> 
															<td class="align-middle align-middle">카테 2</td>
														</c:when>
														<c:when test="${board.kind eq '02' }"> 
															<td class="align-middle align-middle">카테 3</td>
														</c:when>
														<c:when test="${board.kind eq '03' }"> 
															<td class="align-middle align-middle">카테 3</td>
														</c:when>
														<c:when test="${board.kind eq '04' }"> 
															<td class="align-middle align-middle">카테 3</td>
														</c:when>
														<c:otherwise> 
															<td class="align-middle align-middle">??</td>
														</c:otherwise>
													</c:choose>  
													<td class="align-middle align-middle"> <a href="/admin/read?bno=${board.bno}"><c:out value="${board.title}" /></a></td>
													<td class="align-middle align-middle"><c:out value="${board.id}" /></td>
													<td><fmt:formatDate value="${board.reg_date}" pattern="yyyy-MM-dd"/></td>
<%-- 													<td class="align-middle align-middle"><c:out value="${board.reg_date}" /></td> --%>
													
													<td class="text-center align-middle">
													<div class="btn-group align-top">
														 <a class="btn btn-sm btn-outline-secondary " href="/admin/read?bno=${board.bno}">상세보기</a>
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


 <script type="text/javascript">
	 $(document).ready(function(){
		 
		
	})
 </script>




<%@include file="../include/footer.jsp"%>