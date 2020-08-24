<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<link href="resources/default.css" rel="stylesheet" type="text/css" media="all" />
<link href="resources/fonts.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>

<%@ include file="common/header.jsp"%>
<div id="wrapper">
	<div id="staff" class="container">
		<div class="title">
			<h2>����� ����� �ذ����ִ� ������!</h2>
			<span> ���ɴ�, ����, ���⿡ �´� ������ ��õ��������!</span> </div>
		<div class="boxA"><img src="resources/images/pic01.jpg" width="300" height="450" alt="" /></div>
		<div class="boxB"><img src="resources/images/pic02.jpg" width="300" height="450" alt="" /></div>
		<div class="boxC"><img src="resources/images/pic03.jpg" width="300" height="450" alt="" /></div>
	</div>
	<div id="page" class="container">
		<div class="boxA">
			<h2>�ڽ�A<br />
				<span>����A</span></h2>
			<p>����A</p>
			<ul class="style4">
				<li class="first"><a href="#">��ũ1</a></li>
				<li><a href="#">��ũ2</a></li>
				<li><a href="#">��ũ3</a></li>
			</ul>
		</div>
		<div class="boxB">
			<h2>�ڽ�B<br />
				<span> ����B</span></h2>
			<ul class="style3">
				<li class="first">
					<p class="date"><a href="#">Dec<b>30</b></a></p>
					<h3>����B</h3>
					<p><a href="#">��ũ1</a></p>
				</li>
				<li>
					<p class="date"><a href="#">Dec<b>28</b></a></p>
					<h3>����B</h3>
					<p><a href="#">��ũ2</a></p>
				</li>
			</ul>
		</div>
		<div class="boxC">
			<h2>Etiam posuere<br />
				<span>augue sit amet</span></h2>
			<ul class="style4">
				<li class="first"><a href="#">Consectetuer adipiscing elit</a></li>
				<li><a href="#">Metus aliquam pellentesque</a></li>
				<li><a href="#">Suspendisse iaculis mauris</a></li>
				<li><a href="#">Urnanet non molestie semper</a></li>
				<li><a href="#">Suspendisse iaculis mauris</a></li>
			</ul>
		</div>
	</div>
	<div id="welcome" class="container">
		<div class="title">
			<h2>Welcome to our website</h2>
		</div>
		<p>This is <strong>RedMarket</strong>, a free, fully standards-compliant CSS template designed by <a href="http://templated.co" rel="nofollow">TEMPLATED</a>. The photos in this template are from <a href="http://fotogrph.com/"> Fotogrph</a>. This free template is released under the <a href="http://templated.co/license">Creative Commons Attribution</a> license, so you're pretty much free to do whatever you want with it (even use it commercially) provided you give us credit for it. Have fun :) </p>
	</div>
</div>


<%@ include file="common/footer.jsp"%>
</body>
</html>