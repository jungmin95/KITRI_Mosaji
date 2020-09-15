<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>jQuery nicelabel.js Plugin Demos</title>
    
<link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/resources/nicelabel/css/jquery-nicelabel.css" rel="stylesheet" type="text/css">
<script src="http://code.jquery.com/jquery-1.12.3.min.js"></script>	
<link href="<%=request.getContextPath()%>/resources/jquery-nicelabel.css" rel="stylesheet">
<script src="<%=request.getContextPath()%>/resources/code.jquery.com/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/jquery.nicelabel.js"></script>



	
	<style>
    body { background-color:#fafafa; font-family:'Open Sans';}
    .container { margin:150px auto 30px auto; max-width:640px;}
		.clearfix{clear:both;}
		.rect-checkbox{float:left;margin-left:20px;}
		.rect-radio{float:left;margin-left:20px;}
		.circle-checkbox{float:left;margin-left:20px;}
		.circle-radio{float:left;margin-left:20px;}
		.text_checkbox{float:left;margin-left:20px;}
		.text_radio{float:left;margin-left:20px;}
	</style>
</head>
<body>
<div id="jquery-script-menu">
<div class="jquery-script-center">
<ul>
<li><a href="http://www.jqueryscript.net/form/Nice-Checkbox-And-Radio-Button-Replacement-Plugin-nicelabel-js.html">Download This Plugin</a></li>
<li><a href="http://www.jqueryscript.net/">Back To jQueryScript.Net</a></li>
</ul>
<div class="jquery-script-ads"><script type="text/javascript"><!--
google_ad_client = "ca-pub-2783044520727903";
/* jQuery_demo */
google_ad_slot = "2780937993";
google_ad_width = 728;
google_ad_height = 90;
//-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script></div>
<div class="jquery-script-clear"></div>
</div>
</div>
<div class="container">
<h1>jQuery nicelabel.js Plugin Demos</h1>
<div id="rect-checkbox">
		<h2 style="margin-left:20px;">Default: Checkboxes</h2>
		<br>
		<input class="rect-nicelabel" data-nicelabel='{"position_class": "rect-checkbox"}' checked type="checkbox" />
		<input class="rect-nicelabel" data-nicelabel='{"position_class": "rect-checkbox"}' type="checkbox" />
		<input class="rect-nicelabel" data-nicelabel='{"position_class": "rect-checkbox"}' disabled type="checkbox" />
		<input class="rect-nicelabel" data-nicelabel='{"position_class": "rect-checkbox"}' type="checkbox" />
	</div>	
	<div class="clearfix"></div>
	<br>
	<div id="rect-radio">
		<h2 style="margin-left:20px;">Default: Radio Buttons</h2>
		<br>
		<input class="rect-nicelabel" data-nicelabel='{"position_class": "rect-radio"}' checked name="rect-radio" type="radio" />
		<input class="rect-nicelabel" data-nicelabel='{"position_class": "rect-radio"}' name="rect-radio" type="radio" />
		<input class="rect-nicelabel" data-nicelabel='{"position_class": "rect-radio"}' name="rect-radio" type="radio" />
		<input class="rect-nicelabel" data-nicelabel='{"position_class": "rect-radio"}' disabled name="rect-radio" type="radio" />
	</div>
	<div class="clearfix"></div>
	<br>
	<div id="circle-checkbox">
		<h2 style="margin-left:20px;">iOS Switch: Checkboxes</h2>
		<br>
		<input class="circle-nicelabel" data-nicelabel='{"position_class": "circle-checkbox"}' disabled checked type="checkbox" />
		<input class="circle-nicelabel" data-nicelabel='{"position_class": "circle-checkbox"}'  type="checkbox" />
		<input class="circle-nicelabel" data-nicelabel='{"position_class": "circle-checkbox"}'  type="checkbox" />
		<input class="circle-nicelabel" data-nicelabel='{"position_class": "circle-checkbox"}'  type="checkbox" />
	</div>	
	<div class="clearfix"></div>
	<br>
	<div id="circle-radio">
		<h2 style="margin-left:20px;">iOS Switch: Radio Buttons</h2>
		<br>
		<input class="circle-nicelabel" data-nicelabel='{"position_class": "circle-radio"}' disabled checked name="circle-radio" type="radio" />
		<input class="circle-nicelabel" data-nicelabel='{"position_class": "circle-radio"}' name="circle-radio" type="radio" />
		<input class="circle-nicelabel" data-nicelabel='{"position_class": "circle-radio"}' name="circle-radio" type="radio" />
		<input class="circle-nicelabel" data-nicelabel='{"position_class": "circle-radio"}' name="circle-radio" type="radio" />
	</div>
	
	
	<div class="clearfix"></div>
	<br>
	<div id="text-checkbox">
		<input class="text-nicelabel" data-nicelabel='{"position_class": "text_checkbox", "checked_text": "Checked", "unchecked_text": "jQuery"}' checked type="checkbox" />	
		<input class="text-nicelabel" data-nicelabel='{"position_class": "text_checkbox", "checked_text": "Checked", "unchecked_text": "HTML5"}' type="checkbox" />	
		<input class="text-nicelabel" data-nicelabel='{"position_class": "text_checkbox", "checked_text": "Checked", "unchecked_text": "CSS3"}' type="checkbox" />	
		<input class="text-nicelabel" data-nicelabel='{"position_class": "text_checkbox"}' type="checkbox" />	
	</div>	
	<br>

	
	
	
	
<div class="clearfix"></div>
	<br>
	<div id="text-radio">
		<h2 style="margin-left:20px;">Text Label: Radio Buttons</h2>
		<br>
		<input class="text-nicelabel" data-nicelabel='{"position_class": "text_radio", "checked_text": "Checked", "unchecked_text": "jQuery"}' checked type="radio" name="text_radio" />	
		<input class="text-nicelabel" data-nicelabel='{"position_class": "text_radio", "checked_text": "Checked", "unchecked_text": "HTML5"}' type="radio" name="text_radio"  />	
		<input class="text-nicelabel" data-nicelabel='{"position_class": "text_radio", "checked_text": "Checked", "unchecked_text": "CSS3"}' type="radio" name="text_radio"  />	
		<input class="text-nicelabel" data-nicelabel='{"position_class": "text_radio"}' type="radio" name="text_radio"  />	
	</div>	
	<div class="clearfix"></div>
	<br>
	<div id="text-checkbox-ico">
		<h2 style="margin-left:20px;">Custom Text: Checkboxes</h2>
		<br>
		<input class="text-nicelabel" data-nicelabel='{"position_class": "text_checkbox", "checked_text": "Checked", "unchecked_text": "jQuery"}' checked type="checkbox" />	
		<input class="text-nicelabel" data-nicelabel='{"position_class": "text_checkbox", "checked_text": "Checked", "unchecked_text": "HTML5"}' type="checkbox" />	
		<input class="text-nicelabel" data-nicelabel='{"position_class": "text_checkbox", "checked_text": "Checked", "unchecked_text": "CSS3"}' type="checkbox" />	
		<input class="text-nicelabel" data-nicelabel='{"position_class": "text_checkbox"}' type="checkbox" disabled />	
	</div>

</body>

	<script src="<%=request.getContextPath()%>/resources/jquery.nicelabel.js"></script>
	<script>
	$(function(){
		$('#rect-checkbox > input').nicelabel();
		$('#rect-radio > input').nicelabel();
		$('#circle-checkbox > input').nicelabel();
		$('#circle-radio > input').nicelabel();
		$('#text-checkbox > input').nicelabel();
		$('#text-radio > input').nicelabel();
		$('#text-checkbox-ico > input:eq(0)').nicelabel({
			checked_ico: './ico/checked.png',
			unchecked_ico: './ico/unchecked.png'
		});
		$('#text-checkbox-ico > input:eq(1)').nicelabel({
			checked_ico: './ico/checked.png',
			unchecked_ico: './ico/unchecked.png'
		});
		$('#text-checkbox-ico > input:eq(2)').nicelabel({
			checked_ico: './ico/checked.png',
			unchecked_ico: './ico/unchecked.png'
		});
		$('#text-checkbox-ico > input:eq(3)').nicelabel({
			uselabel: false
		});
		
	});
	</script><script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-36251023-1']);
  _gaq.push(['_setDomainName', 'jqueryscript.net']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
    </div>
</html>