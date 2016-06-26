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

</head>
<body>
<div class="col-xs-12 rootContainer">
	<div class="col-xs-12 headerContainer"><jsp:include page="header.jsp"></jsp:include></div>
	<div class="col-xs-12 contentContainer">
		
		<div id='adminLoadPage' class="col-xs-12 rmpd">
			<h1>Welcome To Betsafe Admin</h1>
		</div>
	</div>
	<div class="footerContainer"><jsp:include page="footer.jsp"></jsp:include> </div>
</div>
</body>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.12.1.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/datatables.min.js"></script>
<script type="text/javascript">
	function adminLoadPage(obj,pageName){
		if(pageName=="adminHome"){
			$("#adminLoadPage").html("<h1>Welcome To Betsafe Admin</h1>");
	    	$(".adminMnu").removeClass("active");
	    	$(obj).addClass("active");
		}
		else{
			$.ajax({
			    type: "GET",
			    url: "admin/"+pageName,
			    success: function(data){	
			    	//window.location.hash(pageName);
			    	
			    	$("#adminLoadPage").html(data);
			    	$(".adminMnu").removeClass("active");
			    	$(obj).addClass("active");
			    	//window.history.pushState("object or string", "Title", urlAdd);
			    	if(pageName=="adminManageUser"){
			    		$('#adminMgUsrTbl').DataTable({
			                "scrollY":  "40vh",
			                "scrollCollapse": true,
			                "paging":         false,
			                "info":     false,
			                "filter":false,
			                "scrollX": true,
			                "fixedHeader": false,
			                "order": [[ 0, "desc" ]],
			                "columns": [		   
	                            { "width": "20px" },
	                            { "width": "20px" },
	                            { "width": "50px" },
	                            /* { "width": "200px" },
	                            { "width": "200px" },
	                            { "width": "200px" },
	                            { "width": "200px" },
	                            { "width": "200px" }, */
	                            { "width": "100px" },
	                            { "width": "100px" },
	                            { "width": "100px" },
	                            { "width": "100px" },
	                            { "width": "100px" },			
	                            { "width": "100px" },
	                            { "width": "100px" },
	                            { "width": "100px" },
	                            { "width": "100px" },
	                            { "width": "150px" },
	                            { "width": "100px" },
	                            { "width": "100px" },
	                            { "width": "100px" },
	                            { "width": "100px" },
	                            { "width": "100px" },
	                            { "width": "100px" },
	                            { "width": "120px" }
	                           ]
			            });
			    	}
			    },
			    error: function(e){
			    	alert("Under Construction!!!");
			    	//alert('Error: ' + JSON.stringify(e));
			    }
			});	
		}
	}
	
	$(window).load(function(){
		$("#topNavigation").append("<a id='admin' href='#'><i class='fa fa-user-secret'></i> Admin</a>"+
				"<a id='logout' href='logout'><i class='fa fa-power-off'></i> Logout</a>");
	});
</script>
</html>