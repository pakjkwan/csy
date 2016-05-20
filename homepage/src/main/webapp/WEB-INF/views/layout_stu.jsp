<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<html>
<head>
	<meta charset="UTF-8" />
	<title>사용자 페이지</title>
	<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<meta name="apple-mobile-web-app-capable" content="yes">
	 -->
	  <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<link rel="stylesheet" href="${css}/newitem.css" >
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.css">
	<link rel="stylesheet" href="${css}/login.css" >
	<link rel="stylesheet" href="${css}/carousel.css" >
	<link rel='stylesheet' href='http://fullcalendar.io/js/fullcalendar-2.7.1/fullcalendar.css' />
	<link rel='stylesheet' href='http://fullcalendar.io/js/fullcalendar-2.7.1/fullcalendar.print.css' media='print' />
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.1.3/Chart.bundle.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.1.3/Chart.min.js"></script>
	<script src='//cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment.min.js'></script>
	<script src='//ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
	<script src='http://fullcalendar.io/js/fullcalendar-2.7.1/fullcalendar.js'></script>
	<script src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
	<script src="https://www.gstatic.com/charts/loader.js"></script>
	
	<style>
	.test {
		position : relative;
		background: #FFF;
		padding: 20px;
		width: 70%;
		height: 70%;
		margin: 20px auto;
		}
	</style>
</head>
<body>
<!-- style="border:3px solid red;" -->
	<div id="header"><tiles:insertAttribute name="header" />
	</div>
	<div id="content">
	<tiles:insertAttribute name="content" />
	</div>
	<div id="footer" style="text-align:center">
	<tiles:insertAttribute name="footer" />
	</div>
	 <div id="test" class="test white-popup-block mfp-hide auto bg-white">
		<jsp:include page="popup.jsp"></jsp:include>
	</div>
	<a class="popup" href="#test">Open popup</a> 
</body>
	<script>
	$(function() {
		$('.popup').magnificPopup({
			type : 'inline',
			preloader : false,
			modal:true,
			closeContentPos:true,
			fixedContentPos:true,
			alignTop:false,
			showCloseBtn:true
		});
	});
	</script>
</html>
