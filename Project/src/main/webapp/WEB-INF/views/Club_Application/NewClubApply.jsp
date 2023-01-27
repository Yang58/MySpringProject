
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<%@include file="../include/header.jsp"%>

<style>
	*{
		margin-bottom: 3px;
	}

</style>
<link rel="stylesheet" href="../resources/css/btncss.css">
<link rel="stylesheet" href="../resources/css/inputcss.css">
<link rel="stylesheet" href="../resources/css/NewClub.css">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet">
<div class="container" style="padding-top: 150px;">
	<div class="row">
		<div class="col d-flex justify-content-center">

			<div class="col-lg-12 col-sm-12 col-xs-12">
				<div class="row">
					<div class="col-lg-12 col-sm-12 col-xs-12">
						<div class="widget">
							<div class="widget-header bordered-top bordered-palegreen">
								<span class="widget-caption text-center"> 신규 동호회 신청 </span>
							</div>
							<div class="widget-header bordered-top bordered-palegreen">
								<form id="terms_form" class="f" action="#">
									<h4 class="scheme-g text-center">신청 시 주의 사항</h4>
									<textarea style="font-size: 1em; width: 100%; height: 150px;">
										내용입니다. 내용입니다. 내용입니다. 내용입니다.
									</textarea>
								</form>
							</div>
							<div class="widget-body">
								<form role="form">

									<div class="form-group">
										<label for="sminput"> 신청자성명 </label> <input type="text"
											readonly="readonly" class="form-control input-xs"
											id="sminput" placeholder="이름 자동 입력 ">
									</div>

									<div class="form-group">
										<label for="sminput">동호회이름</label> <input type="text"
											class="form-control input-xs" id="sminput"
											placeholder="입력해주세요 ">
									</div>
									
										<div class="form-group">
										<label for="sminput">신청일</label> <input type="date"
											class="form-control input-sm" id="currentDate">
									</div>
									<div class="container"> <div class="row"></div></div>
									<div class="form-group">
										<div class="container">
											<div class="row">
												<div class="col-md-2">
													<p>카테고리</p>
												</div>
												<div class="col-md-4">
													<select name="club" class="select" style="width:90%;">
														<option disabled selected>---선택---</option>
														<option value="Sports">레저</option>
														<option value="Sports">운동</option>
														<option value="Travel">여행</option>
														<option value="Study">스터디</option>
													</select>
												</div>
												<div class="col-md-2">
													<p class="text-center">모임 주기</p>
												</div>
												<div class="col-md-4">
													<div class="row" style="padding:3px;">
														<div class="col-md-5">
															<select class="form-control" id="">
																<option value="">요일을 선택해주세요</option>
																<option>매주 토요일</option>
																<option>매주 일요일</option>
															</select>
														</div>
														<div class="col-md-5">
															<select class="form-control" id="">
																<option value="">모임 시간을 선택해주세요</option>
																<option>8시</option>
																<option>9시</option>
																<option>10시</option>
																<option>11시</option>
																<option>12시</option>
																<option>13시</option>
																<option>14시</option>
																<option>15시</option>
																<option>16시</option>
																<option>17시</option>
																<option>18시</option>
																<option>19시</option>
																<option>20시</option>
															</select>
														</div>
													</div>
												</div>
											</div>
										</div>

									</div>


									<label for="sminput"> 동호회내용 </label>
									<div class="form-group">
										<textarea style="width: 100%;"
											placeholder="필수항목: 신설이유,참여성별,활동 지역 등등..." rows="5"></textarea>
									</div>


									<div class="row">
										<div class="col d-flex justify-content-center">
											<button
												class="button button--winona button--border-thin button--round-s"
												data-text="정말~?" onclick="location.href='#'">
												<span>작성취소</span>
											</button>
											<button
												class="button button--winona button--border-thin button--round-s"
												data-text="진쫘~??" type="submit">
												<span>신청하기</span>
											</button>
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

<script>
	document.getElementById('currentDate').value = new Date().toISOString()
			.substring(0, 10);
</script>

<%@include file="../include/footer.jsp"%>