
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@include file="../include/header.jsp"%>

<div class="container" style="padding-top:150px;">
	<div class="row">
		<div class="col-3">
			<h4>카테고리 :</h4>
		</div>
		<div class="col-9">
			<select name="club" class="select" style="width:50%; text-start">
				<option disabled selected>LeisureSports</option>
				<option value="Sports">Sports</option>
				<option value="Travel">Travel</option>
				<option value="Study">Study</option>
			</select>
		</div>
	</div>
	<div class="row">
		<div class="col-3">
			<h4>동호회명 :</h4>
		</div>
		<div class="col-9">
			<form class="d-flex">
				<input class="form-control me-2" type="search" placeholder="Search"
					aria-label="Search">
				<button class="btn btn-outline-success" type="submit">Search</button>
			</form>
		</div>
	</div>
</div>

<div class="container d-flex justify-content-center">
	<table class="table table-striped" style="width:100%;">
		<tr>
			<th>번 호</th>
			<th>카테고리</th>
			<th>동호회명</th>
			<th>시간</th>
			<th>대장</th>
			<th class="text-center">상세보기&신청하기</th>
		</tr>
		<tr>
			<td>1</td>
			<td>운동</td>
			<td>등산</td>
			<td>--:--</td>
			<td>아무개</td>
			<td class="text-center"><a href="/home/clubinfo"><button type="button"
						class="btn btn-sm btn-outline-secondary ani-button">상세보기</button>
			</a> <a href="/home/detail"><button type="button"
						class="btn btn-sm btn-outline-secondary ani-button">신청하기</button>
			</a></td>
		</tr>
		<tr>
			<td>2</td>
			<td>레저</td>
			<td>수상스키</td>
			<td>--:--</td>
			<td>아무개</td>
			<td class="text-center"><a href="/home/clubinfo"><button type="button"
						class="btn btn-sm btn-outline-secondary ani-button">상세보기</button>
			</a> <a href="/home/detail"><button type="button"
						class="btn btn-sm btn-outline-secondary ani-button">신청하기</button>
			</a></td>
		</tr>

	</table>
</div>

<div class="page_wrap">
	<div class="page_nation">
		<a class="arrow pprev" href="#"></a> <a class="arrow prev" href="#"></a>
		<a href="#" class="active">1</a> <a href="#">2</a> <a href="#">3</a> <a
			href="#">4</a> <a href="#">5</a> <a href="#">6</a> <a href="#">7</a>
		<a href="#">8</a> <a href="#">9</a> <a href="#">10</a> <a
			class="arrow next" href="#"></a> <a class="arrow nnext" href="#"></a>
	</div>
</div>

<%@include file="../include/footer.jsp"%>