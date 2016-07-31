<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%String ctxPath=request.getContextPath();%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" href="<%=ctxPath%>/css/datatables.min.css" rel="stylesheet">
<link type="text/css" href="<%=ctxPath%>/css/bootstrap.min.css" rel="stylesheet" >
<link type="text/css" href="<%=ctxPath%>/css/font-awesome.min.css" rel="stylesheet" >
<link type="text/css" href="<%=ctxPath%>/css/mainLayout.css" rel="stylesheet" >
<style>
.active{background-color: #fff;}
.table>thead:first-child>tr:first-child>td{
    /* padding-left: 30px; */
}
table.dataTable thead .sorting:after, table.dataTable thead .sorting_asc:after, table.dataTable thead .sorting_desc:after, table.dataTable thead .sorting_asc_disabled:after, table.dataTable thead .sorting_desc_disabled:after{
	/* left: 8px; */
	visibility: hidden;
	display: none;
}
table thead{
    background: #444;
    color: #fff;
}
.tblDiv2{
    display: flex;
    justify-content: center;
}
#inplayPrime thead td{
	text-align: center;
}
#inplayPrime tbody td{
	padding: 0px;
    height: 100%;
    position: relative;
}
#inplayPrime tbody td:first-child{
	padding: 5px;
}

#inplayPrime tbody td a{
	display: flex;
    width: 80%;
    background: #337ab7;
    color: #fff;
    height: 94%;
    position: absolute;
    top: 3%;
    justify-content: center;
    align-items: center;
    font-size: 16px;
    font-weight: bold;
    text-decoration: none;
}
#inplayPrime tbody td:nth-child(2) a,
#inplayPrime tbody td:nth-child(5) a{
	background: #66bf3b;
}
#inplayPrime tbody td:nth-child(4) a{
	background: #e82f2b;
}
#inplayPrime tbody td:last-child a{
	background: transparent;
	color: #000;
}
.delBet{
font-size: 14px;margin: 0px 5px 0px 0px;cursor: pointer;}
.delBet:hover{color:red}
</style>
</head>
<body>
<div class='col-xs-12 rootContainer'>
	<div class="col-xs-12 headerContainer"><jsp:include page="header.jsp"></jsp:include></div>
	<div class="col-xs-12 contentContainer">
		<div class='col-xs-2 rmpm' style='height: 100%;overflow: auto;box-shadow: 0px 0px 2px 0px #999;height: 100%;'>
			<div class='col-xs-12 rmpm' style='height: 100%;'>
				<div class="col-xs-12" style='height:20px;background:#353535;padding:3px;color:#fff;'>
					<div style='float:left;'>
						<i class="fa fa-minus" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
						<i class="fa fa-question" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
					</div>
					<div style='float: left;padding-left: 20px'>Macth List</div>
					<div style='float:right;'>
						<i class="fa fa-times" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
					</div>
				</div>
				<div class="col-xs-12 rmpm">
					<div class="col-xs-12 rmpm">
						<i class="fa fa-plus  mainCatg" style='cursor:pointer;color: #000;margin: 0px 3px;'></i>
						<span>Cricket</span>
						<div class="col-xs-12 rmpm subCatg" style='padding-left: 10px;display:none'>
							<div class="col-xs-12 rmpm">
								<i class="fa fa-plus mainCatg" style='cursor:pointer;color: #000;margin: 0px 3px;'></i>
								<span>Match</span>
								<div class="col-xs-12 rmpm subSubCatg" style='padding-left: 20px;display:none;'>
									<c:forEach var="team" items="${teamList}">
								<%-- 	<span id="${team.teamId }" onclick="loadMatchInplay(this.id)" style="display: block;">${team.comment }</span> --%>
									<span id="TeamIdSelect_${team.teamId }" onclick="inplayByMatchId(this.id)" style="display: block;">${team.comment }</span>
									
									</c:forEach>
								</div>
							</div>
							<div class="col-xs-12 rmpm">
								<i class="fa fa-plus mainCatg" style='cursor:pointer;color: #000;margin: 0px 3px;'></i>
								<span>Session</span>
								<div class="col-xs-12 rmpm subSubCatg" style='padding-left: 20px;display:none'>
								   <c:forEach var="sesion" items="${sessionList}">
									<span id="${sesion.sessionId }" style="display: block;">${sesion.sessionComment }</span>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class='col-xs-8' id="appendInplayData">
		</div>
	 <div class='col-xs-8' style="display: ;">

		  <!-- Nav tabs -->
		  <ul class="nav nav-tabs" role="tablist">
		    <li role="presentation" class="active"><a href="#inplay" aria-controls="inplay" role="tab" data-toggle="tab">InPlay</a></li>
		    <li role="presentation"><a href="#upcomming" aria-controls="upcomming" role="tab" data-toggle="tab">UpComming</a></li>
		  </ul>

		  <!-- Tab panes -->
		  <div class="col-xs-12 tab-content">
		    <div role="tabpanel" class="col-xs-12 tab-pane active" id="inplay">
		    	<div class='col-xs-12 tblDiv2 rmpm'>
		    	<table id='inplayPrime' class="col-xs-12 table table-striped">
		    		<thead>
		    			<tr>
		    				<td>In-Play Cricket</td>
		    				<td>AL</td>
		    				<td>AK</td>
		    				<td>X</td>
		    				<td>AL</td>
		    				<td>AK</td>
		    				<td>&nbsp</td>
		    			</tr>
		    		</thead>
		    		<tbody  id="appendInPlayMatchId">
		    			
		    		</tbody>
		    	</table>
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
<script type="text/javascript">
var items=1;
var exist=[];
var matchArray=[];
var rateNowMatchId=0;
var rateNowMatchName="";

$(document).ready(function(){
	 if(matchArray.length>0){
		 for(var i=0;i<matchArray.length;i++){
			 getTeamRate(matchArray[i]);
		 }
		
	} 
	

 		$("body").on("click","#inplayPrime tr",function(){
			var rateNowMatchName=$(this).attr("title");
			var tempId=$(this).attr("id");
			rateNowMatchId=tempId.replace("tr","");

			alert(rateNowMatchId+"     "+rateNowMatchName);
		});
 
	$(".mainCatg").click(function(){
		$(this).toggleClass("fa-minus");
		$(this).next().next().slideToggle();

	});

	getBetRejectList();
 	$(".TeamRateSpanClass").click(function(){alert("call  123     "+this.id.split("_")[2])
		var teamName=$(this).attr("title");
		var teamId=this.id.split("_")[3];
		var betMode=this.id.split("_")[2];
		$(".TeamRateSpanClass").css("background-color","#d1d1d1");
		$(this).css("background-color","#90EE90");
		var betAdminAmt=$(this).html();
		var matchName=$(this).parent().attr("title");


		var rateNowMatchName=$(this).attr("title");
		var tempId=$(this).attr("id");
		rateNowMatchId=tempId.replace("tr","");

		alert(rateNowMatchId+"     "+rateNowMatchName);



		var hgt=(50*items)+100;
		if(items >= 5){
			hgt=(50*5)+100;
		}

		if(exist.indexOf(teamName+betMode+teamId)>=0){
			 $("#div"+teamName+teamId).remove();
			 exist.splice(exist.indexOf(teamName+betMode+teamId), 1);
			 items--;
		}else{
			//alert("teamId="+teamId);
			$("#betSlipData").append(createHtmlForBetPlace(teamName,teamId,matchName,betAdminAmt,items,betMode));
			exist.push(teamName+betMode+teamId);
			items++;
		}

		//alert(exist);
		inplaySlip(this.id,items);

	});
});

function createHtmlForBetPlace(teamName,teamId,matchName,betAdminAmt,items,betMode){
	var html='';
	//for(var i=0;i<items;i++){
		html+="<div id='div"+teamName.replace(" ","_")+teamId.replace(" ","_")+"'><div>";
		html+="<i id='close-"+teamName.replace(" ","_")+teamId.replace(" ","_")+"' onclick='closeParentDiv(this.id);'  class='fa fa-times-circle delBet'></i><span>"+matchName+"</span><input type='text'  name='betAdminAmttext"+items+"'    id='betAdminAmttext"+items+"'  value="+betAdminAmt+" readonly>";
		html+="</div><div>";
		html+="<input type='hidden' name='betModeHidden"+items+"' id='betModeHidden"+items+"' value='"+betMode+"' >";
		html+="<input type='hidden' name='teamIdHidden"+items+"' id='teamIdHidden"+items+"' value='"+teamId+"' >";
		html+="<input type='hidden' name='teamNameHidden"+items+"' id='teamNameHidden"+items+"' value='"+teamName+"' >";
		html+="<span>Match Odds : "+teamName+" ("+betMode+")</span><span style='float:right;'>Rs <input style='width:85px' type='number'  step='0.01'  id='userBetAmt"+items+"'  name='userBetAmt"+items+"'  placeholder='Bet Amount'/></span>";
		html+="</div><hr style='margin:15px 0px 10px 0px;border: 0;border-top: 1px solid #eee;'></div>";

	return html;
} 

function closeParentDiv(divId){alert(divId)
	$("#div"+divId.split('-')[1]).remove();
}

$('#inplayPrime1').DataTable({
    "scrollY":  "60vh",
    "scrollCollapse": true,
    "paging":         false,
    "info":     false,
    "filter":false,
    "scrollX": true,
    "fixedHeader": false,
    "order": [[ 0, "desc" ]],
    "columns": [
                { "width": "120px" },
                { "width": "30px" },
                { "width": "30px" },
                { "width": "30px" },
                { "width": "30px" },
                { "width": "30px" },
                { "width": "30px" }
               ]
        });
function getBetRejectList(){
	$.ajax({
		type:"POST",
		url:"getBetRejectList",
		data:"userId:1011",
		success:function(data){
			//alert("Success : "+data);

		},
		error:function(data){alert("Error : "+data)}

	});
}


function getTeamRate(teamId){
	

	$.ajax({
		type:"get",
		url:"getTeamRateForMatch",
		data:{"teamId":teamId},
		success:function(data){
			alert("Success : "+data);

		},
		error:function(data){alert("Error : "+data)}

	});
}


function inplayByMatchId(id){
var teamId=id.split("_")[1];
matchArray.push(teamId);
	$.ajax({
		type:"post",
		url:"inplayByMatchId",
		data:{"teamId":teamId},
		success:function(data){
		//	alert("Success : "+data);
			$("#tr_"+teamId).remove();
			$("#appendInPlayMatchId").prepend(data);
			getTeamRate(teamId);
		},
		error:function(data){alert("Error : "+data)}

	});
}



</script>
</html>


