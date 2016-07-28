<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<link type="text/css" href="<%=request.getContextPath()%>/css/datatables.min.css" rel="stylesheet">
<link type="text/css" href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet" >
<link type="text/css" href="<%=request.getContextPath()%>/css/font-awesome.min.css" rel="stylesheet" >
<link type="text/css" href="<%=request.getContextPath()%>/css/mainLayout.css" rel="stylesheet" >
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
		    		<tbody>
		    			<c:set var="j" value="1"></c:set>
						<c:forEach var="i" items="${teamList}">
							<tr id="tr${i.teamId }"  title="${i.comment }">
							<input type="hidden"  class="TeamIdHolderClass" name="${i.team_1  }_${i.team_2  }"  value="${i.teamId }">
								<td id="comment_${i.teamId  }">${i.comment }<input type="hidden" id="TeamId_${i.teamId }" value="${i.teamId }"></td>
								<td   title="${i.comment }"><a id="team_one_L_${i.teamId  }"   class="TeamRateSpanClass" title="${i.team_1  }"  href='javascript:void(0);'>0.00</a></td>
								<td   title="${i.comment }"><a id="team_one_K_${i.teamId  }"   class="TeamRateSpanClass" title="${i.team_1  }"  href='javascript:void(0);'>0.00</a></td>
								<td   title="${i.comment }"><a id="team_Tie_${i.teamId  }"   class="TeamRateSpanClass" title="tied${i.comment  }"  href='javascript:void(0);'>0.00</a></td>
								<td   title="${i.comment }"><a id="team_two_L_${i.teamId  }"   class="TeamRateSpanClass" title="${i.team_2  }"  href='javascript:void(0);'>0.00</a></td>
								<td   title="${i.comment }"><a id="team_two_K_${i.teamId  }"   class="TeamRateSpanClass" title="${i.team_2  }"  href='javascript:void(0);'>0.00</a></td>
								<td   title="${i.comment }"><a href='inplay2'  id="team_2_${i.teamId  }"><i class='fa fa-chevron-right'></i></a></td>
							</tr>
							<c:set var="j" value="${j+1}"></c:set>
						</c:forEach>
		    		</tbody>
		    	</table>
		    	</div>
		    </div>
		    <div role="tabpanel" class="tab-pane" id="upcomming">...</div>
		  </div>

		  
		  
<script src="<%=request.getContextPath()%>/js/jquery-1.12.1.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/datatables.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap.min.js" type="text/javascript"></script>
<script type="text/javascript">
var items=1;
var exist=[];

var rateNowMatchId=0;
var rateNowMatchName="";

$(document).ready(function(){
	getTeamRate();

	$(".mainCatg").click(function(){
		$(this).toggleClass("fa-minus");
		$(this).next().next().slideToggle();

	});

	getBetRejectList();
	$(".TeamRateSpanClass").click(function(){alert("call       "+this.id.split("_")[2])
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
alert(html)
	return html;
}

function closeParentDiv(divId){alert(divId)
	$("#div"+divId.split('-')[1]).remove();
}

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


function getTeamRate(){
	var ids=$(".TeamIdHolderClass").attr("id");
	alert(ids);
	$.ajax({
		type:"get",
		url:"getTeamRateForMatch",
		data:{"teamId":22, "teamName":"Ind"},
		success:function(data){
			//alert("Success : "+data);

		},
		error:function(data){alert("Error : "+data)}

	});
}


function inplayByMatchId(){
	$.ajax({
		type:"post",
		url:"inplayByMatchId",
		data:{"teamId":22},
		success:function(data){
			alert("Success : "+data);
			$("#appendInplayData").html(data);
		},
		error:function(data){alert("Error : "+data)}

	});
}


function loadMatchInplay(ids){
	alert(ids)
	$.ajax({
		type:"post",
		url:"getTeamRatePageForMatchId",
		data:{"teamId":ids},
		success:function(data){
			//alert("Success : "+data);

		},
		error:function(data){alert("Error : "+data)}

	});
}

</script>
		  