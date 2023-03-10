<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@include file="../include/header.jsp"%>
<link href="../resources/css/mypage.css" rel="stylesheet" />
   <div class="wrap">
          <div class="img" >
            <img src="../resources/images/2-1.jpg" class="main_img">
          </div>
          <div class="text">
          	<p>동호회 신청 현황</p>
          </div>
   </div>
   <hr />
   <span>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; </span>
   	<!-- <div class="dropdown">
      <span class="dropbtn">회원정보 관리</span>
      <div class="dropdown-content">
        <a href="#">회원정보 관리</a>
        <a href="#">동호회 신청 현황</a>
      </div> 
   	</div>
   	<span>|</span>
   	<div class="dropdown">
      <span class="dropbtn">회원정보 수정</span>
      <div class="dropdown-content">
        <a href="#">회원정보 관리</a>
        <a href="#">동호회 신청 현황</a>
      </div> 
   	</div> -->
   	
   	<!-- 집 아이콘 -->
   	<svg xmlns="http://www.w3.org/2000/svg" width="22" height="19" fill="currentColor" class="bi bi-globe2" viewBox="0 0 16 16">
	  <path d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm7.5-6.923c-.67.204-1.335.82-1.887 1.855-.143.268-.276.56-.395.872.705.157 1.472.257 2.282.287V1.077zM4.249 3.539c.142-.384.304-.744.481-1.078a6.7 6.7 0 0 1 .597-.933A7.01 7.01 0 0 0 3.051 3.05c.362.184.763.349 1.198.49zM3.509 7.5c.036-1.07.188-2.087.436-3.008a9.124 9.124 0 0 1-1.565-.667A6.964 6.964 0 0 0 1.018 7.5h2.49zm1.4-2.741a12.344 12.344 0 0 0-.4 2.741H7.5V5.091c-.91-.03-1.783-.145-2.591-.332zM8.5 5.09V7.5h2.99a12.342 12.342 0 0 0-.399-2.741c-.808.187-1.681.301-2.591.332zM4.51 8.5c.035.987.176 1.914.399 2.741A13.612 13.612 0 0 1 7.5 10.91V8.5H4.51zm3.99 0v2.409c.91.03 1.783.145 2.591.332.223-.827.364-1.754.4-2.741H8.5zm-3.282 3.696c.12.312.252.604.395.872.552 1.035 1.218 1.65 1.887 1.855V11.91c-.81.03-1.577.13-2.282.287zm.11 2.276a6.696 6.696 0 0 1-.598-.933 8.853 8.853 0 0 1-.481-1.079 8.38 8.38 0 0 0-1.198.49 7.01 7.01 0 0 0 2.276 1.522zm-1.383-2.964A13.36 13.36 0 0 1 3.508 8.5h-2.49a6.963 6.963 0 0 0 1.362 3.675c.47-.258.995-.482 1.565-.667zm6.728 2.964a7.009 7.009 0 0 0 2.275-1.521 8.376 8.376 0 0 0-1.197-.49 8.853 8.853 0 0 1-.481 1.078 6.688 6.688 0 0 1-.597.933zM8.5 11.909v3.014c.67-.204 1.335-.82 1.887-1.855.143-.268.276-.56.395-.872A12.63 12.63 0 0 0 8.5 11.91zm3.555-.401c.57.185 1.095.409 1.565.667A6.963 6.963 0 0 0 14.982 8.5h-2.49a13.36 13.36 0 0 1-.437 3.008zM14.982 7.5a6.963 6.963 0 0 0-1.362-3.675c-.47.258-.995.482-1.565.667.248.92.4 1.938.437 3.008h2.49zM11.27 2.461c.177.334.339.694.482 1.078a8.368 8.368 0 0 0 1.196-.49 7.01 7.01 0 0 0-2.275-1.52c.218.283.418.597.597.932zm-.488 1.343a7.765 7.765 0 0 0-.395-.872C9.835 1.897 9.17 1.282 8.5 1.077V4.09c.81-.03 1.577-.13 2.282-.287z"/>
	</svg>
	
	<span>&nbsp;&nbsp;&nbsp;</span>
	
	<!--대분류입니다.--->
	<select class="dropdown" name="level1" id="level1" onchange="A">
	  <option class="dropbtn" value="10">회원정보 관리</option>
	  <option class="dropbtn" value="20">동호회 신청 현황</option>
	  <!--등등-->
	</select>
	
	<span>&nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;</span>
	
	<!--중분류입니다.(회원정보 관리에 해당하는)-->
	<select class="dropdown" name="level2" id="level2" onchange="B">
	  <option class="dropbtn" value="1010">회원정보 수정</option>
	  <option class="dropbtn" value="1020">비밀번호 관리</option>
	  <option class="dropbtn" value="1030">로그아웃</option>
	  <option class="dropbtn" value="1040">회원탈퇴</option>
	  <option class="dropbtn" value="2010">내 신청 현황</option>
	  <!--등등-->
	</select>
	
	<!--<div class="dropdown">
	<button onclick="myFunction()" class="dropbtn">Dropdown</button>
	  <div id="myDropdown" class="dropdown-content">
	    <a href="#home">Home</a>
	    <a href="#about">About</a>
	    <a href="#contact">Contact</a>
	  </div>
	</div>
	<div class="dropdown">
	<button onclick="myFunction2()" class="dropbtn">Dropdown</button>
	  <div id="myDropdown2" class="dropdown-content">
	    <a href="#home">Home</a>
	    <a href="#about">About</a>
	    <a href="#contact">Contact</a>
	  </div>
	</div> -->
   	<hr />

   	
		<!-- <legend>내 신청 현황</legend>
			<input type="hidden" name="SecurityToken" value="E5136B34479301FA5FEE01E8E060E485"/> -->
	<h4>내 신청 현황</h4>
		<div class="list">
		  <div class="row row-cols-5" style="border:1px solid;">
		    <div class="col2">순서</div>
		    <div class="col2">동호회</div>
		    <div class="col2">신청일자</div>
		    <div class="col2">활동일자</div>
		    <div class="col2">탈퇴하기</div>
		    
		    <div class="col1">1</div>
		    <div class="col1">맛집투어</div>
		    <div class="col1">2022-09-19</div>
		    <div class="col1">11</div>
		    <div class="col1">탈퇴완료</div>
		    
		    <div class="col1">2</div>
		    <div class="col1">승마</div>
		    <div class="col1">2022-10-01</div>
		    <div class="col1">23</div>
		    <div class="col1">탈퇴완료</div>
		    
		    <div class="col1">3</div>
		    <div class="col1">골프</div>
		    <div class="col1">2022-10-25</div>
		    <div class="col1">50</div>
		    <div class="col1">탈퇴완료</div>
		    
		    <div class="col1">4</div>
		    <div class="col1">테니스</div>
		    <div class="col1">2023-01-12</div>
		    <div class="col1"></div>
		    <div class="col1"><input type="button" value="탈퇴하기"  /></div>
		  </div>
		</div>	

	
	<!-- Vertically centered modal -->
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal" tabindex="-1">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title">Modal</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        <p>테니스 동호회를 탈퇴 하시겠습니까?</p>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
		        <button type="button" class="btn btn-primary">Save changes</button>
		      </div>
		    </div>
		  </div>
		</div>
	</div>
	
<%@include file="../include/footer.jsp"%>

