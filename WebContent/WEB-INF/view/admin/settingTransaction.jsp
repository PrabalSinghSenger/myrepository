<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<%String ctxPath=request.getContextPath();%>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Setting Transaction Admin Panel</title>
	<link rel="stylesheet" href="<%=ctxPath%>/css/datatables.min.css" type="text/css">
    <link rel="stylesheet" href="<%=ctxPath%>/css/bootstrap.min.css" type="text/css"/>
    <link rel="stylesheet" href="<%=ctxPath%>/css/font-awesome.min.css" type="text/css"/>
    <link rel="stylesheet" href="<%=ctxPath%>/css/mainLayout.css" type="text/css">
    <style type="text/css">
    .section1,
    .section2{
   	    display: flex;
    	align-items: center;
   	    margin: 10px 0px;
    }
    .section1 *,
    .section2 *{
   	    display: block;
    	width: 18%;
    	float: left;
    	margin: 0px 1%;
    }
    </style>
</head>
<body>
    <div id='adminPanel' class="rootContainer">
	    <div class="col-xs-12 headerContainer"><jsp:include page="header.jsp"></jsp:include></div>
		<div id='settingTransaction' class="col-xs-12 contentContainer">
			<div class="col-xs-12 rmpm section1">
				<span>Opening Balance</span>
				<input type="text" class="form-control">
				<input type="text" class="form-control">
				<span>Closing Balance</span>
				<input type="text" class="form-control">
			</div>
			<div class="col-xs-12 rmpm section2">
				<button class="btn btn-default">Last Week Records </button>
				<span>27 June 2016</span>
			</div>
			<div class="col-xs-12 rmpm"></div>
			<div class="col-xs-12 rmpm"></div>
			<div class="col-xs-12 rmpm"></div>
			<div class="col-xs-12 rmpm"></div>
	    </div>
    </div>
	<div class="footerContainer"><jsp:include page="footer.jsp"></jsp:include> </div>
</body>
	<script src="<%=ctxPath%>/js/jquery-1.12.1.min.js" type="text/javascript"></script>
   	<script src="<%=ctxPath%>/js/datatables.min.js" type="text/javascript"></script>
 	<script src="<%=ctxPath%>/js/jquery-ui.min.js" type="text/javascript"></script>
 	<script src="<%=ctxPath%>/js/bootstrap.min.js" type="text/javascript"></script>
 	<script src="<%=ctxPath%>/js/global.js" type="text/javascript"></script>
    <script type="text/javascript">

    </script>
</html>