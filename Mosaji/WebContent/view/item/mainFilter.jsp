<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.filter {
	float: left;
	width: 25%;
	padding: 10px;
}

.itemList {
	float: left;
	width: 65%;
	padding: 10px;
}

.i_element{
	float : left;
}

.boxA{
	width : 100%;
} 

.boxA, .boxB{
	width:100%;
	margin-top:10px;
	border-bottom : 1px solid #c7c6c6;
}
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	var arr = [];
	var search = function(num){
		for(i=0;i<arr.length;i++){
			if(arr[i].num == num){
				return arr[i];
			}
		}
		return null;
	}
	
	var makeTbl = function(obj) {
		var html = "<table border='1'>";
		html += "<tr><th>num</th><td>"+obj.i_no+"</td></tr>";
		html += "<tr><th>title</th><td>"+obj.i_name+"</td><tr>";
		html += "<tr><th>writer</th><td>"+obj.i_category1+"</td><tr>";
		html += "<tr><th>date</th><td>"+obj.u_i_category2+"</td><tr>";
		html += "</table>";
		$(".filter").html(html);
	}
	
	function check_data(){
		
		var gval = $(':radio[name="genderRadio"]:checked').val();
		
		if(($('input:checkbox[name="f_age"]').is(":checked") == false) && ($("#f_age_total").is(":checked") == false)){
			alert("연령대를 선택하쇼");
			return false;
		}
		
		if(($('input:checkbox[name="f_stype"]').is(":checked") == false) && ($("#f_skintype_total").is(":checked")) == false){
			alert("피부타입을 선택하쇼");
			return false;
		}
		
		var age_arr = new Array();
		if ($('input:checkbox[name="f_age"]:checked').length == 0){
			age_arr = ["10", "20", "30", "40"];
		} else{
			var f_age = $('input:checkbox[name="f_age"]:checked').each(function(){
				age_arr.push($(this).val());
			});
		}
		
		var stype_arr = new Array();
		if($('input:checkbox[name="f_stype"]:checked').length == 0){
			stype_arr = ["건성", "지성", "중성", "복합성", "민감성"];
		} else{
			var f_stype = $('input:checkbox[name="f_stype"]:checked').each(function(){
				stype_arr.push($(this).val());
			});
		}
		
		$.ajax({
	        url: '${pageContext.request.contextPath }/FilteringListController',
	        type: 'POST',
	        contentType:"application/x-www-form-urlencoded;charset=utf-8",
	        data: {
	        	gval : gval,
	        	age_arr : age_arr,
	        	stype_arr : stype_arr
	        },
	        success: function(result){
				var arr2 = $.parseJSON(result);
				var html;
				$(".itemList").empty();
	        	for(i=0;i<arr2.length;i++){
	        		html = "<div class='boxA'>";
	        		html += "<div class='i_element i_img'><img src='arr2[i].i_img' style='width:100px;height:100px;'></div>";
	        		html += "<div class='i_element i_name' num='"+arr2[i].i_no+"'><h3 style='width:100px'>"+arr2[i].i_name+"</h3></div>";
	        		html += "<div class='i_element i_volume'>"+arr2[i].i_volume+"</div>";
	        		html += "<div class='i_element i_category1'>"+arr2[i].i_category1+"</div>";
	        		html += "<div class='i_element i_category2'>"+arr2[i].i_category2+"</div>";
	        		html += "<div class='i_element i_content'>"+arr2[i].i_content+"</div>";
	        		html += "<div class='i_element i_brand'>"+arr2[i].i_brand+"</div>";
	        		html += "<div class='i_element i_gender'>"+arr2[i].i_gender+"</div>";
	        		html += "<div class='i_element i_age'>"+arr2[i].i_age+"</div>";
	        		html += "<div class='i_element i_skintype'>"+arr2[i].i_skintype+"</div>";
	        		html += "<div class='i_element i_price'>"+arr2[i].i_price+"</div>";
	        		html += "<div class='i_element i_star'>"+arr2[i].i_star+"</div>";
	        		html += "</div>";
	        		$(".itemList").append(html);
	        	}
			}
		});
		
		return true;
	}
	

	$(document).ready(function(){
		$.ajax({
	        url: '${pageContext.request.contextPath }/ItemListController',
	        type: 'POST',
	        success: function(result){
	        	arr = $.parseJSON(result);
	        	var html;
	        	for(i=0;i<arr.length;i++){
	        		html = "<div class='boxA'>";
	        		html += "<div class='i_element i_img'><img src='arr[i].i_img' style='width:100px;height:100px;'></div>";
	        		html += "<div class='i_element i_name' num='"+arr[i].i_no+"'><h3 style='width:100px'>"+arr[i].i_name+"</h3></div>";
	        		html += "<div class='i_element i_volume'>"+arr[i].i_volume+"</div>";
	        		html += "<div class='i_element i_category1'>"+arr[i].i_category1+"</div>";
	        		html += "<div class='i_element i_category2'>"+arr[i].i_category2+"</div>";
	        		html += "<div class='i_element i_content'>"+arr[i].i_content+"</div>";
	        		html += "<div class='i_element i_brand'>"+arr[i].i_brand+"</div>";
	        		html += "<div class='i_element i_gender'>"+arr[i].i_gender+"</div>";
	        		html += "<div class='i_element i_age'>"+arr[i].i_age+"</div>";
	        		html += "<div class='i_element i_skintype'>"+arr[i].i_skintype+"</div>";
	        		html += "<div class='i_element i_price'>"+arr[i].i_price+"</div>";
	        		html += "<div class='i_element i_star'>"+arr[i].i_star+"</div>";
	        		html += "</div>";
	        		$(".itemList").append(html);
	        	}
	        }
	    });
		
		
		$("#f_age_total").click(function(){
			$("input:checkbox[name='f_age']").prop("checked",false);
		});
		
		$('input:checkbox[name="f_age"]').click(function(){
			if($("#f_age_total").is(":checked")){
				$("#f_age_total").prop("checked",false);
			}
		});
		
		$("#f_skintype_total").click(function(){
			$("input:checkbox[name='f_stype']").prop("checked",false);
		});
		
		$('input:checkbox[name="f_stype"]').click(function(){
			if($("#f_skintype_total").is(":checked")){
				$("#f_skintype_total").prop("checked",false);
			}
		});
		
		$("#f_reset_btn").click(function(){
			$("input:checkbox[name='f_age']").prop("checked",false);
			$("input:checkbox[name='f_stype']").prop("checked",false);
			$("input:radio[name='genderRadio']").prop("checked",false);
			$("#f_skintype_total").prop("checked",true);
			$("#f_age_total").prop("checked",true);
			$("input:radio[name='genderRadio']").filter("[value='1']").prop("checked",true);
		})
	});
	
	
	
</script>
<body>
	<%@ include file="/view/common/header.jsp"%>
	<div id="wrapper">
		<div id="staff" class="container">
			<div class="title">
				<h2>당신의 고민을 해결해주는 뭐사지!</h2>
				<span> 연령대, 성별, 취향에 맞는 선물을 추천받으세요!</span>
			</div>
			<div class="filter">
				<fieldset class="filters__filed filters__is-sorted" data-v-07810608>
					<div class="filter-header">
						<i class="icon-sprite icon-filter filter-header__text-icon"
							data-v-2c3efac9></i> <span data-v-2c3efac9>필터</span>
						</h1>
						<button class="filter-reset-btn" id="f_reset_btn">초기화</button>
					</div>
					<section class="filter-body">
						<fieldset class="fieldset">
							<legend itemprop="valueName" content="genderFilter"
								class="fieldset__legend"> 성별 </legend>
							<ul class="fieldset__list">
								<li class="fieldset__list-item fieldset__list-item--selected"><label
									class="fieldset__item-label"><input type="radio"
										class="fieldset__item-input" name="genderRadio" value="1" checked="checked">전체 <!----> <!----></label></li>
								<li class="fieldset__list-item"><label
									class="fieldset__item-label"><input type="radio"
										class="fieldset__item-input" name="genderRadio" value="2">여자 <!----> <!----></label></li>
								<li class="fieldset__list-item"><label
									class="fieldset__item-label"><input type="radio"
										class="fieldset__item-input" name="genderRadio" value="3">남자 <!----> <!----></label></li>
							</ul>
						</fieldset>

						<fieldset class="fieldset" data-v-7e828efe data-v-684826a2>
							<legend itemprop="valueName" content="genderFilter"
								class="fieldset__legend" data-v-7e828efe> 연령대 </legend>
							<ul class="fieldset__list" data-v-7e828efe>
								<li class="fieldset__list-item fieldset__list-item--selected"
									data-v-7e828efe><label class="fieldset__item-label"
									data-v-7e828efe><input type="checkbox"
										class="fieldset__item-input" data-v-7e828efe value="0" checked="checked" id="f_age_total">전체 <!---->
										<!----></label></li>
								<li class="fieldset__list-item" data-v-7e828efe><label
									class="fieldset__item-label" data-v-7e828efe><input
										type="checkbox" class="fieldset__item-input" data-v-7e828efe value="10" name="f_age">10대
										<!----> <!----></label></li>
								<li class="fieldset__list-item" data-v-7e828efe><label
									class="fieldset__item-label" data-v-7e828efe><input
										type="checkbox" class="fieldset__item-input" data-v-7e828efe value="20" name="f_age">20대
										<!----> <!----></label></li>
								<li class="fieldset__list-item" data-v-7e828efe><label
									class="fieldset__item-label" data-v-7e828efe><input
										type="checkbox" class="fieldset__item-input" data-v-7e828efe value="30" name="f_age">30대
										<!----> <!----></label></li>
								<li class="fieldset__list-item" data-v-7e828efe><label
									class="fieldset__item-label" data-v-7e828efe><input
										type="checkbox" class="fieldset__item-input" data-v-7e828efe value="40" name="f_age">40대 이상
										<!----> <!----></label></li>
							</ul>
						</fieldset>

						<fieldset class="fieldset" data-v-7e828efe data-v-684826a2>
							<legend itemprop="valueName" content="genderFilter"
								class="fieldset__legend" data-v-7e828efe> 피부타입 </legend>
							<ul class="fieldset__list" data-v-7e828efe>
								<li class="fieldset__list-item fieldset__list-item--selected"
									data-v-7e828efe><label class="fieldset__item-label"
									data-v-7e828efe><input type="checkbox"
										class="fieldset__item-input" data-v-7e828efe value="전체" checked="checked" id="f_skintype_total">전체 <!---->
										<!----></label></li>
								<li class="fieldset__list-item" data-v-7e828efe><label
									class="fieldset__item-label" data-v-7e828efe><input
										type="checkbox" class="fieldset__item-input" data-v-7e828efe value="건성" name="f_stype">건성
										<!----> <!----></label></li>
								<li class="fieldset__list-item" data-v-7e828efe><label
									class="fieldset__item-label" data-v-7e828efe><input
										type="checkbox" class="fieldset__item-input" data-v-7e828efe value="지성" name="f_stype">지성
										<!----> <!----></label></li>
								<li class="fieldset__list-item" data-v-7e828efe><label
									class="fieldset__item-label" data-v-7e828efe><input
										type="checkbox" class="fieldset__item-input" data-v-7e828efe value="중성" name="f_stype">중성
										<!----> <!----></label></li>
								<li class="fieldset__list-item" data-v-7e828efe><label
									class="fieldset__item-label" data-v-7e828efe><input
										type="checkbox" class="fieldset__item-input" data-v-7e828efe value="복합성" name="f_stype">복합성
										<!----> <!----></label></li>
								<li class="fieldset__list-item" data-v-7e828efe><label
									class="fieldset__item-label" data-v-7e828efe><input
										type="checkbox" class="fieldset__item-input" data-v-7e828efe value="민감성" name="f_stype">민감성
										<!----> <!----></label></li>
							</ul>
						</fieldset>
					</section>
					<button style="margin-top:8px" id="filter_submit" onclick="check_data()">필터 적용</button>
				</fieldset>
			</div>
			
			<div class="itemList">
			</div>
		</div>
		
		<div id="welcome" class="container">
			<div class="title">
				<h2>Welcome to our website</h2>
			</div>
			<p>
				This is <strong>RedMarket</strong>, a free, fully
				standards-compliant CSS template designed by <a
					href="http://templated.co" rel="nofollow">TEMPLATED</a>. The photos
				in this template are from <a href="http://fotogrph.com/">
					Fotogrph</a>. This free template is released under the <a
					href="http://templated.co/license">Creative Commons Attribution</a>
				license, so you're pretty much free to do whatever you want with it
				(even use it commercially) provided you give us credit for it. Have
				fun :)
			</p>
		</div>
	</div>


	<%@ include file="/view/common/footer.jsp"%>
</body>
</html>