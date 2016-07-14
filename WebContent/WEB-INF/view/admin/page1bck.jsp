<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<%String ctxPath=request.getContextPath();
	HashMap<String,String>   usrMap=(HashMap<String,String>) request.getAttribute("userMap");
	System.out.println("usrMap="+usrMap);
	%>
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
        <div class="adminLeftPanel">
            <div class="sectionFirst">
                    <div class="box1">
                            <input class="form-control" name='team_1' type="text" value="${teamBean.team_1 }" readonly/>
                            <span>V/S</span>
                            <input class="form-control"  name='team_2' type="text"value="${teamBean.team_2 }" readonly/>
                    </div>
                    <div style='width: 1px;border: 1px solid #888;height: 80%;float: left;margin-top: 5px;'></div>
                    <div class="box1">
                            <input class="form-control" name='team_1' type="text" value="${teamBean.team_1 }" readonly/>
                            <span>V/S</span>
                            <input class="form-control"  name='team_2' type="text"value="${teamBean.team_2 }" readonly/>
                    </div>
                    <div style='width: 1px;border: 1px solid #888;height: 80%;float: left;margin-top: 5px;'></div>
                    <div class="box2">
                            <span class="fllt">AVG L</span>
                            <input class="form-control blueBkCol" name='avgLgi' value="${teamBean.team_1_LRate } " type="number" step="0.01"/>
                            <span>AVG K</span>
                            <input class="form-control yellowBkCol"  name='avgKhi'   value="${teamBean.team_1_KRate } "  type="number" step="0.01"/>
                    </div>
                    <div style='width: 1px;border: 1px solid #888;height: 80%;float: left;margin-top: 5px;'></div>
                    <div class="box3">
                            <!-- <span>Book No</span>
                            <select class="form-control">
                                <option>Select</option>
                                <option>Demo1</option>
                                <option>Demo2</option>
                            </select> -->
                    </div>
                    <div style='width: 1px;border: 1px solid #888;height: 80%;float: left;margin-top: 5px;'></div>
                    <div class="box4">
                   		<span><b>Session</b></span>
                  		<button class="btn btn-primary">Add</button>
                 		<button class="btn btn-primary">Sel</button>
                    </div>
            </div>
            <div class="sectionSecond">
                <div class="leftSec">
                    <div class="top">
                        <span>Date</span>
                        <input type="text" value='${teamBean.createdDate } ' disabled>
                        <span>Match</span>
                        <input class="form-control"   value='${teamBean.comment }'  type="text"/>
                    </div>
                </div>
<!--                 <div class="rightSec">
                    <span><b>Session</b></span>
                    <button class="btn btn-primary">Add</button>
                    <button class="btn btn-primary">Sel</button>
                </div> -->
            </div>
            <div class="sectionThird">
            <div class='tblDiv'>
                <table id="showRecs1" class="table table-striped table-hover table-condensed ">
                    <thead>
                        <tr>
                            <td>SI</td>
                            <td>RATE</td>
                            <td>AMOUNT</td>
                            <td>MD</td>
                            <td>FAV</td>
                            <td>NAMES</td>
                            <td>${teamBean.team_1 }</td>
                            <td>${teamBean.team_2 }</td>
                            <td>PG</td>
                            <td>AT TIME</td>
                            <td>IP Address</td>
                            <td>MAC Address</td>
                        </tr>
                    </thead>
                    <tbody>
                    <tr>
                            <td>1</td>
                            <td>1</td>
                            <td>1</td>
                            <td>1</td>
                            <td>1</td>
                            <td>1</td>
                            <td>1</td>
                            <td>1</td>
                            <td>1</td>
                            <td>1</td>
                            <td>1</td>
                            <td>1</td>
                        </tr>
                    <c:set var="i" value="1"></c:set>
                   	<c:forEach var="team" items="${teamIdList }">
                   		<tr id="tr_${team.betId}">
                            <td>${i }</td>
                            <td id="tdbetRate_${team.betId}">${team.betRate}</td>
                            <td  id="tdbetAmount_${team.betId}">${team.betAmount}</td>
                            <TD id="tdbetType_${team.betId}">${team.betType}</TD>
                            <td id="tdonTeam_${team.betId}">${team.onTeam}</td>
                            <td id="tduserId_${team.betId}">${team.userId}</td>
                            <c:set var="uid" value="${team.userId}"></c:set>
                            <td>7865432</td>
                            <td>-765465</td>
                            <c:forEach var="usr" items="${userMap}">
								Country: ${country.key}  - Capital: ${country.value}
							</c:forEach>
                            <td>1</td>
                            <td id="tr_${team.betId}">${team.createdTime}</td>
                            <td>${team.ipAddress}</td>
                            <td>${team.ipAddress}</td>
                        </tr>
                        <c:set var="i" value="${i+1}"></c:set>
                   	</c:forEach>
                    </tbody>
                </table>
                </div>
            </div>
            <div class="sectionFourth">
	            <div id='editUserData'>
	               <form>
	                <div class="leftSec">
	                    <!-- <textarea class="form-control"></textarea> -->
	                    <div class='top'>
	                    	<span>Rate</span>
	                    	<span>Mode</span>
	                    	<span>Team</span>
	                    	<!-- <span>Name</span> -->
	                    	<span>Team1</span>
	                    	<span>Team2</span>
	                    </div>
	                    <div class='bot'>
	                    	<input type="number" step="0.01" id="tdEditRateByAdmin" name="tdEditRateByAdmin" class='form-control'>
	                    	<select id="tdEditModeByAdmin" name="tdEditModeByAdmin" class='form-control'>

	                       	  <option value="K">K</option>
	                       	    <option value='L'>L</option>
	                   		 </select>
	                    	<select  class='form-control' id="tdEditOnTeamByAdmin" name="tdEditOnTeamByAdmin" >

	                    	</select>
	                    	<!-- <select  class='form-control'>
	                    		<option>Select</option>
	                    	</select> -->
	                    	<input type="hidden"  id="tdEdituserIdByAdmin" name="tdEditUserIdByAdmin"  class='form-control'>
	                    	<input type='text'  id="tdEditamountTeam1ByAdmin" name="tdEditamountTeam1ByAdmin"  class='form-control'>
	                    	<input type='text'  id="tdEditAmountTeam2ByAdmin" name="tdEditAmountTeam2ByAdmin"  class='form-control'>
	                    </div>
	                </div>
	                </form>
	                <div class="rightSec">
	                    <div class="bot">
	                        <button class="btn btn-primary">Modify</button>
	                        <button class="btn btn-primary">Cancel</button>
	                    </div>
	                </div>
                </div>
                	                    <div class="top">
	                        <input type="checkbox"/> Betfair Rate
	                        <input type="checkbox"/> ia Third Umpire
	                    </div>
            </div>
            <div class="sectionFifth">
                <div class="top">
                    <!-- <span>P NO</span> -->
                    <span>Rate</span>
                    <!-- <span>Amount</span> -->
                    <span>Mode</span>
                    <span>Team</span>
                   <!--  <span>Name</span> -->
                    <span>Team1</span>
                    <span>Team2</span>
                </div>
                <div class="bot">
                    <input class='form-control'  id="betRateEnter"  type="number" step="0.01"/>
                    <select id="betMoodEnter" name="mode" class='form-control'>
                        <option value='L'>L</option>
                        <option value="K">K</option>
                    </select>
                    <select id="teamIdEnterAMt" class='form-control'>
	                    <c:forEach var="team" items="${teamList }">
	                       <option value="${team.teamId }">${team.comment }</option>
	                    </c:forEach>
                    </select>
                 <%--    <select class='form-control'>
                        <c:forEach var="user" items="${userList }">
                    	   <option value="${user.userId }">${user.userName }-(${user.userId })</option>
                   		 </c:forEach>
                    </select> --%>
                    <input class='form-control' id="team1EnterAmount" type="text"/>
                    <input class='form-control' id="team2EnterAmount"  type="text"/>
                    <button  id="EnterBetAmountByAdmin"  onclick="EnterBetAmountByAdmin();" class="btn btn-primary">OK</button>
                    <button class="btn btn-primary">&nbsp;&nbsp;&nbsp;Close&nbsp;&nbsp;&nbsp;</button>
                </div>
            </div>
            <div class="sectionSixth">
                <div class="top">
                    <span>Session</span>
                    <span>Rate</span>
                    <span>Runs</span>
                    <span>Amount</span>
                    <span>Y/N</span>
                    <span>Name</span>
                </div>
                <div class="bot">
                    <input class='form-control' type="text"/>
                    <input class='form-control' type="number" step="0.01"/>
                    <input class='form-control' type="text"/>
                    <input class='form-control' type="text"/>
                    <select id="YesNoLabel" class='form-control'>
                        <option value="yes">Yes</option>
                        <option value="no">No</option>
                    </select>
                    <select class='form-control'>
                        <option>Demo1</option>
                        <option>Demo2</option>
                        <option>Demo3</option>
                    </select>
                    <button class="btn btn-primary">OK</button>
                    <button class="btn btn-primary">View Trns</button>
                </div>
            </div>
        </div>
        <div class="adminRightPanel">
            <div id='showData' class="top tblDiv">
                <table id="showRecs2"  class="table table-striped table-hover">
                    <thead>
		                <tr>
		                    <td>RUNS</td>
		                    <td>AMOUNT</td>
		                </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="i" begin="1" end="20">
                    	<tr>
		                    <td>23</td>
		                    <td>2345</td>
		                </tr>
                    </c:forEach>
                    </tbody>
            </table>
            </div>
            <div class="bot">
            <div class="first">
                <input type="text" class="form-control"/>
                <input type="text" class="form-control"/>
            </div><div class="second">
                <input type="text" class="form-control"/>
                <input type="text" class="form-control"/>
            </div>
            </div>
        </div>
        <span id='showOverlayBtn' class='showBtn' onclick='showHideOverlay(1)'><i class='fa fa-chevron-left'></i></span>
        <div id='adminOverlayPanel'>
        	<span class='hideBtn' onclick='showHideOverlay(0)'><i class='fa fa-chevron-right'></i></span>
        	<div id='adminOverlayPanelTblDiv'>
        		<table class='table table-striped table-bordered '>
        			<tr>
        				<td>India 1st ODI</td>
        				<td>Lagai</td>
        				<td>Khai</td>
        				<td>Comments</td>
        			</tr>
        			<tr>
        				<td>INDIA</td>
        				<td>0.56</td>
        				<td>58</td>
        				<td></td>
        			</tr>
        			<tr>
        				<td>SRI LANKA</td>
        				<td>0.00</td>
        				<td>0.00</td>
        				<td></td>
        			</tr>
       			</table>
        	</div>
        	<div class='adminOverlayPanelTblDiv2'>
        		<table class='table table-striped table-bordered '>
        			<tr>
        				<td colspan='3'>INDIA WON THE TOSS AND BAT FORST</td>
        				<td>10 OVERS SESSION</td>
        			</tr>
        			<tr>
        				<td>RATE</td>
        				<td>NOT</td>
        				<td>YES</td>
        				<td>Comment</td>
        			</tr>
        			<tr>
        				<td>1</td>
        				<td>55</td>
        				<td>56</td>
        				<td></td>
        			</tr>
       			</table>
        		<table class='table table-striped table-bordered '>
        			<tr>
        				<td colspan='3'>INDIA WON THE TOSS AND BAT FORST</td>
        				<td>10 OVERS SESSION</td>
        			</tr>
        			<tr>
        				<td>RATE</td>
        				<td>NOT</td>
        				<td>YES</td>
        				<td>Comment</td>
        			</tr>
        			<tr>
        				<td>1</td>
        				<td>55</td>
        				<td>56</td>
        				<td></td>
        			</tr>
       			</table>
        		<table class='table table-striped table-bordered '>
        			<tr>
        				<td colspan='3'>INDIA WON THE TOSS AND BAT FORST</td>
        				<td>10 OVERS SESSION</td>
        			</tr>
        			<tr>
        				<td>RATE</td>
        				<td>NOT</td>
        				<td>YES</td>
        				<td>Comment</td>
        			</tr>
        			<tr>
        				<td>1</td>
        				<td>55</td>
        				<td>56</td>
        				<td></td>
        			</tr>
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
    <script type="text/javascript">
        function adjustments(){
            /* $("#showData").height("65vh"); */
            $('#showRecs1').DataTable({
                "scrollY":        "30vh",
                "scrollCollapse": true,
                "paging":         false,
                "info":     false,
                "filter":false
            });
            $('#showRecs2').DataTable({
                "scrollY":  ($(window).height() - 230),
                "scrollCollapse": true,
                "paging":         false,
                "info":     false,
                "filter":false
            });
        }

        function showHideOverlay(flag){
        	if(flag === 0){
        		$("#adminOverlayPanel").hide('slide',{direction:'right'},500);
        		$("#showOverlayBtn").show();
        	}else{
        		$("#adminOverlayPanel").show('slide',{direction:'right'},500);
        		$("#showOverlayBtn").hide();
        	}
        }
        $(document).ready(function(){
            adjustments();
            $("#showRecs1 tr").click(function(){
            	$("#editUserData").toggle("");
            	$("#tdEditRateByAdmin").val("");
				$("#tdEdituserIdByAdmin").val("");
				$("#tdEditamountTeam1ByAdmin").val("");
				$("#tdEditamountTeam2ByAdmin").val("");
				$("#tdEditRateByAdmin").val("");
            	var betId=$(this).attr("id").split("_")[1];
            	var tdBetRate=$("#tdbetRate_"+betId).html();
            	var tdbetAmount=$("#tdbetAmount_"+betId).html();
            	var tdonTeam=$("#tdonTeam_"+betId).html();
            	var tdbetType=$("#tdbetType_"+betId).html();
            	var tduserId=$("#tduserId_"+betId).html();
				$("#tdEditRateByAdmin").val(tdBetRate);
				$("#tdEdituserIdByAdmin").val(tduserId);
				$("#tdEditamountTeam1ByAdmin").val(tdbetAmount);
				$("#tdEditamountTeam2ByAdmin").val(tdBetRate);
				$("#tdEditRateByAdmin").val(tdBetRate);
				$("#tdEditModeByAdmin").find('option[value="' + tdbetType + '"]').attr("selected", "selected");
				//$("#tdEditOnTeamByAdmin").find('option[value="' + tdonTeam + '"]').attr("selected", "selected");
				$("#tdEditOnTeamByAdmin").html("<option value='"+tdonTeam+"' selected='selected'>"+tdonTeam+"</option");
            	//alert($(this).attr("id").split("_")[1]+"      tdbetType="+tdbetType)
            });
        });
        $(window).load(function(){
    		$(".adminMnu").removeClass("active");
        	$("#adminPage1").addClass("active");
    	});

        function EnterBetAmountByAdmin(){
        	//alert("call")
        	var teamId=$("#teamIdEnterAMt").val();
        	var mode=$("#betMoodEnter").val();
        	var betRate=$("#betRateEnter").val();
        	var team1Amt=$("#team1EnterAmount").val();
        	var team2Amt=$("#team2EnterAmount").val();
        	//alert(teamId+"    mode="+mode+"   "+betRate+"   "+team1Amt+"   "+team2Amt)
        	$.ajax({
    		    type: "post",
    		    async :false,
    		    data:{"matchId":teamId,"team1Rate":team1Amt,"team2Rate":team2Amt,"mode":mode,"rate":betRate},
    		    url: "<%=ctxPath%>/adminEnterValueForMatch",
    		    success: function(data){
    		    	alert(data);


    		    },
    			error:function() {
    				alert("Not Updated Try again.");

    			}
    		});

        }

    </script>
</html>