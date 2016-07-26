<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<%String ctxPath=request.getContextPath();%>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="<%=ctxPath%>/css/datatables.min.css" type="text/css">
    <link rel="stylesheet" href="<%=ctxPath%>/css/bootstrap.min.css" type="text/css"/>
    <link rel="stylesheet" href="<%=ctxPath%>/css/font-awesome.min.css" type="text/css"/>
    <link rel="stylesheet" href="<%=ctxPath%>/css/mainLayout.css" type="text/css">
    <link rel="stylesheet" href="<%=ctxPath%>/css/admin.css" type="text/css"/>
</head>
<body>
    <div id='adminPanel' class="rootContainer">
	  <div class="col-xs-12 headerContainer"><jsp:include page="header.jsp"></jsp:include></div>
	<div class="col-xs-12 contentContainer">
	<div class="col-xs-10">
		<div class='col-xs-12 tblDiv'>
		<table id='adminBetAcpt' class='table' style="width:100%;">
		<thead>
		<tr>
			<th>Sno</th><th>Rate</th><th>Amount</th><th>Mode</th><th>Fav</th><th>Name</th><th>Total Win</th><th>Total Loss</th><th>Accept</th><th>Decline</th>
		</tr>
		</thead>
		<tbody id="CurrentBetAdminPanel">
		</tbody>
		</table>
		</div>
	</div>
	
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


        $(document).ready(function(){
        	crateBetAdminHtml();
        	$("#adminBetAcpt").DataTable({
        		"scrollY" : "60vh",
        		"scrollCollapse" : true,
        		/* "paging" : true, */
        		/* "info" : true, */
        		/* "filter" : true, */
        		"scrollX" : true,
        		"fixedHeader" : false,
        		"order" : [ [ 0, "desc" ] ]
        	});
        });

        window.setInterval(crateBetAdminHtml, 300000);

        function crateBetAdminHtml(){
        	$("#acceptAdminHtml").html("");
			$("#CurrentBetAdminPanel").html("");
	   	$.ajax({
        	    type: "post",
        	    async:false,
        	    url: "<%=ctxPath%>/getUserBet",
        	    success: function(data){//alert(data)
        	    	var jsonParseData=JSON.parse(data);
        	    	var keys=Object.keys(jsonParseData);
        	    	for(var i=0;i<keys.length;i++){//alert(keys[i])

        	    		if(keys[i]=="UserMap" ){}
        	    		else if(keys[i]=="teamMap"){}
        	    		else{
						var betStr=jsonParseData[keys[i]];
						var parsedBetStr=JSON.parse(betStr);
						var teamName=JSON.parse(jsonParseData["teamMap"]);
						var userName=JSON.parse(jsonParseData["UserMap"]);
						//alert(jsonParseData["UserMap"])

						//alert(parsedBetStr['userId'])
							//alert(JSON.parse(jsonParseData["UserMap"])[parsedBetStr['userId']])
						createBetHtml(parsedBetStr,keys.length,i,userName[parsedBetStr['userId']],teamName[parsedBetStr['matchId']]);
        	    		}
        	    	}
        	    },
        		error:function() {
        			alert("Sorry No User Exist with this  Id.");
        		}
        	});
        }



        function createBetHtml(betStr,length,i,userName,teamName){//alert("call")
      	    var html="";
             html+="<tr id='"+betStr['betId']+"'>";
        	 html+="<th>"+i+"</th>";
        	 html+="<th>"+betStr['betRate']+"</th>";
        	 html+="<th>"+betStr['betAmount']+"</th>";
        	 html+="<th>"+betStr['betType']+"</th>";
        	 html+="<th>"+betStr['onTeam']+"-("+teamName+")</th>";
        	 html+=" <th>"+userName+"-"+betStr['userId']+"</th>";
        	 html+="<th>100000</th>";
        	 html+="<th>100089</th>";
         	 html+="<th><button id='accept_"+betStr['betId']+"' class='btn btn-active btn-primary' onclick='acceptBetByAdmin(this.id)'>Accept</button></th>";
       		 html+="<th><button  id='reject_"+betStr['betId']+"'  onclick='acceptBetByAdmin(this.id)' class='btn btn-active btn-danger'>Reject</button></th>";
        	 html+="<tr>";
        	//}
				$("#CurrentBetAdminPanel").append(html);
        }

        function acceptBetByAdmin(id){

        	$.ajax({
        	    type: "post",
        	    data:  {'betId':id.split("_")[1], 'action':id.split("_")[0]},
        	    url: "<%=ctxPath%>/acceptBetByAdmin",
        	    success: function(data){
        	    	if(id.split("_")[0]=="reject"){
        	    		$("#accept_"+id.split("_")[1]).attr("disabled","true");
        	    		$("#"+id).attr("disabled","true");
        	    	}else{
        	    		$("#reject_"+id.split("_")[1]).attr("disabled","true");
            	    	$("#"+id).attr("disabled","true");
        	    	}

        	    	},
        		error:function() {
        			alert("Sorry No   Id.");

        		}
        	});
        }



        $(window).load(function(){
    		$(".adminMnu").removeClass("active");
        	$("#adminPage1").addClass("active");
    	});

    </script>
</html>