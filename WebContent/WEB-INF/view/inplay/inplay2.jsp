<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%String ctxPath=request.getContextPath();%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" href="<%=ctxPath%>/css/jquery-ui.min.css" rel="stylesheet">
<link type="text/css" href="<%=ctxPath%>/css/jquery-ui.theme.min.css" rel="stylesheet">
<link type="text/css" href="<%=ctxPath%>/css/datatables.min.css" rel="stylesheet">
<link type="text/css" href="<%=ctxPath%>/css/bootstrap.min.css" rel="stylesheet" >
<link type="text/css" href="<%=ctxPath%>/css/font-awesome.min.css" rel="stylesheet" >
<link type="text/css" href="<%=ctxPath%>/css/mainLayout.css" rel="stylesheet" >
<style>
.active{background-color: #fff;}
.matchCards{
	margin-top: 5px;
}
.title{
	    width: 100%;
    height: 25px;
    display: flex;
    align-items: center;
    background: #444;
    color: #fff;
    font-size: 15px;
    padding: 5px 10px;
    font-weight: bold;
}
.title i{
    position: absolute;
    right: 10px;
    top: 5px;
    cursor: pointer;
}
.data{
    width: 100%;
    height: 30px;
    background: rgba(255,255,255,1);
	background: -moz-linear-gradient(top, rgba(255,255,255,1) 0%, rgba(246,246,246,1) 47%, rgba(237,237,237,1) 100%);
	background: -webkit-gradient(left top, left bottom, color-stop(0%, rgba(255,255,255,1)), color-stop(47%, rgba(246,246,246,1)), color-stop(100%, rgba(237,237,237,1)));
	background: -webkit-linear-gradient(top, rgba(255,255,255,1) 0%, rgba(246,246,246,1) 47%, rgba(237,237,237,1) 100%);
	background: -o-linear-gradient(top, rgba(255,255,255,1) 0%, rgba(246,246,246,1) 47%, rgba(237,237,237,1) 100%);
	background: -ms-linear-gradient(top, rgba(255,255,255,1) 0%, rgba(246,246,246,1) 47%, rgba(237,237,237,1) 100%);
	background: linear-gradient(to bottom, rgba(255,255,255,1) 0%, rgba(246,246,246,1) 47%, rgba(237,237,237,1) 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#ededed', GradientType=0 );
	border: 1px solid #d5d5d5;
}
.data div{
	float: left;
    width: calc((100% - 150px)/3);
    height: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
}
.data div:nth-child(even){
    background: #2797e6;
    font-weight: bold;
    width: 50px;
}
.data div a{
	color: #000;
    font-size: 14px;
    text-decoration: none;
}
</style>
</head>
<body>
<div class='col-xs-12 rootContainer'>
	<div class="col-xs-12 headerContainer"><jsp:include page="header.jsp"></jsp:include></div>
	<div class="col-xs-12 contentContainer">
		<div class='col-xs-offset-1 col-xs-4'></div>
		<div class='col-xs-6'>

		  <!-- Nav tabs -->
		  <ul class="nav nav-tabs" role="tablist">
		    <li role="presentation" class="active"><a href="#inplay" aria-controls="inplay" role="tab" data-toggle="tab">Popular</a></li>
		    <li role="presentation"><a href="#upcomming" aria-controls="upcomming" role="tab" data-toggle="tab">All Market</a></li>
		  </ul>
		
		  <!-- Tab panes -->
		  <div class="tab-content">
		    <div role="tabpanel" class="tab-pane active" id="inplay">
		    	<div class='col-xs-12 rmpm matchCards'>
		    		<div class='title'>Match Odds <i onclick="hideData(this)" class="fa fa-caret-up fa-caret-down" ></i></div>
		    		<div class='data'>
		    			<div><a href=''>India</a></div>
	    				<div><a href=''>29.0</a></div>
	    				<div><a href=''>Draw</a></div>
	    				<div><a href=''>12.3</a></div>
	    				<div><a href=''>West Indies</a></div>
	    				<div><a href=''>81.0</a></div>
		    		</div>
		    	</div>
		    	<div class='col-xs-12 rmpm matchCards'>
		    		<div class='title'>Match Odds <i onclick="hideData(this)" class="fa fa-caret-up fa-caret-down" ></i></div>
		    		<div class='data'>
		    			<div><a href=''>India</a></div>
	    				<div><a href=''>29.0</a></div>
	    				<div><a href=''>Draw</a></div>
	    				<div><a href=''>12.3</a></div>
	    				<div><a href=''>West Indies</a></div>
	    				<div><a href=''>81.0</a></div>
		    		</div>
		    	</div>
		    	<div class='col-xs-12 rmpm matchCards'>
		    		<div class='title'>Match Odds <i onclick="hideData(this)" class="fa fa-caret-up fa-caret-down" ></i></div>
		    		<div class='data'>
		    			<div><a href=''>India</a></div>
	    				<div><a href=''>29.0</a></div>
	    				<div><a href=''>Draw</a></div>
	    				<div><a href=''>12.3</a></div>
	    				<div><a href=''>West Indies</a></div>
	    				<div><a href=''>81.0</a></div>
		    		</div>
		    	</div>
		    </div>
		    <div role="tabpanel" class="tab-pane" id="upcomming">...</div>
		  </div>
		
		</div>
	</div>
	<div class="footerContainer"><jsp:include page="footer.jsp"></jsp:include> </div>
</div>
</body>
<script src="<%=ctxPath%>/js/jquery-1.12.1.min.js" type="text/javascript"></script>

<script src="<%=ctxPath%>/js/datatables.min.js" type="text/javascript"></script>
<script src="<%=ctxPath%>/js/bootstrap.min.js" type="text/javascript"></script>  
<script src="<%=ctxPath%>/js/jquery-ui.min.js" type="text/javascript"></script>
<script type="text/javascript">
$('#inplayPrime').DataTable({
    "scrollY":  "60vh",
    "scrollCollapse": true,
    "paging":         false,
    "info":     false,
    "filter":false,
    "scrollX": true,
    "fixedHeader": false,
    "order": [[ 0, "desc" ]],
    "columns": [
                { "width": "100px" },
                { "width": "30px" },
                { "width": "100px" },
                { "width": "30px" },
                { "width": "100px" },
                { "width": "30px" }
               ]
        });
        
	function hideData(obj){
		$(obj).toggleClass('fa-caret-up');
		$(obj).parent('div.title').next('div.data').slideToggle();
	}
</script>
</html>



