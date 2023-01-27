
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<%@include file="../include/header.jsp"%>
<link href="../resources/css/userAuthcss.css" rel="stylesheet" />
<div id="container" class="sub" data-menu-name="회원가입">
	<div class="container_align">
		<div id="SUB-GNB">
			<div id="submenu">
				<ul id="menu_submenu" class="menu_submenu ld1">
				</ul>
			</div>
		</div>

		<div id="section">
			<section>
				<header>
					<div class="menu_path_box">
						<nav class="menu_path menu_depth_2">
							<a class="home" href="#">HOME</a>
							<div class="ld1">
								<ul class="menu_topmenu ld1">
									<li class="cd1 cd1c8 open hasChild childCount4 fix_menu"><a
										href="#"
										class="l1 menusrl_2 menutype_move_child open active hasChild childCount4"
										data-depth="1"><span>회원가입</span></a></li>
								</ul>
							</div>
						</nav>
					</div>
				</header>

				<div class="modules_fmcs_member modules_member">
					<div class="member_status">
						<h3>
							<span>회원가입 진행 순서</span>
						</h3>
						<ol class="status_count_4">
							<li><span>사번인증</span></li>
							<li><span>이용약관동의</span></li>
							<li class="active"><strong>회원정보입력</strong></li>
							<li><span>회원가입완료</span></li>


						</ol>
					</div>

				</div>

				<!-- form  -->
				<fieldset>

					<input type="hidden" name="SecurityToken"
						value="8F28A1CF6B754BCAAEF47EDBEFC32C62">

					<div class="table_css">
						<div class="form_table">
							<table class="fit no_thead">
								<colgroup>
									<col width="200">
									<col>
								</colgroup>
								<tbody>
									<tr>
										<th scope="row"><label for="name">사번<em>*</em></label></th>
										<td><input id="empno" name="empno" placeholder="20230114"
											type="text" value="" class="input_text" readonly></td>
									</tr>
									<tr>
										<th scope="row"><label for="name">이름<em>*</em></label></th>
										<td><input id="name" name="name" placeholder="유림이"
											type="text" value="" class="input_text" readonly></td>
									</tr>

									<tr>
										<th scope="row"><label for="name">아이디<em>*</em></label></th>
										<td><input id="id" name="id" placeholder="아이디를 입력하세요."
											type="text" value="" class="input_text">
											<button type="submit">중복확인</button></td>
									</tr>
									<tr>
										<th scope="row"><label for="name">비밀번호<em>*</em></label></th>
										<td><input id="password" name="password"
											placeholder="비밀번호를 입력하세요." type="text" value=""
											class="input_text">
									</tr>
									<tr>
										<th scope="row"><label for="name">비밀번호 확인<em>*</em></label></th>
										<td><input id="passwordck" name="passwordck"
											placeholder="비밀번호를 입력하세요." type="text" value=""
											class="input_text">
									</tr>
									<tr>
										<th scope="row">휴대전화번호</th>
										<td><select id="tel_1" name="tel_1" title="휴대전화번호 앞자리 선택" style="width:auto;">
												<option value="010">010</option>
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
												<option value="018">018</option>
												<option value="019">019</option>
												</select>
												<input id="tel_2"
											name="tel_2" class="number input_text"
											title="휴대전화번호 중간자리 3~4자리 입력" type="text" value="" size="4"
											maxlength="4"><input id="tel_3" name="tel_3"
											class="number input_text" title="휴대전화번호 마지막자리 4자리 입력"
											type="text" value="" size="4" maxlength="4"></td>
									</tr>

								</tbody>
							</table>
						</div>
						<p class="order_box">
							<a href="/home/join_done" class="true">회원가입</a> <a href="/join_form"
								class="true">취소</a>
						</p>



					</div>
				</fieldset>

			</section>
		</div>
	</div>
</div>
<%@include file="../include/footer.jsp"%>
