<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
.msj {
	float: left;
	width: 30%;
}

.vw {
	float: left;
	height: 500px;;
}

.pp {
	float: left;
}

.sel {
	float: left;
}

.searchbtn, .naverbtn {
	margin-top: 10px;
}

.searchbtn {
	margin-left: 5px;
}

.wrap-star {
	float: right;
	margin-bottom: 30px;
	margin-top: 4px;
}

.card-content {
	border-top: 2px solid #f0f0f2;
	border-bottom: 2px solid #f0f0f2;
	margin-top: 60px;
	margin-bottom: 30px;
	padding: 30px;
}

.card-subtitle {
	color: black;
	margin-top: 30px;
}

.card-text {
	margin-top: 30px;
}

.card2 {
	margin-top: 30px;
}

.title {
	color: #6c757d;
}

td {
	padding-top: 20px;
	padding-right: 40px;
}

istar {
	float: right;
	font-size: 20px;
	margin-right: 5px;
	color: #6c757d;
}

.search_option {
	width: 70%;
	margin-bottom: 1rem;
}

h2 {
	font-size: 15px;
}

.star-rating {
	width: 100px;
}

.star-rating, .star-rating span {
	display: inline-block;
	height: 17.5px;
	overflow: hidden;
	background:
		url(${pageContext.request.contextPath}/resources/images/star100.png)
		no-repeat;
}

.star-rating span {
	background-position: left bottom;
	line-height: 0;
	vertical-align: top;
}
</style>

<!---- css ---->

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

<script>
	function check_review(){
		
		var r_content = document.getElementById("r_content").value;
		var r_star = document.getElementById("r_star").value;
		
		if (r_content == ""){
			alert("리뷰 내용을 작성해 주세요.");
			return false
		}
		else if (r_star == ""){
			alert("리뷰 별점을 입력해 주세요.");
			return false
		}
		alert("리뷰 등록완료");
		
		return true;
	}
</script>


</head>

<body>

	<%@ include file="/view/common/header.jsp"%>

	<div class="alert alert-secondary" role="alert"></div>

	<div class="container" style="margin-top: 150px;">
		<div class="vw">

			<img style="height: 300px; width: 300px; display: block;"
				src="${i.i_img}" alt="Card image">
		</div>


		<div class="card-body" style="margin-left: 33%;">
			<h6 class="card-brand" style="color: red">${i.i_brand}</h6>
			<h4 class="card-title" style="font-size: 30px;">${i.i_name}</h4>
			<h6 class="card-subtitle mb-2 text-muted">${i.i_volume}
				/
				<price style="color:black">${i.i_price}원</price>
			</h6>
			<istar style="float:right; color:gray;">
			&nbsp;&nbsp;(${reviewcount.allCount}) </istar>
			<div class="wrap-star">
				<div class='star-rating'>
					<span style="width: ${i.i_star * 100 div 100 * 20}%"></span>

				</div>
			</div>
			<istar>${i.i_star }</istar>

			<c:if test="${i.i_content == null }">
				<section class="card-content">
					<i class="fas fa-vial" style="color: #e16d33; float: left"></i>
					<div style="color: #6c757d !important; margin-left: 20px;">등록된
						성분이 없습니다.</div>
				</section>
			</c:if>
			<c:if test="${i.i_content != null }">
				<section class="card-content">
					<div style="color: #e16d33">
						<i class="fas fa-vial"></i> 성분 - ${i.i_content }
					</div>
				</section>
			</c:if>

			<table>
				<tbody>
					<tr>
						<td class="title">카테고리</td>
						<td>${i.i_category1}-${i.i_category2}</td>
					</tr>
					<tr>
						<td class="title">제품 설명</td>
						<td>${i.i_brand}의${i.i_category2}</td>
					</tr>
					<tr>
						<td class="title">추천 연령/성별</td>
						<td>${i.i_age }대/${i.i_gender }성</td>
					</tr>
					<tr>
						<td class="title">추천 피부타입</td>
						<td>${i.i_skintype }</td>
					</tr>
				</tbody>
			</table>

			<c:if test="${sessionScope.u_id != 'admin' }">
				<div class="row">
					<c:if test="${wishlistduplication.duplicationCheck == 0 }">
						<form
							action="${pageContext.request.contextPath }/AddWishlistController">
							<input type="hidden" name="i_no" id="i_no" value="${i.i_no }">
							<c:if test="${not empty sessionScope.u_id }">
								<button type="submit" class="btn btn-outline-danger"
									onclick="alert('찜완료')"
									style="margin-top: 50px; margin-left: 17px;">찜하기</button>
							</c:if>

						</form>
					</c:if>

					<c:if test="${wishlistduplication.duplicationCheck != 0 }">

						<input type="hidden" name="i_no" id="i_no" value="${i.i_no }">
						<button type="button" class="btn btn-danger"
							onclick="alert('찜 두번 안돼요')" style="margin-top: 50px;"
							value="${i.i_no }">찜완료</button>
					</c:if>



					<button type="button" class="btn btn-outline-info searchbtn"
						style="margin-top: 50px; margin-left: 10px"
						onclick="window.open('https://search.shopping.naver.com/search/all?query=${i.i_name}&cat_id=&frm=NVSHATC')">쇼핑하기</button>

					<button type="button" class="btn btn-outline-success"
						onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=${i.i_name}')"
						style="margin-top: 50px; margin-left: 10px;">네이버 검색하기</button>
				</div>
			</c:if>
		</div>



		<c:if test="${sessionScope.u_id == 'admin' }">

			<div class="row">

				<form
					action="${pageContext.request.contextPath }/ItemUpdateGetController">
					<input type="hidden" name="i_no" value="${i.i_no }"> <input
						class="btn btn-primary" type="submit" value="상품 수정"
						style="background: #6B66FF; border: 1px solid #6B66FF; margin-left: 80px; margin-right: 10px;">
				</form>

				<form
					action="${pageContext.request.contextPath }/ItemDeleteController">
					<input type="hidden" name="i_no" value="${i.i_no }"> <input
						class="btn btn-secondary" type="submit" value="상품 삭제" s
						onclick="alert('삭제 완료')">
				</form>


			</div>

		</c:if>


		<div>
				<div class="container"
					style="border-top: 2px solid #f0f0f2; margin-top: 50px;">
					<h3 class="card-header"
						style="text-align: center; background-color: white; margin-top: 5%;">
						<!-- <a href="/Mosaji/ItemDetailController?i_no=${wishlist.i_no }" style="color: #625772;" >${wishlist.i_name }</a> -->
						리뷰 작성
					</h3>
				</div>

				<div class="container">
					<div class="rww" role="document">
						<form method="post"
							action="${pageContext.request.contextPath }/AddReviewController">
							<div class="row">
								<div class="col-md-12">
									<textarea rows="5" cols="115%" name="r_content" id="r_content"
										style="width: 100%; padding: 15px;"
										placeholder="여러분의 솔직한 리뷰를 남겨주세요."></textarea>
									<input type="hidden" value="${i.i_no }" name="i_no" id="i_no" />
								</div>

								<div class="col-md-8">
									<div class="form-group">
										<select class="custom-select" id="r_star" name="r_star">
											<option selected="">--- 별점 선택하기 ---</option>
											<option value="1">⭐</option>
											<option value="2">⭐⭐</option>
											<option value="3">⭐⭐⭐</option>
											<option value="4">⭐⭐⭐⭐</option>
											<option value="5">⭐⭐⭐⭐⭐</option>
										</select>
									</div>
								</div>

								<div class="col-md-4">
									<c:if test="${not empty sessionScope.u_id }">
										<input type="submit" class="btn btn-secondary" value="등    록"
											style="width: 100%; float: right; background: #6B66FF; border: 1px solid #6B66FF;"
											onclick="alert('리뷰 등록완료')" />
									</c:if>
									<c:if test="${empty sessionScope.u_id }">
										<input type="button" class="btn btn-secondary"
											value="로그인 후 작성해 주세요" style="width: 100%; float: right;"
											onclick="location.href='/Mosaji/view/user/login.jsp'" />
									</c:if>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>



	</div>
	<!-- 		<div class="card-footer text-muted vw">이건 뭘로하지</div> -->
	

	<!-- 	<div class="container"> -->
	<!-- 		<ul class="nav nav-pills"> -->
	<!-- 			<li class="nav-item"><a class="nav-link active" href="#">Active</a> -->
	<!-- 			</li> -->
	<!-- 			<li class="nav-item dropdown"><a -->
	<!-- 				class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" -->
	<!-- 				role="button" aria-haspopup="true" aria-expanded="false">Dropdown</a> -->
	<!-- 				<div class="dropdown-menu"> -->
	<!-- 					<a class="dropdown-item" href="#">Actㅋㅋion</a> <a -->
	<!-- 						class="dropdown-item" href="#">Anㅋother action</a> <a -->
	<!-- 						class="dropdown-item" href="#">Sometㄹㅊhing else here</a> -->
	<!-- 					<div class="dropdown-divider"></div> -->
	<!-- 					<a class="dropdown-item" href="#">Separateㅇㅎd link</a> -->
	<!-- 				</div></li> -->
	<!-- 			<li class="nav-item"><a class="nav-link" href="#">Link</a></li> -->
	<!-- 			<li class="nav-item"><a class="nav-link disabled" href="#">Disabled</a> -->
	<!-- 			</li> -->
	<!-- 		</ul> -->
	<!-- 	</div> -->


		
			<!-- 
			<div class="row">
				<div class="col-md-3"
					style="text-align: -webkit-center; margin-top: 15px; padding: 20px;">
					<div class="search_option">
						<select class="custom-select" style="text-align-last: center;">
							<option selected="" disabled selected hidden>피부타입</option>
							<option value="1">건성</option>
							<option value="2">중성</option>
							<option value="3">지성</option>
							<option value="4">복합성</option>
							<option value="5">민감성</option>
						</select>
					</div>

					<div class="search_option">
						<select class="custom-select" style="text-align-last: center;">
							<option selected="" disabled selected hidden>연령</option>
							<option value="1">10대</option>
							<option value="2">20대</option>
							<option value="3">30대</option>
							<option value="4">40대</option>
						</select>
					</div>

					<div class="search_option">
						<select class="custom-select" style="text-align-last: center;">
							<option selected="" disabled selected hidden>성별</option>
							<option value="1">여자</option>
							<option value="2">남자</option>
						</select>
					</div>

					<button type="button" class="btn btn-outline-light search_option"
						style="background: #6B66FF; border:1px solid #6B66FF;">검색</button>


				</div> 	 -->

				<hr>
	
				<div>
				<p style="font-size:30px; text-align:center; margin-top:2.5%;">피부타입별 평점</p>
			
				<div  class="container" style="margin-top: 10px; "> 
	 			
				<div style="border: 2px solid #f0f0f2; padding: 20px;">
					<a>건성(${reviewcount.dryCount })</a>
					<div class="progress">
						<div class="progress-bar progress-bar-striped" role="progressbar"
							style="width: ${reviewcount.dryStar * 20}%" aria-valuenow="10"
							aria-valuemin="0" aria-valuemax="100"></div>
					</div>
					<a>중성(${reviewcount.normalCount })</a>
					<div class="progress">
						<div class="progress-bar progress-bar-striped bg-success"
							role="progressbar" style="width: ${reviewcount.normalStar * 20}%"
							aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
					</div>
					<a>지성(${reviewcount.oilyCount })</a>
					<div class="progress">
						<div class="progress-bar progress-bar-striped bg-info"
							role="progressbar" style="width: ${reviewcount.oilyStar * 20}%"
							aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
					</div>
					<a>복합성(${reviewcount.complexitiesCount })</a>
					<div class="progress">
						<div class="progress-bar progress-bar-striped bg-warning"
							role="progressbar"
							style="width: ${reviewcount.complexitiesStar * 20}%"
							aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
					</div>
					<a>민감성(${reviewcount.sensitiveCount })</a>
					<div class="progress">
						<div class="progress-bar progress-bar-striped bg-danger"
							role="progressbar"
							style="width: ${reviewcount.sensitiveStar * 20}%"
							aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
					</div>
				</div>
				</div>
				</div>
				
				
						
				
				
				
				<hr>
				<div class=container>
					<div>
					
					<p style="font-size:30px; margin-top:2%; text-align:center;" >리뷰보기</p>
<!-- 				<p style="font-size:30px; margin-top:2%; margin-left:45%; float:left;">리뷰 보기</p>

							<select class="custom-select" style="width:10%;  margin-left:84%; float:left;">
								<option value="1">최신 순</option>
								<option value="2">오래된 순</option>
							</select>
						
						<button type="button" class="btn btn-outline-light sel"
						style="background: #6B66FF; border:1px solid #6B66FF; float:right; onclick="">정렬</button>
 -->						
					</div>
			
					</div>




	<c:if test="${not empty review }">
		<c:forEach var="review" items="${review }">
			<div class="alert alert-warning container" role="alert" style=" margin-top: 20px; background-color : white; border-color : #f0f0f2;  color:black;">
				<h4 class="alert-heading">
					별점 :
					<c:choose>
						<c:when test="${review.r_star == 5 }">
							<img
								src="${pageContext.request.contextPath }/resources/images/star5.png"
								style="width: 150px;">
						</c:when>
						<c:when test="${review.r_star == 4 }">
							<img
								src="${pageContext.request.contextPath }/resources/images/star4.png"
								style="width: 150px;">
						</c:when>
						<c:when test="${review.r_star == 3 }">
							<img
								src="${pageContext.request.contextPath }/resources/images/star3.png"
								style="width: 150px;">
						</c:when>
						<c:when test="${review.r_star == 2 }">
							<img
								src="${pageContext.request.contextPath }/resources/images/star2.png"
								style="width: 150px;">
						</c:when>
						<c:when test="${review.r_star == 1 }">
							<img
								src="${pageContext.request.contextPath }/resources/images/star1.png"
								style="width: 150px;">
						</c:when>
					</c:choose>
				</h4>
				<p>
					피부타입 :
					<c:choose>
						<c:when test="${review.u_skintype == '건성' }">
							<span class="badge badge-pill badge-primary">건성</span>
						</c:when>
						<c:when test="${review.u_skintype == '중성' }">
							<span class="badge badge-pill badge-success">중성</span>
						</c:when>
						<c:when test="${review.u_skintype == '지성' }">
							<span class="badge badge-pill badge-info">지성</span>
						</c:when>
						<c:when test="${review.u_skintype == '복합성' }">
							<span class="badge badge-pill badge-warning">복합성</span>
						</c:when>
						<c:when test="${review.u_skintype == '민감성' }">
							<span class="badge badge-pill badge-danger">민감성</span>
						</c:when>
						<c:otherwise>
							<span class="badge badge-pill badge-primary">선택 안함</span>
						</c:otherwise>
					</c:choose>
					/ ${review.u_age }세 ${review.u_gender }
				</p>
				
				
				<c:choose>
						<c:when test="${review.u_skintype == '건성' }">
							<hr style="border-top-color:#007bff;">
						</c:when>
						<c:when test="${review.u_skintype == '중성' }">
							<hr style="border-top-color:#28a745;">
						</c:when>
						<c:when test="${review.u_skintype == '지성' }">
							<hr style="border-top-color:#3ab0c3;">
						</c:when>
						<c:when test="${review.u_skintype == '복합성' }">
							<hr style="border-top-color:#ffc107;">
						</c:when>
						<c:when test="${review.u_skintype == '민감성' }">
							<hr style="border-top-color:#dc3545;">
						</c:when>
						<c:otherwise>
							<hr style="border-top-color:black;">
						</c:otherwise>
					</c:choose>
				<p class="mb-0">${review.r_content }</p>
				<c:if test="${review.u_id == sessionScope.u_id }">
					<form
						action="${pageContext.request.contextPath }/DeleteReviewController"
						method="post">
						<input type="hidden" name="r_no" id="r_no" value="${review.r_no }">
						<input type="hidden" name="i_no" id="i_no" value="${review.i_no }">
						<input type="submit" class="btn btn-primary" style="background: #6B66FF; border:1px solid #6B66FF; float: right;" value="내 리뷰삭제">							
					</form>
				</c:if>
			</div>
			<div class="alert alert-light container" role="alert">
			</div>
		</c:forEach>
		<div class="alert alert-light container" role="alert" style="margin:50px;">
		</div>
	</c:if>
	
	
	<c:if test="${empty review }">
		<div style="margin-top: 200px; margin-bottom: 200px;">
			<h3 style="text-align: center;">리뷰가 없습니다</h3>
		</div>
	</c:if>



	<!-- 	<div class="container msjj"> -->
	<!-- 		<div class="card border-danger mb-3 msj" style="max-width: 20rem;"> -->
	<!-- 			<div class="card-header">연령/피부타입/성별</div> -->
	<!-- 			<div class="card-body"> -->
	<!-- 				<h4 class="card-title">별점</h4> -->
	<!-- 				<p class="card-text">리뷰 내용</p> -->
	<!-- 			</div> -->
	<!-- 		</div> -->

	<!-- 		<div class="card border-danger mb-3 msj" style="max-width: 20rem;"> -->
	<!-- 			<div class="card-header">연령/피부타입/성별</div> -->
	<!-- 			<div class="card-body"> -->
	<!-- 				<h4 class="card-title">별점</h4> -->
	<!-- 				<p class="card-text">리뷰 내용</p> -->
	<!-- 			</div> -->
	<!-- 		</div> -->

	<!-- 		<div class="card border-danger mb-3 msj" style="max-width: 20rem;"> -->
	<!-- 			<div class="card-header">연령/피부타입/성별</div> -->
	<!-- 			<div class="card-body"> -->
	<!-- 				<h4 class="card-title">별점</h4> -->
	<!-- 				<p class="card-text">리뷰 내용</p> -->
	<!-- 			</div> -->
	<!-- 		</div> -->
	<!-- 	</div> -->

	<!-- 	<div class="container"> -->
	<!-- 		<h3 class>--------------------------------</h3> -->
	<!-- 	</div> -->


	<!-- 	<fieldset> -->
	<!-- 		<h1 class="container">필터기능??? 아오ㅡㅡ 뭘로하지</h1> -->
	<!-- 		<div class="container"> -->
	<!-- 			<div class="form-group"> -->
	<!-- 				<div class="custom-control custom-radio"> -->
	<!-- 					<input type="radio" id="customRadio1" name="customRadio" -->
	<!-- 						class="custom-control-input" checked=""> <label -->
	<!-- 						class="custom-control-label" for="customRadio1">건성</label> -->
	<!-- 				</div> -->
	<!-- 				<div class="custom-control custom-radio"> -->
	<!-- 					<input type="radio" id="customRadio2" name="customRadio" -->
	<!-- 						class="custom-control-input"> <label -->
	<!-- 						class="custom-control-label" for="customRadio2">중성</label> -->
	<!-- 				</div> -->
	<!-- 				<div class="custom-control custom-radio"> -->
	<!-- 					<input type="radio" id="customRadio3" name="customRadio" -->
	<!-- 						class="custom-control-input" disabled=""> <label -->
	<!-- 						class="custom-control-label" for="customRadio3">지성</label> -->
	<!-- 				</div> -->
	<!-- 			</div> -->
	<!-- 			<div class="form-group"> -->
	<!-- 				<div class="custom-control custom-checkbox"> -->
	<!-- 					<input type="checkbox" class="custom-control-input" -->
	<!-- 						id="customCheck1" checked=""> <label -->
	<!-- 						class="custom-control-label" for="customCheck1">10대</label> -->
	<!-- 				</div> -->
	<!-- 				<div class="custom-control custom-checkbox"> -->
	<!-- 					<input type="checkbox" class="custom-control-input" -->
	<!-- 						id="customCheck2" disabled=""> <label -->
	<!-- 						class="custom-control-label" for="customCheck2">20대</label> -->
	<!-- 				</div> -->
	<!-- 			</div> -->
	<!-- 			<div class="form-group"> -->
	<!-- 				<div class="custom-control custom-switch"> -->
	<!-- 					<input type="checkbox" class="custom-control-input" -->
	<!-- 						id="customSwitch1" checked=""> <label -->
	<!-- 						class="custom-control-label" for="customSwitch1">복합성</label> -->
	<!-- 				</div> -->
	<!-- 				<div class="custom-control custom-switch"> -->
	<!-- 					<input type="checkbox" class="custom-control-input" disabled="" -->
	<!-- 						id="customSwitch2"> <label class="custom-control-label" -->
	<!-- 						for="customSwitch2">아아아아ㅏ아</label> -->
	<!-- 				</div> -->
	<!-- 			</div> -->
	<!-- 			<div class="form-group"> -->
	<!-- 				<div class="input-group mb-3"></div> -->
	<!-- 			</div> -->
	<!-- 		</div> -->
	<!-- 	</fieldset> -->


	<!-- 	<div class="card-body"> -->
	<!-- 		<h4 class="card-title">상품이름 : {상품이름(브랜드)}</h4> -->
	<!-- 		<h6 class="card-subtitle mb-2 text-muted">카테고리 : {카테고리1/카테고리2}</h6> -->
	<!-- 		<h6 class="card-subtitle mb-2 text-muted">용량/가격 : {용량/가격}</h6> -->
	<!-- 		<p class="card-text">제품설명 : {제품설명 지울수도 있음}</p> -->

	<!-- 		<button type="button" class="btn btn-secondary">찜하기</button> -->
	<!-- 		<button type="button" class="btn btn-secondary">네이버검색</button> -->
	<!-- 		<button type="button" class="btn btn-secondary">네이버상점검색</button> -->

	<!-- 		<a href="#" class="card-link">찜하기</a> <a href="#" class="card-link">네이버검색링크</a> -->
	<!-- 		<a href="#" class="card-link">네이버상점링크</a> -->
	<!-- 	</div> -->

	<!-- 	<div class="card-body1"> -->
	<!-- 		<button type="button" class="btn btn-outline-secondary" -->
	<%-- 			onclick="window.open('https://search.shopping.naver.com/search/all?query=${i.i_name}&cat_id=&frm=NVSHATC') ">네이버 --%>
	<!-- 			쇼핑연결</button> -->
	<!-- 		<button type="button" class="btn btn-outline-info" -->
	<%-- 			onclick="window.open('https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=${i.i_brand}') ">브랜드 --%>
	<!-- 			명으로 검색하기</button> -->
	<!-- 		<button type="button" class="btn btn-outline-danger">찜하기</button> -->
	<!-- 	</div> -->


<div class="p-3 mb-2 bg-white text-dark"></div>
	<%@ include file="/view/common/footer.jsp"%>

</body>
</html>
