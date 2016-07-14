<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%String ctxPath=request.getContextPath();%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=ctxPath%>/css/datatables.min.css" type="text/css">
<link type="text/css" href="<%=ctxPath%>/css/bootstrap.min.css" rel="stylesheet" >
<link type="text/css" href="<%=ctxPath%>/css/font-awesome.min.css" rel="stylesheet" >
<link type="text/css" href="<%=ctxPath%>/css/mainLayout.css" rel="stylesheet" >
<!-- <style type="text/css">
#adminNavigation{
    background-color: #456065;
	height: 36px;
	color: #fff;
	font-size: 14px;
	position: relative;
	width: 100%;
}
#adminNavigation .adminMnu{
    text-align: center;
    padding: 8px;
    float: left;
    cursor: pointer;
}
#adminNavigation span:hover{
	background-color: #545454;
}
#adminLoadPage{
	text-align: center;
	margin-top: 35px;
	padding: 10px;
	overflow: auto;
	height: calc(100% - 135px);
}
.active{
	background-color: #545454;
}
</style> -->
</head>
<%
HttpSession sessionObj=request.getSession(false);
System.out.println("ses id="+sessionObj.getId());
String userType=(String)sessionObj.getAttribute("userType");
%>
<body>
<div class="col-xs-12 rootContainer">
	<div class="col-xs-12 headerContainer"><jsp:include page="header.jsp"></jsp:include></div>


	<div class="col-xs-12 contentContainer">
			<h1>Welcome To Betsafe Admin</h1>
	</div>
	<div class="footerContainer"><jsp:include page="footer.jsp"></jsp:include> </div>
</div>
</body>
	<script src="<%=ctxPath%>/js/jquery-1.12.1.min.js" type="text/javascript"></script>
   	<script src="<%=ctxPath%>/js/datatables.min.js" type="text/javascript"></script>
 	<script src="<%=ctxPath%>/js/jquery-ui.min.js" type="text/javascript"></script>
 	<script src="<%=ctxPath%>/js/bootstrap.min.js" type="text/javascript"></script>
 	<script src="<%=ctxPath%>/js/global.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(window).load(function(){
			$(".adminMnu").removeClass("active");
    		$("#adminHome").addClass("active");
		});
	</script>
</html>