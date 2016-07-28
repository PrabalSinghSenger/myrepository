<%
System.out.println("ses id="+session.getId());
String userType=(String)session.getAttribute("userType");
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Manage User Panel</title>
<link type="text/css" href="<%=request.getContextPath() %>/css/mainLayout.css" rel="stylesheet" >
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/datatables.min.css" type="text/css">
<link type="text/css" href="<%=request.getContextPath() %>/css/bootstrap.min.css" rel="stylesheet" >
<link type="text/css" href="<%=request.getContextPath() %>/css/bootstrap.min.css.map" rel="stylesheet" >
<link type="text/css" href="<%=request.getContextPath() %>/css/font-awesome.min.css" rel="stylesheet" >
<style type="text/css">
input[text]{width:85px;margin-left: 5px;margin-right: 5px;}
span input[text]{width:32px;margin-left: 5px;margin-right: 5px;}
.kpiDiv{border: 1px dotted #D2D2D2;padding: 10px;margin: 5px;width: 24%;float: left;}
.kpiParentDiv{border: 1px dotted #D2D2D2;padding: 10px;margin: 5px;}
.mrg{margin: 5px;}
.bdr-btm{border-bottom: 1px solid #d3d3d3;}
.pdg5{padding: 5px;}
.pdg10{padding: 10px;}
.heading{background-color: rgb(209, 209, 209);line-height: 1.7;text-align: center;font-size: 22px;}
.pdg0{padding: 0px;}
.teamName{line-height: 2.2;background-color: rgb(209, 209, 209);padding: 3px;font-weight: 600;margin-right: 5px;}
.teamGruopDiv{height: 26px;width: 100%;margin-right: 10px;}
.kpiDiv input[text]{width:85px;margin-left: 5px;margin-right: 5px;float: right;}
</style>
</head>
<body style="height: 100%;width: 100%;padding:0px;">
<div class="col-xs-12 rootContainer"  style="height: 100%;width: 100%;padding:0px;">
<div class="col-xs-12 pdg0" style="height: 100%;width: 100%;padding:0px;background-color: #545454;">
<jsp:include page="header.jsp"></jsp:include>
</div>
	<!-- This is for Body -->
	<div class="col-xs-12 pdg0" style="height: 100%;width: 100%;padding:0px;">
		<div class="col-xs-2 pdg0" style="border: 1px dotted #d2d2d2;">
			<div class="col-xs-12 pdg0" style="max-height: 300px;overflow: auto;">
			<h4 class="heading">Match List</h4>
				<c:forEach  var="bean" items="${teamList }">
				<span class="col-xs-12 bdr-btm" ><input class="MatchChkBox" id="${bean.teamId }" type="checkbox" ><span style="padding-left: 10px;" >${bean.comment }</span></span>
				</c:forEach>
			</div>
			<div  class="col-xs-12 pdg0" style="max-height: 300px;border-top: 1px dotted #d2d2d2;">
			<h4 class="heading"> Session List</h4>
			<div id="SessionContainer" class="col-xs-12 pdg0" style="max-height: 300px;overflow: auto;display:none;">
			
			</div>
			</div>
		</div>
		<!-- for content append -->
		<div class="col-xs-10" style="margin: 0px;padding: 0px;">
		  <!-- Nav tabs -->
		  <ul class="nav nav-tabs" role="tablist">
		    <li role="presentation" class="active"><a href="#MatchInPlay" aria-controls="MatchInPlay" role="tab" data-toggle="tab">Match</a></li>
		    <li role="presentation"><a href="#SessionInPlay" aria-controls="SessionInPlay" role="tab" data-toggle="tab">Session</a></li>
		  </ul>

		  <!-- Tab panes -->
		  <div class="tab-content">
		    <div role="tabpanel" class="tab-pane active" id="MatchInPlay">
		    	
				<div id="AdminTeamNameWithRateDivId"  class="col-xs-12 mrg pdg10" style="height: 20%;border: 1px dotted #d2d2d2;">
						
				</div>
				<div class="col-xs-12"  style="height: 450px;border: 1px dotted #d2d2d2;overflow: hidden;">
					<div class='col-xs-12 tblDiv'>
						
					</div>
				</div>
		    </div>
		    <div role="tabpanel" class="tab-pane" id="SessionInPlay">
		    	<h3>This is for session</h3>
		    </div>
		  </div>
		
		
		</div>
	</div>
	<!-- This is for Footer -->
	<div class="footerContainer"><jsp:include page="footer.jsp"></jsp:include> </div>
</div>
<style type="text/css">
div{margin: 0px;padding: 0px;}
</style>
</body>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.12.1.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/datatables.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
<script type="text/javascript">
var matchId=""; 
var sessionId=""; 
$(function(){

	$("body").on("click",".MatchChkBox",function(){
		
			var checked = $(this).is(':checked');
		    $(".MatchChkBox").prop('checked',false);
		    if(checked) {
		        $(this).prop('checked',true);
		        matchId= $(this).attr("id");
			    setInterval(getSessionByMatchId(matchId), 2000);
			   	setInterval( getAllTeamNameWithRate(matchId), 8000);
			    setInterval( crateBetAdminHtml(matchId), 5000);
		    }
		  
	});
	$("body").on("click",".SessionChkBox",function(){ //alert("call ses");
		var checked = $(this).is(':checked');
	    $(".SessionChkBox").prop('checked',false);
	    if(checked) {
	        $(this).prop('checked',true);
	        sessionId= $(this).attr("id");
	        alert(sessionId);
		    setInterval(getSessionByMatchId(matchId), 2000);
		   	setInterval( getAllTeamNameWithRate(matchId), 8000);
		    setInterval( crateBetAdminHtml(matchId), 5000);
	    }
});
			
});

window.setInterval(callMethodsIn2seconds(matchId), 2000);
function callMethodsIn2seconds(matchId){alert("call")
	getSessionByMatchId(matchId);
	getAllTeamNameWithRate(matchId);
	crateBetAdminHtml(matchId);
}
function getAllTeamNameWithRate(matchId){
	$.ajax({
	    type: "get",
	    data:  {'matchId':matchId,"fromBetAccept":"fromBetAccept"},
	    url: "<%=request.getContextPath()%>/getAllTeamNameWithRate",
	    success: function(data){
	    	//alert(data);
	    	$("#AdminTeamNameWithRateDivId").html(data);
			
	    	},
		error:function() {
			//alert("Sorry No  Session Created");

		}
	});
}


function getSessionByMatchId(matchId){
	$.ajax({
	    type: "post",
	    data:  {'matchId':matchId,"fromBetAccept":"fromBetAccept"},
	    url: "<%=request.getContextPath()%>/getSessionForMatch",
	    success: function(data){
	    	//alert(data);
	    	$("#SessionContainer").show();
			$("#SessionContainer").html(data);
	    	},
		error:function() {
			//alert("Sorry No  Session Created");

		}
	});

	
}


</script>
 <script type="text/javascript">


        $(document).ready(function(){

        	$("#adminUserBetAcptTable").DataTable({
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

        function crateBetAdminHtml(matchId){
        	//$("#adminUserBetAcptTable").html("");
			$("#CurrentBetAdminPanelTbody").html("");
	   	$.ajax({
        	    type: "post",
        	    async:false,
        	    data:{"matchId":matchId},
        	    url: "<%=request.getContextPath()%>/getUserBetByMatchId",
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
						//	alert(JSON.parse(jsonParseData["UserMap"])[parsedBetStr['userId']])
						createBetHtml(parsedBetStr,keys.length,i,userName[parsedBetStr['userId']],teamName[parsedBetStr['matchId']]);
        	    		}
        	    	}
        	    },
        		error:function() {
        		//	alert("Sorry No User Exist with this  Id.");
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
				$("#CurrentBetAdminPanelTbody").append(html);
        }

        function acceptBetByAdmin(id){

        	$.ajax({
        	    type: "post",
        	    data:  {'betId':id.split("_")[1], 'action':id.split("_")[0]},
        	    url: "<%=request.getContextPath()%>/acceptBetByAdmin",
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
        		//	alert("Sorry No   Id.");

        		}
        	});
        }



        $(window).load(function(){
    		$(".adminMnu").removeClass("active");
        	$("#adminPage1").addClass("active");
    	});

    </script>
</html>

