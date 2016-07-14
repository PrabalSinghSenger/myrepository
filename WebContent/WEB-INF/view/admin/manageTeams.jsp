<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	String ctxPath = request.getContextPath();
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" href="<%=ctxPath%>/css/datatables.min.css"	rel="stylesheet">
<link type="text/css" href="<%=ctxPath%>/css/bootstrap.min.css"	rel="stylesheet">
<link type="text/css" href="<%=ctxPath%>/css/bootstrap-datepicker.min.css"	rel="stylesheet">
<link type="text/css" href="<%=ctxPath%>/css/font-awesome.min.css"	rel="stylesheet">
<link type="text/css" href="<%=ctxPath%>/css/mainLayout.css" rel="stylesheet">
<style>
.adminUsrCtrlDiv {
	height: 50px;
	padding: 10px 15px;
}

.headerTxt {
	font-size: 16px;
	font-weight: bold;
	padding: 0px 5px;
}

.tblDiv>div {
	border: 1px solid #888;
	text-align: left;
}

.userRegDiv>form>.section1, .userRegDiv>form>.section2, .userRegDiv>form>.section3
	{
	margin-top: 10px;
	height: 55px;
	text-align: center;
}

.userRegDiv>form>.section2 {
	height: 200px;
}

.userRegDiv>form>.section1 label, .userRegDiv>form>.section2 label,
	.userRegDiv>form>.section3 label {
	width: 15%;
	float: left;
	text-align: right;
	margin: 0px 10px 0px 0px;
	padding: 7px 0px 0px 0px;
}
.userRegDiv>form>.section1 input[type='checkbox']{
    float: left;
    margin-top: 5px;
    height: 20px;
    width: 20px;
}
.userRegDiv>form>.section1 input[type='text'], .userRegDiv>form>.section1 select,
	.userRegDiv>form>.section2 input[type='text'], .userRegDiv>form>.section2 select,
	.userRegDiv>form>.section3 input[type='text'], .userRegDiv>form>.section3 select {
	margin-top: 5px;
	padding: 0px 10px;
	height: 25px;
	border-radius: 1px;
	width: 30%;
	float: left;
}

.userRegDiv>form>.section1 input[type='text']:nth-child(6),
.userRegDiv>form>.section1 input[type='text']:nth-child(7),
	.userRegDiv>form>.section1 input[type='text']:nth-child(8) {
	width: 20%;
	float: left;
	margin-right: 5px;
}

.userRegDiv>form>.section3 .leftSection, .userRegDiv>form>.section3 .rightSection
	{
	width: 40%;
	float: left;
}

.userRegDiv>form>.section3 .leftSection {
	margin-left: 12%;
}

#adminMgUserCtrl button i {
	padding: 5px;
}
</style>
</head>
<body>
	<div class='col-xs-12 rootContainer'>
		<div class="col-xs-12 headerContainer">
			<jsp:include page="header.jsp"></jsp:include>
		</div>
		<div class="col-xs-12 contentContainer">
			<div class='col-xs-12 adminUsrCtrlDiv'>
				<span class='fllt headerTxt'>Matches</span>
				<div id='adminMgUserCtrl' class='flrt'>
					<button class='btn mateCol' id="refreshTeamPage">
						<i class='fa fa-refresh'></i>
					</button>
					<button class='btn mateCol' data-toggle="modal"
						data-target="#TeamRegModal">
						<i class='fa fa-plus'></i>
					</button>
					<button id='TeamRegEdit' class='btn mateCol' >
						<i class='fa fa-pencil' onclick="editTeam(event);"></i>
					</button>
					<button class='btn mateCol'  id='deletematch'  >
						<i class='fa fa-trash'></i>
					</button>
				</div>
			</div>
			<div class='col-xs-12 tblDiv'>
				<table id='adminMgUsrTbl' class='table '>
					<thead>
						<tr>
							<td><input type='checkbox'></td>
							<td><span>Sno</span></td>
							<td><span>Team Id</span></td>
							<td><span>Date</span></td>
							<td><span>Comment</span></td>
							<td><span>Team 1</span></td>
							<td><span>Team 2</span></td>
							<td><span>Team 3</span></td>
							<td><span>Team 4</span></td>
							<td><span>Team 5</span></td>
							<td><span>Team 6</span></td>
							<td><span>Team 7</span></td>
							<td><span>Team 8</span></td>
							<td><span>Team 9</span></td>
							<td><span>Team 10</span></td>
							<td><span>Team 11</span></td>
							<td><span>Team 12</span></td>
							<td><span>Commission</span></td>
						</tr>
					</thead>
					<tbody>
						<c:set var="j" value="1"></c:set>
						<c:forEach var="i" items="${teamList}">
							<tr id="tr${i.teamId }"  ondblclick="drillToMatch(this.id);">
								<td><input class='adminTeamEditChk' type='checkbox' value="${i.teamId}"
									id="trcheck${i.teamId }" onclick="selectValue(this.value);"></td>
								<td><span id="Sno${i.teamId  }">${j }</span></td>
								<td><span id="teamId${i.teamId  }">${i.teamId }</span></td>
								<td><span id="createdDate${i.teamId  }">${i.createdDate }</span></td>
								<td><span id="comment${i.teamId  }">${i.comment } </span></td>
								<td><span id="team_1_${i.teamId  }">${i.team_1 }</span></td>
								<td><span id="team_2_${i.teamId  }">${i.team_2 }</span></td>
								<td><span id="team_3_${i.teamId  }">${i.team_3 }</span></td>
								<td><span id="team_4_${i.teamId  }">${i.team_4 }</span></td>
								<td><span id="team_5_${i.teamId  }">${i.team_5 }</span></td>
								<td><span id="team_6_${i.teamId  }">${i.team_6 }</span></td>
								<td><span id="team_7_${i.teamId  }">${i.team_7 }</span></td>
								<td><span id="team_8_${i.teamId  }">${i.team_8 }</span></td>
								<td><span id="team_9_${i.teamId  }">${i.team_9 }</span></td>
								<td><span id="team_10_${i.teamId  }">${i.team_10 }</span></td>
								<td><span id="team_11_${i.teamId  }">${i.team_11 }</span></td>
								<td><span id="team_12_${i.teamId  }">${i.team_12 }</span></td>
								<td><span id="commission_flag${i.teamId  }">${i.commission_flag }</span></td>
							</tr>
							<c:set var="j" value="${j+1}"></c:set>
						</c:forEach>
					</tbody>
				</table>
			</div>

		</div>
		<div class="footerContainer"><jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
	<!-- TeamRegModal Registration Modal -->
	<div class="modal fade" id="TeamRegModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Team Entry Panel</h4>
				</div>
				<div class="modal-body">
					<div class="userRegDiv">
						<div id="messageDiv"
							style="display: none; font-size: 21px; color: Green; padding: 5px; border: 1px dotted; text-align: center;"></div>
						<form method="POST" class="form-horizontal" role="form"
							action="<%=request.getContextPath()%>/createTeam"
							commandname="teamBean">
							<div class="section1">
								<label class=" " for="UserName">Date </label> <input class='form-control'	type='text'
									value="${date }" id='addTeamDate' readonly>  <label
									class=" " for="UserName">comment </label> <input class='form-control'	type='text'
									name="comment" id="commentId" required="true">
								<label class=" " for="UserName">commission </label> <input
									type="checkbox" name="commission_flag" id="commission_flagId"
									checked="checked">
								</div><div class="section2">
								<label class=" " for="UserName">Team 1 </label> <input
									class='form-control'	type='text' name="team_1" id="team_1_Id" required="true">
								<label class=" " for="UserName">Team 2 </label> <input
									class='form-control'	type='text' name="team_2" id="team_2_Id" required="true">
								<label class=" " for="UserName">Team 3 </label> <input
									class='form-control'	type='text' name="team_3" id="team_3_Id">
								<label class=" " for="UserName">Team 4 </label> <input
									class='form-control'	type='text' name="team_4" id="team_4_Id">  <label
									class=" " for="UserName">Team 5 </label> <input class='form-control'	type='text'
									name="team_5" id="team_5_Id">  <label class=" "
									for="UserName">Team 6 </label> <input class='form-control'	type='text' name="team_6"
									id="team_6_Id">
								<label class=" " for="UserName">Team 7 </label> <input
									class='form-control'	type='text' name="team_7" id="team_7_Id">  <label
									class=" " for="UserName">Team 8 </label> <input class='form-control'	type='text'
									name="team_8" id="team_8_Id">  <label class=" "
									for="UserName">Team 9 </label> <input class='form-control'	type='text' name="team_9"
									id="team_9_Id">
								<label class=" " for="UserName">Team 10 </label> <input
									class='form-control'	type='text' name="team_10" id="team_10_Id">  <label
									class=" " for="UserName">Team 11 </label> <input class='form-control'	type='text'
									name="team_11" id="team_11_Id">  <label class=" "
									for="UserName">Team 12 </label> <input class='form-control'	type='text'
									name="team_12" id="team_12_Id">
							</div>
							<div class="modal-footer">
								<button class="btn btn-primary" type="submit">Save</button>
								<button class="btn btn-danger" data-dismiss="modal">Close</button>
								<button class="btn btn-primary">Clear</button>
							</div>
						</form>
					</div>
				</div>

			</div>
		</div>
	</div>
	<!-- End Modal -->

	<!-- Edit team Modal -->

	<div class='modal fade ' id='TeamRegEditModal' tabindex='-1'
		role='dialog' aria-labelledby='myModalLabel'>
		<div class='modal-dialog modal-lg' role='document'>
			<div class='modal-content'>
				<div class='modal-header'>
					<button type='button' class='close' data-dismiss='modal'
						aria-label='Close'>
						<span aria-hidden='true'>&times;</span>
					</button>
					<h4 class='modal-title' id='myModalLabel'>Edit Team Panel</h4>
				</div>
				<div class='modal-body'>
					<div class='userRegDiv'>
						<form method='POST' class='form-horizontal' role='form' action='<%=request.getContextPath()%>/EditTeamById' commandname='teamBean'>
							<input type="hidden"  name="teamId"  id="teamIdEditTeamId"/>
							<div class='section1'>
								<label class='' for='teamEditId'>Date </label>
							    <input class='form-control'	type='text' id='editTeamDate' readonly >
								<label class=' ' for='commentEditId'>comment </label>
								<input class='form-control'	type='text' name='comment' id='commentEditId' required='true'>
								<label class=' ' for='commission_flagEditId'>commission	</label>
								 <input type='checkbox' name='commission_flag'	id='commission_flagEditId' checked='checked'>
							</div>
							<div class='section2'>
								<label class=' ' for='team_1_EditId'>Team 1 </label>
								<input class='form-control'	type='text' name='team_1' id='team_1_EditId' required='true'>
								<label class=' ' for='team_2_EditId'>Team 2 </label>
								<input	class='form-control'	type='text' name='team_2' id='team_2_EditId' required='true'>
								<label class=' ' for='UserName'>Team 3 </label>
								<input class='form-control'	type='text' name='team_3' id='team_3_EditId'>
								<label class=' ' for='UserName'>Team 4 </label>
								<input class='form-control'	type='text' name='team_4' id='team_4_EditId'>  <label
									class=' ' for='UserName'>Team 5 </label> <input class='form-control'	type='text'
									name='team_5' id='team_5_EditId'>  <label class=' '
									for='UserName'>Team 6 </label> <input class='form-control'	type='text' name='team_6'
									id='team_6_EditId'>
								<label class=' ' for='UserName'>Team 7 </label> <input
									class='form-control'	type='text' name='team_7' id='team_7_EditId'>  <label
									class=' ' for='UserName'>Team 8 </label> <input class='form-control'	type='text'
									name='team_8' id='team_8_EditId'>  <label class=' '
									for='UserName'>Team 9 </label> <input class='form-control'	type='text' name='team_9'
									id='team_9_EditId'>
								<label class=' ' for='UserName'>Team 10 </label> <input
									class='form-control'	type='text' name='team_10' id='team_10_EditId'>  <label
									class=' ' for='UserName'>Team 11 </label> <input class='form-control'	type='text'
									name='team_11' id='team_11_EditId'>  <label class=' '
									for='UserName'>Team 12 </label> <input class='form-control'	type='text'
									name='team_12' id='team_12_EditId'>
							</div>
							<div class='modal-footer'>
								<button class='btn btn-primary' type='submit'>Update</button>
								<button class='btn btn-danger' data-dismiss='modal'>Close</button>
								<button class='btn btn-primary'>Clear</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
<script src="<%=ctxPath%>/js/jquery-1.12.1.min.js" type="text/javascript"></script>
   	<script src="<%=ctxPath%>/js/datatables.min.js" type="text/javascript"></script>
 	<script src="<%=ctxPath%>/js/jquery-ui.min.js" type="text/javascript"></script>
 	<script src="<%=ctxPath%>/js/bootstrap.min.js" type="text/javascript"></script>
 	<script src="<%=ctxPath%>/js/bootstrap-datepicker.min.js" type="text/javascript"></script>
 	<script src="<%=ctxPath%>/js/global.js" type="text/javascript"></script>

<script type="text/javascript">
	var editTeamCheboxId = "";

	function selectValue(thisvalue) {//alert(thisvalue);
		editTeamCheboxId = thisvalue;
	}

	function teamId(evt) {
		evt.stopPropagation();
		var x = document.getElementsByClassName("adminTeamEditChk");
    	var ckcount=0;
    	for(var i=0;i<x.length;i++){
    		if(x[i].checked){
    			ckcount=ckcount+1;
    		}
    	}
    	/*	if(ckcount == 1){
    		$("#TeamRegEditModal").modal();
    	}else if(ckcount > 1){
    		alert("Please select only one team for Such operation!")
    	}else{
    		alert("Please select team!");
    	}

	 if ($("#trcheck" + editTeamCheboxId).is(":checked")) {
			var teamId = $("#teamId" + editTeamCheboxId).html();
			var comment = $("#comment" + editTeamCheboxId).html();
			var teamId1 = $("#team_1_" + editTeamCheboxId).html();
			var teamId2 = $("#team_2_" + editTeamCheboxId).html();
			var teamId3 = $("#team_3_" + editTeamCheboxId).html();
			var teamId4 = $("#team_4_" + editTeamCheboxId).html();
			var teamId5 = $("#team_5_" + editTeamCheboxId).html();
			var teamId6 = $("#team_6_" + editTeamCheboxId).html();
			var teamId7 = $("#team_7_" + editTeamCheboxId).html();
			var teamId8 = $("#team_8_" + editTeamCheboxId).html();
			var teamId9 = $("#team_9_" + editTeamCheboxId).html();
			var teamId10 = $("#team_10_" + editTeamCheboxId).html();
			var teamId11 = $("#team_11_" + editTeamCheboxId).html();
			var teamId12 = $("#team_12_" + editTeamCheboxId).html();
			var createdDate = $("#createdDate" + editTeamCheboxId).html();
			var commission_flag = $("#commission_flag" + editTeamCheboxId).html();
			document.getElementById("teamEditId").value = teamId;
			$("#commentEditId").val(comment);
			$("#commission_flagEditId").val(teamId);
			$("#team_1_EditId").val(teamId1);
			$("#team_2_EditId").val(teamId2);
			$("#team_3_EditId").val(teamId3);
			$("#team_4_EditId").val(teamId4);
			$("#team_5_EditId").val(teamId5);
			$("#team_6_EditId").val(teamId6);
			$("#team_7_EditId").val(teamId7);
			$("#team_8_EditId").val(teamId8);
			$("#team_9_EditId").val(teamId9);
			$("#team_10_EditId").val(teamId10);
			$("#team_11_EditId").val(teamId11);
			$("#team_12_EditId").val(teamId12);

		} else {
			alert("Please Select a Team for editing.");
		} */
	}

	$('#adminMgUsrTbl').DataTable({
		"scrollY" : "60vh",
		"scrollCollapse" : true,
		"paging" : true,
		"info" : true,
		"filter" : true,
		"scrollX" : true,
		"fixedHeader" : false,
		"order" : [ [ 0, "desc" ] ],
		 "columns": [
             { "width": "20px" },
             { "width": "20px" },
             { "width": "50px" },
             { "width": "100px" },
             { "width": "100px" },
             { "width": "100px" },
             { "width": "100px" },
             { "width": "100px" },
             { "width": "100px" },
             { "width": "100px" },
             { "width": "100px" },
             { "width": "100px" },
             { "width": "100px" },
             { "width": "100px" },
             { "width": "100px" },
             { "width": "100px" },
             { "width": "100px" },
             { "width": "100px" }
            ]
	});

	$(window).load(function() {
		$(".adminMnu").removeClass("active");
		$("#adminManageUsers").addClass("active");

	});
	$(document).ready(function(){
		$("#addTeamDate,#editTeamDate").datepicker({
			startDate: '${sdate}', //MM/DD/YYYY
		    endDate: '${edate}'
		});

        $("#TeamRegEdit").click(function(){
        	var x = document.getElementsByClassName("adminTeamEditChk");
			var teamId="";
        	var ckcount=0;
        	for(var i=0;i<x.length;i++){
        		if(x[i].checked){
        			teamId=x[i].value;
        			ckcount=ckcount+1;
        		}
        	}
        	if(ckcount == 1){
        		$("#TeamRegEditModal").modal();
        		var teamId = $("#teamId" + teamId).html();
    			var comment = $("#comment" + teamId).html();
    			var teamId1 = $("#team_1_" + teamId).html();
    			var teamId2 = $("#team_2_" + teamId).html();
    			var teamId3 = $("#team_3_" + teamId).html();
    			var teamId4 = $("#team_4_" + teamId).html();
    			var teamId5 = $("#team_5_" + teamId).html();
    			var teamId6 = $("#team_6_" + teamId).html();
    			var teamId7 = $("#team_7_" + teamId).html();
    			var teamId8 = $("#team_8_" + teamId).html();
    			var teamId9 = $("#team_9_" + teamId).html();
    			var teamId10 = $("#team_10_" + teamId).html();
    			var teamId11 = $("#team_11_" + teamId).html();
    			var teamId12 = $("#team_12_" + teamId).html();
    			var createdDate = $("#createdDate" + teamId).html();
    			var commission_flag = $("#commission_flag" + teamId).html();
    			document.getElementById("teamIdEditTeamId").value = teamId;
    			$("#commentEditId").val(comment);
    			$("#commission_flagEditId").val(teamId);
    			$("#team_1_EditId").val(teamId1);
    			$("#team_2_EditId").val(teamId2);
    			$("#team_3_EditId").val(teamId3);
    			$("#team_4_EditId").val(teamId4);
    			$("#team_5_EditId").val(teamId5);
    			$("#team_6_EditId").val(teamId6);
    			$("#team_7_EditId").val(teamId7);
    			$("#team_8_EditId").val(teamId8);
    			$("#team_9_EditId").val(teamId9);
    			$("#team_10_EditId").val(teamId10);
    			$("#team_11_EditId").val(teamId11);
    			$("#team_12_EditId").val(teamId12);
        	}else if(ckcount > 1){
        		alert("Please select only one team for Such operation!")
        	}else{
        		alert("Please select team!");
        	}

        });


        $("#deletematch").click(function(){
        	var x = document.getElementsByClassName("adminTeamEditChk");
        	var teamIds="";
        	for(var i=0;i<x.length;i++){
        		if(x[i].checked){
        			teamIds+=x[i].value+",";
        		}
        	}

        	teamIds+='000';
        	if(teamIds=="000"){
        		alert("Please select Team to delete!")
        	}else{
					var status=confirm("Do You realy want to delete the Match,Once you delete this match it is not Recovered. ?");

					if(status){
		        		$.ajax({
		        		    type: "post",
		        		    async :false,
		        		    data:{"teamIds":teamIds},
		        		    url: "<%=ctxPath%>/deleteMatches",
		        		    success: function(data){
		        		    	alert(data);
		        		    	window.location="<%=ctxPath%>/admin/manageTeams";

		        		    },
		        			error:function() {
		        				alert("Sorry No User Exist with this  Id.");

		        			}
		        		});
					}

        	}
        });


        $("#refreshTeamPage").click(function(){
 			window.location="<%=ctxPath%>/admin/manageTeams"
 		  });

     function  gotoPageOne(){
    	// alert("call dbl  value=");
     }

	});
      
      function drillToMatch(trid){
	var	matchId=trid.replace('tr','');
		//alert("call   "  +trid.replace('tr',''))
		window.location="<%=ctxPath%>/manageTeams?matchId="+matchId;

	}
</script>

</html>



