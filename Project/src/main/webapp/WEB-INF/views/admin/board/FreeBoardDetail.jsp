
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<%@include file="../include/header.jsp"%>


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
						<td>
							<input type="hidden" id="bno" name="bno" value="${read.bno}"/>
							<c:out value="${read.title}" />
						</td>
					</tr>
					<tr>
						<td>
							<div class="container"> 
								<div class="row"> 
									<div class="col text-left d-flex justify-content-start">
										작성자 : <c:out value="${read.id}" />
									</div>
									<div class="col">
										작성일 : <fmt:formatDate	value="${read.reg_date}" pattern="yyyy-MM-dd" />
									</div>
									<div class="col">
										<c:if test="${!empty read.mod_date}">
											수정일 : <fmt:formatDate	value="${read.mod_date}" pattern="yyyy-MM-dd" />
										</c:if>
									</div>
									<div class="col d-flex justify-content-end">
										조회수 : <c:out value="${read.view_count}" />
									</div>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<td><textarea class="form-control"
								maxlength="4000" style="height: 350px;" readonly="readonly"
								placeholder="<c:out value="${read.content}" />"></textarea></td>
					</tr>

				</tbody>
			</table>
			<div class="btn-groupp" role="group" aria-label="Basic example"
				style="text-align: end;">
				<c:if test="${read.kind eq '00' }"> 
					<button id="modity_btn" class="btn btn-primary">수정</button>
				</c:if>
				
				<button id="delete_btn" class="btn btn-primary" >삭제</button>
				
				<button type="button" class="btn btn-primary"
					onclick="location.href='/admin/freelist'">목록보기</button>
			</div>
		</form>
	</div>
</div>

   <script>
   
   // 폼을 변수에 저장
   var formObj = $("form[role='form']");
   
   // 수정 버튼 클릭
   $("#modity_btn").click(function(){
    
	    formObj.attr("action", "/admin/modify");
	    formObj.attr("method", "get");    
	    formObj.submit();       
    
   });
   
   
   // 삭제 버튼 클릭
   $("#delete_btn").click(function(){
    
	    formObj.attr("action", "/admin/delete");
	    formObj.attr("method", "post");    
	    formObj.submit();
    
   });
   </script>

<%@include file="../include/footer.jsp"%>
