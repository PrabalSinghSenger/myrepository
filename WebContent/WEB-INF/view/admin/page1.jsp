<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<%String ctxPath=request.getContextPath();%>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>${teamBean.comment } Admin Panel</title>
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
			<input type="hidden" id="HiddenTeamId" value="${teamBean.teamId }">
				<c:choose>
					<c:when test="${not empty teamBean.team_1 and not empty teamBean.team_2 and  empty teamBean.team_3 }">
						<div class="sectionFirst">
							<div class="box1" style='width: 210px; border: 1px solid #d5d5d5; padding: 0px;'>
								<c:if test="${not empty teamBean.team_1 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;' name='team_1' type="text" value="${teamBean.team_1 }" readonly="readonly" /> 
										<input class='form-control' id="Total_${ teamBean.team_1}_${ teamBean.teamId}"  value="" style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control'	style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>
								<c:if test="${not empty teamBean.team_2 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;' name='team_1' type="text" value="${teamBean.team_2 }" readonly="readonly" />
										 <input class='form-control'  id="Total_${ teamBean.team_2}_${ teamBean.teamId}"  style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control' style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>

							</div>
						
							<div class="box2" style="width: 210px; float: left; padding: 0px; margin: 0px;border: 1px solid #d5d5d5;">
								   <span style='width: 100%;display: block;'>Actual Book <input class="CommissionClassChkBox" id="ActualBook" type="checkbox" style="float: right;"></span>
						            <span  style='width: 100%;display: block;'>Without Com <input class="CommissionClassChkBox" id="WithoutCommission" type="checkbox" style="float: right;"></span>
						            <span  style='width: 100%;display: block;'>With Patti <input class="CommissionClassChkBox" id="withPattiCommission" type="checkbox" style="float: right;"></span>
								</div>
							
							<div class="box3" style='float: right; width: 160px; border: 1px solid #d5d5d5;'>
								<span class="fllt" 	style='float: left; display: block; width: 45px; height: 25px; margin: 3px 0px;'>AVG L</span> 
								<input class="form-control blueBkCol" 	style='float: left; width: 95px; height: 25px; margin: 3px 0px;' -	name='avgLgi' type="number" step="0.01" /> 
								<span style='float: left; display: block; width: 45px; height: 25px; margin: 3px 0px;'>AVGK</span> 
								<input class="form-control yellowBkCol" style='float: left; width: 95px; height: 25px; margin: 3px 0px;' name='avgKhi' type="number" step="0.01" />
							</div>
						
						</div>

					</c:when>
					<c:when test="${not empty teamBean.team_1 and not empty teamBean.team_2 and not empty teamBean.team_3  and  empty teamBean.team_4 }">

						<div class="sectionFirst">
							<div class="box1" style='width: 210px; border: 1px solid #d5d5d5; padding: 0px;'>
								<c:if test="${not empty teamBean.team_1 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;'	name='team_1' type="text" value="${teamBean.team_1 }" /> 
										<input	class='form-control'  id="Total_${ teamBean.team_1}_${ teamBean.teamId}" style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control'	style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>
								<c:if test="${not empty teamBean.team_2 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;' name='team_1' type="text" value="${teamBean.team_2 }" />
										 <input class='form-control'  id="Total_${ teamBean.team_2}_${ teamBean.teamId}"  	style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control' style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>

								<c:if test="${not empty teamBean.team_3 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;' 	name='team_1' type="text" value="${teamBean.team_3 }" />
										 <input  id="Total_${ teamBean.team_3}_${ teamBean.teamId}"  class='form-control' style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control' style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>


							</div>
							<!-- <div style='width: 1px;border: 1px solid #888;height: 80%;float: left;margin-top: 5px;'></div> -->
							<div class="box1" style='width: 210px; border: 1px solid #d5d5d5; padding: 0px;'>
							<%-- 	<c:if test="${not empty teamBean.team_1 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;'
										name='team_1' type="text" value="${teamBean.team_1 }" /> <input
										class='form-control'  id="Total_${ teamBean.team_1}_${ teamBean.teamId}" 
										style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control'
										style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>
								<c:if test="${not empty teamBean.team_2 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;'
										name='team_1' type="text" value="${teamBean.team_2 }" /> <input
										class='form-control'  id="Total_${ teamBean.team_2}_${ teamBean.teamId}" 
										style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control'
										style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>

								<c:if test="${not empty teamBean.team_3 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;'
										name='team_1' type="text" value="${teamBean.team_3 }" /> <input
										class='form-control' id="Total_${ teamBean.team_3}_${ teamBean.teamId}" 
										style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control'
										style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>
 --%>
							</div>
						
							<div class="box2" style="width: 210px; float: left; padding: 0px; margin: 0px;">
								   <span style='width: 100%;display: block;'>Actual Book <input class="CommissionClassChkBox" id="ActualBook" type="checkbox" style="float: right;"></span>
						            <span  style='width: 100%;display: block;'>Without Com <input class="CommissionClassChkBox" id="WithoutCommission" type="checkbox" style="float: right;"></span>
						            <span  style='width: 100%;display: block;'>With Patti <input class="CommissionClassChkBox" id="withPattiCommission" type="checkbox" style="float: right;"></span>
							</div>
							
						</div>


					</c:when>
					<c:otherwise>
						<div class="sectionFirst">
							<div class="box1" 	style='width: 210px; border: 1px solid #d5d5d5; padding: 0px;'>
								<c:if test="${not empty teamBean.team_1 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;' name='team_1' type="text" value="${teamBean.team_1 }" readonly="readonly" /> 
										<input class='form-control'  id="Total_${ teamBean.team_1}_${ teamBean.teamId}"  style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control'	style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>
								<c:if test="${not empty teamBean.team_2 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;' name='team_1' type="text" value="${teamBean.team_2 }" readonly="readonly" /> 
										<input class='form-control' id="Total_${ teamBean.team_2}_${ teamBean.teamId}"  style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control' style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>
								<c:if test="${not empty teamBean.team_3 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;' name='team_1' type="text" value="${teamBean.team_3 }" readonly="readonly" /> 
										<input class='form-control'id="Total_${ teamBean.team_3}_${ teamBean.teamId}"  style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control' style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>
								<c:if test="${not empty teamBean.team_4 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;' 	name='team_1' type="text" value="${teamBean.team_4 }" readonly="readonly" /> 
										<input class='form-control'  id="Total_${ teamBean.team_4}_${ teamBean.teamId}" style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control' style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>
							</div>
							<!-- <div style='width: 1px;border: 1px solid #888;height: 80%;float: left;margin-top: 5px;'></div> -->
							<div class="box2"
								style='width: 210px; border: 1px solid #d5d5d5; padding: 0px;'>
								<c:if test="${not empty teamBean.team_5 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;' 	name='team_1' type="text" value="${teamBean.team_5 }" readonly="readonly" /> 
										<input class='form-control' id="Total_${ teamBean.team_5}_${ teamBean.teamId}"  style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control' style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>
								<c:if test="${not empty teamBean.team_6 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;' 	name='team_1' type="text" value="${teamBean.team_6 }" readonly="readonly" />
										 <input class='form-control' id="Total_${ teamBean.team_6}_${ teamBean.teamId}"  style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control' style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>

								<c:if test="${not empty teamBean.team_7 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;' 	name='team_1' type="text" value="${teamBean.team_7 }" readonly="readonly" /> 
										<input class='form-control' id="Total_${ teamBean.team_7}_${ teamBean.teamId}" 	style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control' 	style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>

								<c:if test="${not empty teamBean.team_8 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;' name='team_1' type="text" value="${teamBean.team_8 }" readonly="readonly" />
										 <input class='form-control' id="Total_${ teamBean.team_8}_${ teamBean.teamId}"  style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control' style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>
							</div>
							<!-- <div style='width: 1px;border: 1px solid #888;height: 80%;float: left;margin-top: 5px;'></div> -->
							<div class="box2" style="width: 210px; float: left; padding: 0px; margin: 0px; border: 1px solid #d5d5d5;">
								<c:if test="${not empty teamBean.team_9 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;' name='team_1' type="text" value="${teamBean.team_9 }" readonly="readonly" /> 
										<input class='form-control' id="Total_${ teamBean.team_9}_${ teamBean.teamId}"  style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control' style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>
								<c:if test="${not empty teamBean.team_10 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;' name='team_1' type="text" value="${teamBean.team_10 }" 	readonly="readonly" /> 
										<input class='form-control' id="Total_${ teamBean.team_10}_${ teamBean.teamId}"  style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control'	style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>

								<c:if test="${not empty teamBean.team_11 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;' 	name='team_1' type="text" value="${teamBean.team_11 }" readonly="readonly" />
										 <input class='form-control' id="Total_${ teamBean.team_11}_${ teamBean.teamId}" 	style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control' style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>

								<c:if test="${not empty teamBean.team_12 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;' name='team_1' type="text" value="${teamBean.team_12 }" readonly="readonly" />
										 <input class='form-control' id="Total_${ teamBean.team_12}_${ teamBean.teamId}" 	style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control' style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>
							</div>
							<div class="box3" style='float: right; width: 160px; border: 1px solid #d5d5d5;'>
								   <span style='width: 100%;display: block;'>Actual Book <input class="CommissionClassChkBox" id="ActualBook" type="checkbox" style="float: right;"></span>
						            <span  style='width: 100%;display: block;'>Without Com <input class="CommissionClassChkBox" id="WithoutCommission" type="checkbox" style="float: right;"></span>
						            <span  style='width: 100%;display: block;'>With Patti <input class="CommissionClassChkBox" id="withPattiCommission" type="checkbox" style="float: right;"></span>
							</div>

						</div>

					</c:otherwise>
				</c:choose>

				<div class="sectionSecond">
                <div class="leftSec">
                    <div class="top">
                    <div>
                        <span>Date</span>
                        <input type="text" value='${teamBean.time} ' disabled>
                        </div>
                        <!-- <span>Match</span>
                        <input class="form-control" type="text"/> -->
                        <div style='border:1px solid #d5d5d5;float:right;height:90%;display: flex;justify-content: center;align-items: center;'>
	                        <span><b>Session</b></span>
	                  		<button class="btn btn-primary" data-toggle="modal" data-target="#addSession">Add</button>
	                 		<button class="btn btn-primary" data-toggle="modal"   onclick='getSessionMatchList()'   data-target="#selSession">Sel</button>
	                 		<button class="btn btn-primary" onclick='createDeclareModal()'>Declare</button>
                 		</div>
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
                           <!--  <td>PG</td> -->
                            <td>AT TIME</td>
                          <!--   <td>IP Address</td>
                            <td>MAC Address</td> -->
                        </tr>
                    </thead>
                    <tbody>

                    <c:set var="i" value="1"></c:set>
                   	<c:forEach var="teamBean" items="${teamIdList }">
                   		<tr id="tr_${teamBean.betId}">
                            <td>${i }</td>
                            <td id="tdbetRate_${teamBean.betId}">${teamBean.betRate}</td>
                            <td  id="tdbetAmount_${teamBean.betId}">${teamBean.betAmount}</td>
                            <TD id="tdbetType_${teamBean.betId}">${teamBean.betType}</TD>
                            <td id="tdonTeam_${teamBean.betId}">${teamBean.onTeam}</td>
                            <td id="tduserId_${teamBean.betId}">${teamBean.userId}</td>
                            <td>7865432</td>
                            <td>-765465</td>
                        <!--     <td>1</td> -->
                            <td id="tr_${teamBean.betId}">${teamBean.createdTime}</td>
                       <%--      <td>${teamBean.ipAddress}</td>
                            <td>${teamBean.ipAddress}</td> --%>
                        </tr>
                        <c:set var="i" value="${i+1}"></c:set>
                   	</c:forEach>
                    </tbody>
                </table>
                </div>
            </div>
            <div class="sectionFourth">
	            <div id='editUserData'>
	             <!--   <form>
	                <div class="leftSec">
	                    <textarea class="form-control"></textarea>
	                    <div class='top'>
	                    	<span>Rate</span>
	                    	<span>Amount</span>
	                    	<span>Mode</span>
	                    	<span>Team</span>
	                    	<span>Name</span>
	                    	<span>Team1</span>
	                    	<span>Team2</span>
	                    </div>
	                    <div class='bot'>
	                    	<input type="number" step="0.01" id="tdEditRateByAdmin" name="tdEditRateByAdmin" class='form-control'>
	                    	<input type="text" class='form-control'>
	                    	<select id="tdEditModeByAdmin" name="tdEditModeByAdmin" class='form-control'>

	                       	  <option value="K">K</option>
	                       	    <option value='L'>L</option>
	                   		 </select>
	                    	<select  class='form-control' id="tdEditOnTeamByAdmin" name="tdEditOnTeamByAdmin" >

	                    	</select>
	                    	<select  class='form-control'>
	                    		<option>Select</option>
	                    	</select>
	                    	<input type="hidden"  id="tdEdituserIdByAdmin" name="tdEditUserIdByAdmin"  class='form-control'>
	                    	<input type='text'  id="tdEditamountTeam1ByAdmin" name="tdEditamountTeam1ByAdmin"  class='form-control'>
	                    	<input type='text'  id="tdEditAmountTeam2ByAdmin" name="tdEditAmountTeam2ByAdmin"  class='form-control'>
	                    </div>
	                </div>
	                </form> -->
	                <div class="rightSec" style="margin: 10px 2px 0px 11px;">
	                    <div class="bot">
	                        <button id="ModifyExistingBet" class="btn btn-primary" onclick="modifyExistingSelectedBet();" disabled>Modify</button>
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
                    <span>Amount</span>
                    <span>Mode</span>
                    <span>Team</span>
                    <span>Name</span>
                    <!-- <span>Team1</span> -->
                    <!-- <span>Team2</span> -->
                </div>
                <div class="bot">
                    <input class='form-control'  id="betRateEnter"  type="number" step="0.01"/>
                    <input class='form-control'  id="betRateAmount"  type="text" onblur="AutoChangeAmount(this.value,this.id);"/>
                    <select id="betMoodEnter" name="mode" class='form-control'>
                        <option value='L'>L</option>
                        <option value="K">K</option>
                    </select>
                    <select id="teamIdEnterAMt" class='form-control'>
	                   <%--  <c:forEach var="team" items="${teamList }"> --%>
	                       <option value="${teamBean.team_1 }"> ${teamBean.team_1 }</option>
	                       <option value="${teamBean.team_2 }"> ${teamBean.team_2 }</option>
	                  <%--   </c:forEach> --%>
                    </select>
                    <select class='form-control' id="SelectBetEditUser">
                        <c:forEach var="user" items="${userList }">
                    	   <option value="${user.userId }">${user.userName }-(${user.userId })</option>
                   		 </c:forEach>
                    </select>
                   <!--  <input class='form-control' id="team1EnterAmount" type="text"/> -->
                    <!-- <input class='form-control' id="team2EnterAmount"  type="text"/> -->
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
                 <form name="sessionRateForm" id="sessionRateForm">
                    <input class='form-control'  id="sessionRateFormNameId"  name="sessionRateFormName"  type="text"/>

                    <input class='form-control'  id="sessionRateFormRateId"  name="sessionRateFormRate"  type="number" step="0.01"/>
                    <input class='form-control'  id="sessionRateFormRunsId"  name="sessionRateFormRuns"    type="number" step="1"/>
                    <input class='form-control' id="sessionRateFormAmountId" name="sessionRateFormAmount"  onblur="AutoChangeAmount(this.value,this.id);"  type="text"/>
                    <select name="sessionRateFormYesNoLabel"  id="YesNoLabel" class='form-control'>
                        <option value="yes">Yes</option>
                        <option value="no">No</option>
                    </select>
                    <select  name="sessionRateFormUseriD"  class='form-control'>
                        <c:forEach var="user" items="${userList }">
                    	   <option value="${user.userId }">${user.userName }-(${user.userId })</option>
                   		 </c:forEach>
                    </select>
                     <input class='form-control' id="sessionRateFormSessionId"  name="sessionRateFormSessionName" type="hidden"/>
                      </form>
                    <button id="sessionRateFormOkBtn" onclick="enterSessionBetRate();" disabled="disabled" class="btn btn-primary">OK</button>
                    <button class="btn btn-primary" >View Trns</button>


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
		                    <td>00</td>
		                    <td>0000</td>
		                </tr>
                    </c:forEach>
                    </tbody>
            </table>
            </div>
            <div class="bot" style='height: 65px;border-top: 1px solid #999;border-bottom: 1px solid #999;padding: 5px;'>
	            <div class="first" style='height:25px;'>
	                <input type="text" class="form-control" style='float: left;margin: 0px 5px 0px 0px;'/>
	                <input type="text" class="form-control" style='float: left;'/>
	            </div><div class="second" style='margin: 5px 0px;'>
	                <input type="text" class="form-control" style='float: left;margin: 0px 5px 0px 0px;'/>
	                <input type="text" class="form-control" style='float: left;'/>
	            </div>
            </div>
           	<div class="box2" style="width: 100%;float: left;padding: 5px;margin: 0px;height: 95px;">
	            <span style='width: 100%;display: block;'>Actual Book <input class="CommissionClassChkBox" id="ActualBook" type="checkbox" style="float: right;"></span>
	            <span  style='width: 100%;display: block;'>Without Com <input class="CommissionClassChkBox" id="WithoutCommission" type="checkbox" style="float: right;"></span>
	            <span  style='width: 100%;display: block;'>With Patti <input class="CommissionClassChkBox" id="withPattiCommission" type="checkbox" style="float: right;"></span>
	            <!-- <span style='width: 100%;display: block;'>Auto accept bids of Match <input type="checkbox" style="float: right;"></span>
	            <span style='width: 100%;display: block;'>Auto accept session bids <input type="checkbox" style="float: right;"></span> -->
            </div>
        </div>
        <div class='adminRightPanel2'>
        	<div class='tblDiv'>
        		<table id='adminRightPanel2Tbl' class="table table-striped">
        			<thead>
        				<tr><th>Sno</th><th>Rate</th><th>Amount</th><th>Mode</th><th>Fav</th><th>Name</th><th>Total Win</th><th>Total Loss</th><th>Accept</th><td>Decline</th></tr>
        			</thead>
        			<tbody id="adminrightpanelTbody">

        			</tbody>
        		</table>
        	</div>
        </div>
        <!-- <span id='showOverlayBtn' class='showBtn' onclick='showHideOverlay(1)'><i class='fa fa-chevron-left'></i></span> -->
        <div id='adminOverlayPanel'>
        	<!--  <div class='adminOverlayPanelTblDiv2'>
        		<table class='table table-striped table-bordered' style='margin:0px;'>
        			<tr>
        				<td colspan='3'>INDIA WON THE TOSS AND BAT FORST</td>
        				<td>10 OVERS SESSION</td>
        			</tr>
        			<tr>
        				<td>Type</td>
        				<td>RATE</td>
        				<td>Runs</td>
        				<td colspan="2" rowspan="3"><textarea   class="form-control"></textarea></td>
        			</tr>
        			
        			<tr>
        				<td>No</td>
        				<td><input  style="width:55px;" type='number' step='0.01' max='9' min='0.1' class="form-control"></td>
        				<td><input  style="width:50px;" type='number' step='1'  min='0' class="form-control"></td>
        			
        			</tr>
        			<tr>
        				<td>Yes</td>
        				<td><input  style="width:55px;" type='number' step='0.01' max='9' min='0.1' class="form-control"></td>
        				<td><input  style="width:50px;" type='number' step='1'  min='0' class="form-control"></td>
        			
        			</tr>
        			<tr>
        				<td colspan='4'>
        					<button class='btn btn-default'>Show</button>
        					<button class='btn btn-default'>Don't Show</button>
       					</td>
        			</tr>
       			</table>
    		</div> 
    		 -->
    		
        </div>
        </div>

<!-- AddSession Modal -->
<div id="addSession" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Add New Session</h4>
      </div>
      <div class="modal-body" style='padding: 10px 0px 10px 17%;'>
      <form  id="sessionCreateForm" name="sessionCreateForm">
        <span style='display: flex;width: 100%;height: 30px;align-items: center;'>Date
 		<input type="hidden" name="sessionCreateMatch"  id="sessionCreateMatchId" class="form-control" value="${teamBean.teamId}">
        <input type="text" name="sessionCreatetime" value="${teamBean.time}" class="form-control" style='width: 20%;margin:0px 0px 0px 43px'></span>
        <span style='display: flex;width: 100%;height: 30px;align-items: center;'>Comments
        <input type="text" name="sessionCreateComment"  id="sessionCreateCommentId" class="form-control"  style="width: 70%;margin: 0px 10px;"></span>
        <span style='display: flex;align-items: center;height: 25px;'>
        <input type="checkbox" name="sessionCreateMeter"  id="sessionCreateMeterId"  style="margin: 0px 10px 0px 0px;">Meter</span>
        <!-- <button class="btn btn-primary">Ok</button>
        <button class="btn btn-danger">Cancel</button> -->
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" onclick="sessionCreateForMatch()" data-dismiss="modal">Ok</button>
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>




<!-- Select Session Modal -->
<div id="selSession" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Select Session</h4>
      </div>
      <div class="modal-body">
        <div>
        	<table class='table table-striped table-condensed table-hover table-responsive'>
        		<thead>
        			<tr>
        				<th>Select</th>
        				<th>Session Comment</th>
        				<th>Date</th>
        				<th>Data1</th>
        				<th>Data1</th>
        				<th>Data1</th>
        			</tr>
        		</thead>
        		<tbody id="SelectModelSessionId">
        			<tr>
        				<td><input type="checkbox"  name="sessionSelect" ></td>
        				<td>Data1</td>
        				<td>Data1</td>
        				<td>Data1</td>
        				<td>Data1</td>
        				<td>Data1</td>
        			</tr>
        		</tbody>
        	</table>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" id="selectSessionButton" disabled="disabled" onclick="selectSessionForRate();"  data-dismiss="modal">Ok</button>
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>


<!-- Declare Modal -->
<div id="declare" class="modal fade" role="dialog">
  <div class="modal-dialog modal-lg">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Declaration</h4>
      </div>
      <div class="modal-body">
        <div class='tblDiv'>
        	<table id='declareTbl' class='table table-striped'>
        		<thead>
        			<tr>
        				<th>Code</th>
        				<th>Date</th>
        				<th>Comment</th>
        				<th>Result</th>
        				<th>Team1</th>
        				<th>Team2</th>
        				<th>Team3</th>
        				<th>Won</th>
        			</tr>
        		</thead>
        		<tbody  id="AllSessionListId">
        			<tr>
        				<td>Data1</td>
        				<td>Data2</td>
        				<td>Data3</td>
        				<td>Data4</td>
        				<td>Data5</td>
        				<td>Data6</td>
        				<td>Data7</td>
        				<td>Data8</td>
        			</tr>
        		</tbody>
        	</table>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">UnDeclare</button>
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>

<!-- Individual Report Modal -->
<div id="individualReport" class="modal fade" role="dialog">
  <div class="modal-dialog modal-lg">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Individual Report</h4>
      </div>
      <div class="modal-body" style='height: 300px;'>
        <div class="col-xs-12" style='height: 20px;display: block;margin: 5px;'>
        	<span style='float: left;width: auto;margin-left: 10px;display: flex;align-items: center;height: 100%;'>Name of Person</span>
        	<select class='form-control' style='margin-left: 10px;float: left;width: 120px;display: block;height: 100%;'>
        		<option>Select</option>
        	</select>
        	<span style='float: left;width: auto;margin-left: 10px;display: flex;align-items: center;height: 100%;'>Total Entries</span>
        	<input type="text"  class='form-control' style='margin-left: 10px;float: left;width: 100px;display: block;height: 100%;'>
        	<span style='float: left;width: auto;margin-left: 10px;display: flex;align-items: center;height: 100%;'>Date</span>
        	<select  class='form-control' style='margin-left: 10px;float: left;width: 120px;display: block;height: 100%;'>
        		<option>Select</option>
        	</select>
        </div>
        <div class="col-xs-12" style='height: 20px;display: block;margin: 5px;'>
        	<span style="margin-left:10px;float: left;display: flex;width: 100px;height: 100%;align-items:center"><input type="checkbox"> Check All</span>
        	<span style="margin-left:10px;float: left;display: flex;width: auto;height: 100%;align-items:center">Match</span>
        	<select class="form-control" style="margin-left:10px;float: left;display: flex;width: 300px;height: 100%;align-items:center">
        		<option>Select</option>
        	</select>
        </div>
        <div class="col-xs-12" style='height: 35px;'>
        	<div style='float: left;width: 40%;height: 100%;'>
        		<span style='display: block;width: 100%;text-align: center;'>IND</span>
        		<span style='display: block;width: 100%;text-align: center;'>654367</span>
       		</div>
       		<div style='float: left;width: 40%;height: 100%;'>
        		<span  style='display: block;width: 100%;text-align: center;'>SRL</span>
        		<span  style='display: block;width: 100%;text-align: center;'>7654345</span>
       		</div>
        </div>
        <div class="col-xs-12">
        	<div class="tblDiv">
				<table class="table table-stripped">
					<thead>
						<tr>
							<th>SL</th>
							<th>Rate</th>
							<th>Amount</th>
							<th>Support</th>
							<th>Mode</th>
							<th>PG</th>
							<th>Check</th>
							<th>IND</th>
							<th>SRL</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>SL</td>
							<td>Rate</td>
							<td>Amount</td>
							<td>Support</td>
							<td>Mode</td>
							<td>PG</td>
							<td>Check</td>
							<td>IND</td>
							<td>SRL</td>
							<td></td>
						</tr>
					</tbody>
				</table>
        	</div>
        </div>
        <div class="col-xs-12">

        </div>
      </div>
      <div class="modal-footer">
      	<span style='margin-right: 20p'>Actual Amount <input type="checkbox"></span>
       	<button class="btn btn-default" data-dismiss="modal">Print</button>
      	<button class="btn btn-default" data-dismiss="modal">Print Datewise</button>
       	<button class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>


<!-- For All team Rate Colored Panel -->
<div id='headerPopup' style='position:fixed;top:5px;right:5px;height:auto;width:400px;background:#fff;box-shadow:0px 0px 2px 2px #999;z-index:99'>
	<div style='width:100%;height:15px;background:#353535;padding: 0px 5px;'>
		<div style='float:left;'>
			<i onclick='minimizeWindow(this)' class="fa fa-minus fa-plus" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
			<i class="fa fa-question" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
		</div>
		<div style='float: left;color: #fff;margin-left: 10px;'>${ teamBean.comment } - Match Odds</div>
		<div style='float:right;'>
			<i class="fa fa-refresh" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
			<i class="fa fa-thumb-tack" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
			<i onclick='closeWindow("headerPopup")' class="fa fa-times" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
		</div>
	</div>
	<div id='headerPopupInner' style='height:calc(100% - 15px);width:100%;box-shadow:0px 0px 2px 2px #999;'>
		<div style='width:100%;height:20px;background:#eee;padding: 2px 5px;'>
			<span>22/06/2016 14:32</span>
			<span style='margin-left: 20%;font-weight: bold;color:blue'>2:33:45:59</span>
			<!-- <span style='float:right'>IND</span> -->
		</div>
		<div style='width:100%;height:20px;background:#fff;padding: 0px 0px;'>
			<div class='blueCol' style='float: left;width: 48%;height: 100%;padding: 2px;color: #000;'>
				<span style='width: 90px;display: block;float: left;'>Selections: 2(2)</span>
				<span>108.9%</span>
				<span style='float:right'>Back</span>
			</div>
			<div class='pinkCol' style='float:right;width:48%;height:100%;padding: 2px;color: #000;'>
				<span style='width: 60px;display: block;float: left;'>Lay</span>
				<span>91.3%</span>
				<span style='float:right'>Winners: (1)</span>
			</div>
		</div>
		<div style='width: 75%;height:auto;float: left;'>

		<c:if test="${not empty teamBean.team_1 }">
		<div style='width:100%;height:18px;background:#353535;padding: 0px 5px;color:#fff;'>
			<div style='float: left;'>${ teamBean.team_1 }</div>
			<div style='float:right;'>
				<i class="fa fa-refresh" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
				<i class="fa fa-times" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
			</div>
		</div>
		<div style='width:100%;height:32px;background:#fff;padding: 0px;position: relative;'>
		<form  method="get" class="submitMatchRate" name="${ teamBean.team_1 }_${ teamBean.teamId }"  id="${ teamBean.team_1 }_${ teamBean.teamId }">
		<div style='float:left;width:auto;height:100%;padding: 0px;color: #fff;'>
				<div class="blueCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>
						<input class="blueCol" id="Lagai1_${ teamBean.team_1 }_${ teamBean.teamId }" min="0.00" name="Lagai1" type="number"  step="0.01"   value="0.00" onkeydown="changeValueDec(this.id,this.value,event);" onkeyup="changeValue(this.id,this.value,event);" style="height: 100%;width: 100%;border: none;text-align: center;">
					</span>
				</div>
				 <div class="blueCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;'>
                           <input class="blueCol"  id="Lagai2_${ teamBean.team_1 }_${ teamBean.teamId }"  name="Lagai2"  type="number" step='0.02'  value="0.00"  onchange="changeValue(this.id,this.value,event);"   style="height: 100%;width: 100%;border: none;text-align: center;">
                     </span>
				</div>
			</div>
			<div style='float:left;width:auto;height:100%;padding: 0px;color: #fff;margin-left: 40px'>
				<div class="pinkCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>
                      <input class="pinkCol"  id="Khai1_${ teamBean.team_1 }_${ teamBean.teamId }"  name="Khai2" min="0.00"  type="number" step='0.01'   value="0.00"  onchange="changeValue(this.id,this.value,event);"   style="height: 100%;width: 100%;border: none;text-align: center;">
                    </span>
				</div>
				<div class="pinkCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;'>
					   <input class="pinkCol"  id="Khai2_${ teamBean.team_1 }_${ teamBean.teamId }"  name="Khai1"   type="number"   min="0.00"  step='0.02'  value="0.00"   onchange="changeValue(this.id,this.value,event);"   style="height: 100%;width: 100%;border: none;text-align: center;">
                    </span>
				</div>
			</div>
			</form>
		</div>
       </c:if>

	   <c:if test="${not empty teamBean.team_2 }">
		<div style='width:100%;height:18px;background:#353535;padding: 0px 5px;color:#fff;'>
			<div style='float: left;'>${ teamBean.team_2 }</div>
			<div style='float:right;'>
				<i class="fa fa-refresh" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
				<i class="fa fa-times" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
			</div>
		</div>
		<div style='width:100%;height:32px;background:#fff;padding: 0px;position: relative;'>
		<form onsubmit="submitMatchRate();" class="submitMatchRate" name="${ teamBean.team_2 }_${ teamBean.teamId }"  id="${ teamBean.team_2 }_${ teamBean.teamId }">
		<div style='float:left;width:auto;height:100%;padding: 0px;color: #fff;'>
				<div class="blueCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>
						<input class="blueCol" id="Lagai1_${ teamBean.team_2 }_${ teamBean.teamId }" name="Lagai1" type="number"  min="0.00" step='0.01'  value="0.00" onchange="changeValue(this.id,this.value);" style="height: 100%;width: 100%;border: none;text-align: center;">
					</span>
				</div>
				 <div class="blueCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;'>
                           <input class="blueCol"  id="Lagai2_${ teamBean.team_2 }_${ teamBean.teamId }"  name="Lagai2"  type="number" min="0.00" step='0.02'  value="0.00"  onchange="changeValue(this.id,this.value);"   style="height: 100%;width: 100%;border: none;text-align: center;">
                     </span>
				</div>
			</div>
			<div style='float:left;width:auto;height:100%;padding: 0px;color: #fff;margin-left: 40px'>
				<div class="pinkCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>
					<input class="pinkCol"  id="Khai2_${ teamBean.team_2 }_${ teamBean.teamId }"  name="Khai2"   type="number" step='0.01' min="0.00"  value="0.00"  onchange="changeValue(this.id,this.value);"   style="height: 100%;width: 100%;border: none;text-align: center;">

                    </span>

				</div>
				<div class="pinkCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;'>
                         <input class="pinkCol"  id="Khai1_${ teamBean.team_2 }_${ teamBean.teamId }"  name="Khai1"   type="number" min="0.00" step='0.02'  value="0.00"   onchange="changeValue(this.id,this.value);"   style="height: 100%;width: 100%;border: none;text-align: center;">
                    </span>
				</div>
			</div>
			</form>
		</div>
       </c:if>

	   <c:if test="${not empty teamBean.team_3 }">
		<div style='width:100%;height:18px;background:#353535;padding: 0px 5px;color:#fff;'>
			<div style='float: left;'>${ teamBean.team_3 }</div>
			<div style='float:right;'>
				<i class="fa fa-refresh" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
				<i class="fa fa-times" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
			</div>
		</div>
		<div style='width:100%;height:32px;background:#fff;padding: 0px;position: relative;'>
		<form onsubmit="submitMatchRate();" class="submitMatchRate" name="${ teamBean.team_3 }_${ teamBean.teamId }"  id="${ teamBean.team_3 }_${ teamBean.teamId }">
		<div style='float:left;width:auto;height:100%;padding: 0px;color: #fff;'>
				<div class="blueCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>
						<input class="blueCol" id="Lagai1_${ teamBean.team_3 }_${ teamBean.teamId }" name="Lagai1" type="number" min="0.00" step='0.01'  value="0.00" onchange="changeValue(this.id,this.value);" style="height: 100%;width: 100%;border: none;text-align: center;">
					</span>
				</div>
				 <div class="blueCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;'>
                           <input class="blueCol"  id="Lagai2_${ teamBean.team_3 }_${ teamBean.teamId }"  name="Lagai2"  type="number" min="0.00" step='0.02'  value="0.00"  onchange="changeValue(this.id,this.value);"   style="height: 100%;width: 100%;border: none;text-align: center;">
                     </span>
				</div>
			</div>
			<div style='float:left;width:auto;height:100%;padding: 0px;color: #fff;margin-left: 40px'>
				<div class="pinkCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>
					<input class="pinkCol"  id="Khai2_${ teamBean.team_3 }_${ teamBean.teamId }"  name="Khai2"   type="number" min="0.00" step='0.01'   value="0.00"  onchange="changeValue(this.id,this.value);"   style="height: 100%;width: 100%;border: none;text-align: center;">

                    </span>

				</div>
				<div class="pinkCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;'>
                         <input class="pinkCol"  id="Khai1_${ teamBean.team_3 }_${ teamBean.teamId }"  name="Khai1"   type="number" min="0.00"  step='0.02'  value="0.00"   onchange="changeValue(this.id,this.value);"   style="height: 100%;width: 100%;border: none;text-align: center;">
                    </span>
				</div>
			</div>
			</form>
		</div>
       </c:if>

	   <c:if test="${not empty teamBean.team_4 }">
		<div style='width:100%;height:18px;background:#353535;padding: 0px 5px;color:#fff;'>
			<div style='float: left;'>${ teamBean.team_4 }</div>
			<div style='float:right;'>
				<i class="fa fa-refresh" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
				<i class="fa fa-times" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
			</div>
		</div>
		<div style='width:100%;height:32px;background:#fff;padding: 0px;position: relative;'>
		<form onsubmit="submitMatchRate();" class="submitMatchRate" name="${ teamBean.team_4 }_${ teamBean.teamId }"  id="${ teamBean.team_4 }_${ teamBean.teamId }">
		<div style='float:left;width:auto;height:100%;padding: 0px;color: #fff;'>
				<div class="blueCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>
						<input class="blueCol" id="Lagai1_${ teamBean.team_4 }_${ teamBean.teamId }" name="Lagai1" type="number" step='0.01' min="0.00" value="0.00" onchange="changeValue(this.id,this.value);" style="height: 100%;width: 100%;border: none;text-align: center;">
					</span>
				</div>
				 <div class="blueCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;'>
                           <input class="blueCol"  id="Lagai2_${ teamBean.team_4 }_${ teamBean.teamId }"  name="Lagai2"  type="number" step='0.02' min="0.00"  value="0.00"  onchange="changeValue(this.id,this.value);"   style="height: 100%;width: 100%;border: none;text-align: center;">
                     </span>
				</div>
			</div>
			<div style='float:left;width:auto;height:100%;padding: 0px;color: #fff;margin-left: 40px'>
				<div class="pinkCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>
					<input class="pinkCol"  id="Khai2_${ teamBean.team_4 }_${ teamBean.teamId }"  name="Khai2"   type="number" step='0.01' min="0.00"  value="0.00"  onchange="changeValue(this.id,this.value);"   style="height: 100%;width: 100%;border: none;text-align: center;">

                    </span>

				</div>
				<div class="pinkCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;'>
                         <input class="pinkCol"  id="Khai1_${ teamBean.team_4 }_${ teamBean.teamId }"  name="Khai1"   type="number"  step='0.02' min="0.00"  value="0.00"  onchange="changeValue(this.id,this.value);"   style="height: 100%;width: 100%;border: none;text-align: center;">
                    </span>
				</div>
			</div>
			</form>
		</div>
       </c:if>

	   <c:if test="${not empty teamBean.team_5 }">
		<div style='width:100%;height:18px;background:#353535;padding: 0px 5px;color:#fff;'>
			<div style='float: left;'>${ teamBean.team_5 }</div>
			<div style='float:right;'>
				<i class="fa fa-refresh" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
				<i class="fa fa-times" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
			</div>
		</div>
		<div style='width:100%;height:32px;background:#fff;padding: 0px;position: relative;'>
		<div style='float:left;width:auto;height:100%;padding: 0px;color: #fff;'>
				<div class="blueCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>
						<input class="blueCol" id="Lagai1_${ teamBean.team_5 }_${ teamBean.teamId }" name="Lagai1" type="number"  step='0.01' min="0.00"  value="0.00"  onchange="changeValue(this.id,this.value);" style="height: 100%;width: 100%;border: none;text-align: center;">
					</span>
				</div>
				 <div class="blueCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;'>
                           <input class="blueCol"  id="Lagai2_${ teamBean.team_5 }_${ teamBean.teamId }"  name="Lagai2"  type="number"  step='0.02' min="0.00"  value="0.00"  onchange="changeValue(this.id,this.value);"   style="height: 100%;width: 100%;border: none;text-align: center;">
                     </span>
				</div>
			</div>
			<div style='float:left;width:auto;height:100%;padding: 0px;color: #fff;margin-left: 40px'>
				<div class="pinkCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>
					<input class="pinkCol"  id="Khai2_${ teamBean.team_5 }_${ teamBean.teamId }"  name="Khai2"   type="number"  step='0.01' min="0.00"  value="0.00"  onchange="changeValue(this.id,this.value);"   style="height: 100%;width: 100%;border: none;text-align: center;">

                    </span>

				</div>
				<div class="pinkCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;'>
                         <input class="pinkCol"  id="Khai1_${ teamBean.team_5 }_${ teamBean.teamId }"  name="Khai1"   type="number"  step='0.02' min="0.00"  value="0.00"    onchange="changeValue(this.id,this.value);"   style="height: 100%;width: 100%;border: none;text-align: center;">
                    </span>
				</div>
			</div>
		</div>
       </c:if>

	   <c:if test="${not empty teamBean.team_6 }">
		<div style='width:100%;height:18px;background:#353535;padding: 0px 5px;color:#fff;'>
			<div style='float: left;'>${ teamBean.team_6 }</div>
			<div style='float:right;'>
				<i class="fa fa-refresh" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
				<i class="fa fa-times" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
			</div>
		</div>
		<div style='width:100%;height:32px;background:#fff;padding: 0px;position: relative;'>
		<div style='float:left;width:auto;height:100%;padding: 0px;color: #fff;'>
				<div class="blueCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>
						<input class="blueCol" id="Lagai1_${ teamBean.team_6 }_${ teamBean.teamId }" name="Lagai1" type="number"  step='0.01' min="0.00"  value="0.00"  onchange="changeValue(this.id,this.value);" style="height: 100%;width: 100%;border: none;text-align: center;">
					</span>
				</div>
				 <div class="blueCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;'>
                           <input class="blueCol"  id="Lagai2_${ teamBean.team_6 }_${ teamBean.teamId }"  name="Lagai2"  type="number"  step='0.01' min="0.00"  value="0.00"   onchange="changeValue(this.id,this.value);"   style="height: 100%;width: 100%;border: none;text-align: center;">
                     </span>
				</div>
			</div>
			<div style='float:left;width:auto;height:100%;padding: 0px;color: #fff;margin-left: 40px'>
				<div class="pinkCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>
					<input class="pinkCol"  id="Khai2_${ teamBean.team_6 }_${ teamBean.teamId }"  name="Khai2"   type="number"  step='0.01' min="0.00"  value="0.00"  onchange="changeValue(this.id,this.value);"   style="height: 100%;width: 100%;border: none;text-align: center;">

                    </span>

				</div>
				<div class="pinkCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;'>
                         <input class="pinkCol"  id="Khai1_${ teamBean.team_6 }_${ teamBean.teamId }"  name="Khai1"   type="number"   step='0.01' min="0.00"  value="0.00"    onchange="changeValue(this.id,this.value);"   style="height: 100%;width: 100%;border: none;text-align: center;">
                    </span>
				</div>
			</div>
		</div>
       </c:if>

	   <c:if test="${not empty teamBean.team_7 }">
		<div style='width:100%;height:18px;background:#353535;padding: 0px 5px;color:#fff;'>
			<div style='float: left;'>${ teamBean.team_7 }</div>
			<div style='float:right;'>
				<i class="fa fa-refresh" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
				<i class="fa fa-times" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
			</div>
		</div>
		<div style='width:100%;height:32px;background:#fff;padding: 0px;position: relative;'>
		<div style='float:left;width:auto;height:100%;padding: 0px;color: #fff;'>
				<div class="blueCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>
						<input class="blueCol" id="Lagai1_${ teamBean.team_7 }_${ teamBean.teamId }" name="Lagai1" type="number"  step='0.01' min="0.00"  value="0.00"  onchange="changeValue(this.id,this.value);" style="height: 100%;width: 100%;border: none;text-align: center;">
					</span>
				</div>
				 <div class="blueCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;'>
                           <input class="blueCol"  id="Lagai2_${ teamBean.team_7 }_${ teamBean.teamId }"  name="Lagai2"  type="number"  step='0.01' min="0.00"  value="0.00"   onchange="changeValue(this.id,this.value);"   style="height: 100%;width: 100%;border: none;text-align: center;">
                     </span>
				</div>
			</div>
			<div style='float:left;width:auto;height:100%;padding: 0px;color: #fff;margin-left: 40px'>
				<div class="pinkCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>
					<input class="pinkCol"  id="Khai2_${ teamBean.team_7 }_${ teamBean.teamId }"  name="Khai2"   type="number"  step='0.01' min="0.00"  value="0.00"   onchange="changeValue(this.id,this.value);"   style="height: 100%;width: 100%;border: none;text-align: center;">

                    </span>

				</div>
				<div class="pinkCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;'>
                         <input class="pinkCol"  id="Khai1_${ teamBean.team_7 }_${ teamBean.teamId }"  name="Khai1"   type="number"   step='0.01' min="0.00"  value="0.00"   onchange="changeValue(this.id,this.value);"   style="height: 100%;width: 100%;border: none;text-align: center;">
                    </span>
				</div>
			</div>
		</div>
       </c:if>

	   <c:if test="${not empty teamBean.team_8}">
		<div style='width:100%;height:18px;background:#353535;padding: 0px 5px;color:#fff;'>
			<div style='float: left;'>${ teamBean.team_8}</div>
			<div style='float:right;'>
				<i class="fa fa-refresh" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
				<i class="fa fa-times" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
			</div>
		</div>
		<div style='width:100%;height:32px;background:#fff;padding: 0px;position: relative;'>
		<div style='float:left;width:auto;height:100%;padding: 0px;color: #fff;'>
				<div class="blueCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>
						<input class="blueCol" id="Lagai1_${ teamBean.team_8 }_${ teamBean.teamId }" name="Lagai1" type="number"  step='0.01' min="0.00"  value="0.00"  onchange="changeValue(this.id,this.value);" style="height: 100%;width: 100%;border: none;text-align: center;">
					</span>
				</div>
				 <div class="blueCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;'>
                           <input class="blueCol"  id="Lagai2_${ teamBean.team_8 }_${ teamBean.teamId }"  name="Lagai2"  type="number"  step='0.01' min="0.00"  value="0.00"  onchange="changeValue(this.id,this.value);"   style="height: 100%;width: 100%;border: none;text-align: center;">
                     </span>
				</div>
			</div>
			<div style='float:left;width:auto;height:100%;padding: 0px;color: #fff;margin-left: 40px'>
				<div class="pinkCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>
					<input class="pinkCol"  id="Khai2_${ teamBean.team_8 }_${ teamBean.teamId }"  name="Khai2"   type="number"  step='0.01' min="0.00"  value="0.00"   onchange="changeValue(this.id,this.value);"   style="height: 100%;width: 100%;border: none;text-align: center;">

                    </span>

				</div>
				<div class="pinkCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;'>
                         <input class="pinkCol"  id="Khai1_${ teamBean.team_8 }_${ teamBean.teamId }"  name="Khai1"   type="number"  step='0.01' min="0.00"  value="0.00"   onchange="changeValue(this.id,this.value);"   style="height: 100%;width: 100%;border: none;text-align: center;">
                    </span>
				</div>
			</div>
		</div>
       </c:if>

	   <c:if test="${not empty teamBean.team_9 }">
		<div style='width:100%;height:18px;background:#353535;padding: 0px 5px;color:#fff;'>
			<div style='float: left;'>${ teamBean.team_9 }</div>
			<div style='float:right;'>
				<i class="fa fa-refresh" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
				<i class="fa fa-times" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
			</div>
		</div>
		<div style='width:100%;height:32px;background:#fff;padding: 0px;position: relative;'>
		<div style='float:left;width:auto;height:100%;padding: 0px;color: #fff;'>
				<div class="blueCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>
						<input class="blueCol" id="Lagai1_${ teamBean.team_9 }_${ teamBean.teamId }" name="Lagai1" type="number"  step='0.01' min="0.00"  value="0.00"  onchange="changeValue(this.id,this.value);" style="height: 100%;width: 100%;border: none;text-align: center;">
					</span>
				</div>
				 <div class="blueCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;'>
                           <input class="blueCol"  id="Lagai2_${ teamBean.team_9 }_${ teamBean.teamId }"  name="Lagai2"  type="number"  step='0.01' min="0.00"  value="0.00"  onchange="changeValue(this.id,this.value);"   style="height: 100%;width: 100%;border: none;text-align: center;">
                     </span>
				</div>
			</div>
			<div style='float:left;width:auto;height:100%;padding: 0px;color: #fff;margin-left: 40px'>
				<div class="pinkCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>
					<input class="pinkCol"  id="Khai2_${ teamBean.team_9 }_${ teamBean.teamId }"  name="Khai2"   type="number"  step='0.01' min="0.00"  value="0.00"   onchange="changeValue(this.id,this.value);"   style="height: 100%;width: 100%;border: none;text-align: center;">

                    </span>

				</div>
				<div class="pinkCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;'>
                         <input class="pinkCol"  id="Khai1_${ teamBean.team_9 }_${ teamBean.teamId }"  name="Khai1"   type="number"   step='0.01' min="0.00"  value="0.00"   onchange="changeValue(this.id,this.value);"   style="height: 100%;width: 100%;border: none;text-align: center;">
                    </span>
				</div>
			</div>
		</div>
       </c:if>

	   <c:if test="${not empty teamBean.team_10 }">
		<div style='width:100%;height:18px;background:#353535;padding: 0px 5px;color:#fff;'>
			<div style='float: left;'>${ teamBean.team_10 }</div>
			<div style='float:right;'>
				<i class="fa fa-refresh" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
				<i class="fa fa-times" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
			</div>
		</div>
		<div style='width:100%;height:32px;background:#fff;padding: 0px;position: relative;'>
		<div style='float:left;width:auto;height:100%;padding: 0px;color: #fff;'>
				<div class="blueCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>
						<input class="blueCol" id="Lagai1_${ teamBean.team_10 }_${ teamBean.teamId }" name="Lagai1" type="number"  step="0.01" min="0.00"  value="0.00"  onchange="changeValue(this.id,this.value);" style="height: 100%;width: 100%;border: none;text-align: center;">
					</span>
				</div>
				 <div class="blueCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;'>
                           <input class="blueCol"  id="Lagai2_${ teamBean.team_10 }_${ teamBean.teamId }"  name="Lagai2"  type="number"  step='0.01' min="0.00"  value="0.00"   onchange="changeValue(this.id,this.value);"   style="height: 100%;width: 100%;border: none;text-align: center;">
                     </span>
				</div>
			</div>
			<div style='float:left;width:auto;height:100%;padding: 0px;color: #fff;margin-left: 40px'>
				<div class="pinkCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>
					<input class="pinkCol"  id="Khai2_${ teamBean.team_10 }_${ teamBean.teamId }"  name="Khai2"   type="number"  step='0.01' min="0.00"  value="0.00"  onchange="changeValue(this.id,this.value);"   style="height: 100%;width: 100%;border: none;text-align: center;">

                    </span>

				</div>
				<div class="pinkCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;'>
                         <input class="pinkCol"  id="Khai1_${ teamBean.team_10 }_${ teamBean.teamId }"  name="Khai1"   type="number"   step='0.01' min="0.00"  value="0.00"   onchange="changeValue(this.id,this.value);"   style="height: 100%;width: 100%;border: none;text-align: center;">
                    </span>
				</div>
			</div>
		</div>
       </c:if>

	   <c:if test="${not empty teamBean.team_11 }">
		<div style='width:100%;height:18px;background:#353535;padding: 0px 5px;color:#fff;'>
			<div style='float: left;'>${ teamBean.team_11 }</div>
			<div style='float:right;'>
				<i class="fa fa-refresh" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
				<i class="fa fa-times" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
			</div>
		</div>
		<div style='width:100%;height:32px;background:#fff;padding: 0px;position: relative;'>
		<div style='float:left;width:auto;height:100%;padding: 0px;color: #fff;'>
				<div class="blueCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>
						<input class="blueCol" id="Lagai1_${ teamBean.team_11 }_${ teamBean.teamId }" name="Lagai1" type="number"  step="0.01" min="0.00"  value="0.00"  onchange="changeValue(this.id,this.value);" style="height: 100%;width: 100%;border: none;text-align: center;">
					</span>
				</div>
				 <div class="blueCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;'>
                           <input class="blueCol"  id="Lagai2_${ teamBean.team_11 }_${ teamBean.teamId }"  name="Lagai2"  type="number"  step='0.01' min="0.00"  value="0.00"  onchange="changeValue(this.id,this.value);"   style="height: 100%;width: 100%;border: none;text-align: center;">
                     </span>
				</div>
			</div>
			<div style='float:left;width:auto;height:100%;padding: 0px;color: #fff;margin-left: 40px'>
				<div class="pinkCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>
					<input class="pinkCol"  id="Khai2_${ teamBean.team_11 }_${ teamBean.teamId }"  name="Khai2"   type="number"  step='0.01' min="0.00"  value="0.00"   onchange="changeValue(this.id,this.value);"   style="height: 100%;width: 100%;border: none;text-align: center;">
                    </span>
				</div>
				<div class="pinkCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;'>
                         <input class="pinkCol"  id="Khai1_${ teamBean.team_11 }_${ teamBean.teamId }"  name="Khai1"   type="number"   step='0.01' min="0.00"  value="0.00"    onchange="changeValue(this.id,this.value);"   style="height: 100%;width: 100%;border: none;text-align: center;">
                    </span>
				</div>
			</div>
		</div>
       </c:if>
	   <c:if test="${not empty teamBean.team_12 }">
		<div style='width:100%;height:18px;background:#353535;padding: 0px 5px;color:#fff;'>
			<div style='float: left;'>${ teamBean.team_12 }</div>
			<div style='float:right;'>
				<i class="fa fa-refresh" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
				<i class="fa fa-times" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
			</div>
		</div>
		<div style='width:100%;height:32px;background:#fff;padding: 0px;position: relative;'>
		<div style='float:left;width:auto;height:100%;padding: 0px;color: #fff;'>
				<div class="blueCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>
						<input class="blueCol" id="Lagai1_${ teamBean.team_12 }_${ teamBean.teamId }" name="Lagai1" type="number"  step="0.01" min="0.00"  value="0.00"  onchange="changeValue(this.id,this.value);" style="height: 100%;width: 100%;border: none;text-align: center;">
					</span>
				</div>
				 <div class="blueCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;'>
                           <input class="blueCol"  id="Lagai2_${ teamBean.team_12 }_${ teamBean.teamId }"  name="Lagai2"  type="number"  step='0.01' min="0.00"  value="0.00"  onchange="changeValue(this.id,this.value);"   style="height: 100%;width: 100%;border: none;text-align: center;">
                     </span>
				</div>
			</div>
			<div style='float:left;width:auto;height:100%;padding: 0px;color: #fff;margin-left: 40px'>
				<div class="pinkCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>
					<input class="pinkCol"  id="Khai2_${ teamBean.team_12 }_${ teamBean.teamId }"  name="Khai2"   type="number"   step='0.01' min="0.00"  value="0.00"   onchange="changeValue(this.id,this.value);"   style="height: 100%;width: 100%;border: none;text-align: center;">
                    </span>
				</div>
				<div class="pinkCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;'>
                         <input class="pinkCol"  id="Khai1_${ teamBean.team_12 }_${ teamBean.teamId }"  name="Khai1"   type="number"   step='0.01' min="0.00"  value="0.00"    onchange="changeValue(this.id,this.value);"   style="height: 100%;width: 100%;border: none;text-align: center;">
                    </span>
				</div>
			</div>
		</div>
       </c:if>
	 <%--   <c:if test="${not empty teamBean.team_12 }">
		<div style='width:100%;height:18px;background:#353535;padding: 0px 5px;color:#fff;'>
			<div style='float: left;'>${ teamBean.team_12 }</div>
			<div style='float:right;'>
				<i class="fa fa-refresh" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
				<i class="fa fa-times" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
			</div>
		</div>
		<div style='width:100%;height:32px;background:#fff;padding: 0px;position: relative;'>
			<div style='float:left;width:auto;height:100%;padding: 0px;color: #fff;'>
				<div class="blueCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'><input class="blueCol" type="number"   step="0.01" min="0.00"  value="0.00"    style="height: 100%;width: 100%;border: none;text-align: center;"> </span>
					<span style='display: block;text-align: center;'><input class="blueCol" type="number" step='1'  style="height: 100%;width: 100%;border: none;text-align: center;"></span>
				</div>
				<div class="blueCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'><input class="blueCol" type="number"   step="0.01" min="0.00"  value="0.00"   style="height: 100%;width: 100%;border: none;text-align: center;"> </span>
					<span style='display: block;text-align: center;'><input class="blueCol" type="number" step='1'  style="height: 100%;width: 100%;border: none;text-align: center;"></span>
				</div>
			</div>
			<div style='float:left;width:auto;height:100%;padding: 0px;color: #fff;margin-left: 40px'>
				<div class="pinkCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'><input class="pinkCol" type="number"   step="0.01" min="0.00"  value="0.00"    style="height: 100%;width: 100%;border: none;text-align: center;"> </span>
					<span style='display: block;text-align: center;'><input class="pinkCol" type="number" step='1'  style="height: 100%;width: 100%;border: none;text-align: center;"></span>
				</div>
				<div class="pinkCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'><input class="pinkCol" type="number"   step="0.01" min="0.00"  value="0.00"    style="height: 100%;width: 100%;border: none;text-align: center;"> </span>
					<span style='display: block;text-align: center;'><input class="pinkCol" type="number" step='1'  style="height: 100%;width: 100%;border: none;text-align: center;"></span>
				</div>
			</div>
		</div>
       </c:if> --%>
<div style="width: 100%;height: 100%;margin: 5px;text-align: center;">
							<button class='btn btn-default'>Show</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        					<button class='btn btn-default'>Don't Show</button>

</div>
</div>
		<div style='width: 25%;height:calc(100% - 40px);float: left;'>
			<textarea rows="" id="teamRateComment" cols="" style='width:100%;height:100%' maxlength="300"></textarea>
		</div>
	</div>
</div>
<!-- End of For All team Rate Colored Panel -->
	<div class="footerContainer"><jsp:include page="footer.jsp"></jsp:include> </div>
    </div>
</body>
	<script src="<%=ctxPath%>/js/jquery-1.12.1.min.js" type="text/javascript"></script>
   	<script src="<%=ctxPath%>/js/datatables.min.js" type="text/javascript"></script>
 	<script src="<%=ctxPath%>/js/jquery-ui.min.js" type="text/javascript"></script>
 	<script src="<%=ctxPath%>/js/bootstrap.min.js" type="text/javascript"></script>
 	<script src="<%=ctxPath%>/js/global.js" type="text/javascript"></script>
    <script type="text/javascript">
    var modiFyBetId="";
    function submitMatchRate(){
    	alert("call");
    }
   
 
    
    $(function() {
    	$( ".adminOverlayPanelTblDiv,.adminOverlayPanelTblDiv2" ).draggable();
    });
    
    function minimizeWindow(obj){
    	$("#headerPopupInner").slideToggle();
    	$("#headerPopup").height("auto");
    	$(obj).toggleClass("fa-minus");
    }
    function closeWindow(id){
    	$("#"+id).remove();
    }
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
                "scrollY":  ($(window).height() - 330),
                "scrollX" : true,
                "scrollCollapse": true,
                "paging":         false,
                "info":     false,
                "filter":false
            });
            $('#adminRightPanel2Tbl').DataTable({
                "scrollY":  ($(window).height() - 200),
                "scrollX" : true,
                "scrollCollapse": true,
                "paging":         false,
                "info":     false,
                "filter":false
            });

        }
		function createDeclareModal(){
			$('#declare').modal();
			$('#declare').modal('show');
			 getAllSessionList();
			setTimeout(function(){
				$('#declareTbl').DataTable({
	                "scrollY":  ($(window).height() - 100),
	                "scrollCollapse": true,
	                "paging":         false,
	                "info":     false,
	                "filter":false
	            });
			},500);

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

        function selectSessionForRate(){
        	if(sessionSelectId ==="" && sessionSelectName===""){
        		alert("please select a session First")
        	}else{
        		
        		 $("#sessionRateFormNameId").val(sessionSelectName);
        		 $("#sessionRateFormSessionId").val(sessionSelectId);
        		 $("#sessionRateFormOkBtn").attr("disabled",false);
        		 createSessionDiv(sessionSelectId,sessionSelectName,"Comment");
        	}
        	  sessionSelectId="";
              sessionSelectName="";
        }

        function enterSessionBetRate(){
        	//alert( $("#sessionRateForm").serialize());
        	$.ajax({
    		    type: "get",
    		    async :false,
    		    data: $("#sessionRateForm").serialize(),
    		    url: "<%=ctxPath%>/admin/setAdminSessionRate?matchId="+$('#HiddenTeamId').val(),
    		    success: function(data){
    		    	var runs=$("#sessionRateFormRunsId").val();
    		    	var amount=$("#sessionRateFormAmountId").val();
    		    	var yesNo=$("#YesNoLabel").val(); 
    		    	alert(data);
    		    	createSessionHtML(runs,amount,yesNo);
    		    },
    			error:function() {
    				alert("Not Updated Try again.");
    			}
    		}); 
        }
 function createSessionHtML(runs,amount,yesNo){//alert(runs+"   "+amount+"   "+yesNo);
	var tableHtml="";
	runs=runs+4;
	if(yesNo==="yes"){
		for(var i=1;i<=runs;i++){//alert(i)	
			if(i<runs){
				tableHtml+="<tr><td>"+i+"</td><td>-"+amount+"</td></tr>";
			}else{
				tableHtml+="<tr><td>"+i+"</td><td>"+amount+"</td></tr>";
			}
		}
		$("#showRecs2 tbody").html(tableHtml);
	}else{
		for(var i=1;i<=runs;i++){	//alert("else"+i)
			if(i<runs){
				tableHtml+="<tr><td>"+i+"</td><td>"+amount+"</td></tr>";
			}else{
				tableHtml+="<tr><td>"+i+"</td><td><b> -"+amount+"</b></td></tr>";
			}
		}
		$("#showRecs2 tbody").html(tableHtml);
	}
	
} 
        function AutoChangeAmount(val,id1){
        	var amount=0;
        	// alert(id1);
        	if(val.contains("t")|| val.contains("T")){

        	var valAmt=val.replace("t","").replace("T","");
        	    amount=parseInt(valAmt)*10000;
        	}
        	else if(val.contains("l")|| val.contains("L")){
        	var valAmt=val.replace("l","").replace("L","");
        	    amount=parseInt(valAmt)*100000;
        	}
        	else  if(val.contains("M")|| val.contains("m")){
        	var valAmt=val.replace("M","").replace("m","");
        	    amount=parseInt(valAmt)*10000000;
        	}
        	else{
        	amount=val;
        	}
        	// alert(amount);
        	document.getElementById(id1.toString()).value=amount;
        	}
        function changeValueInc(thisid,thisVal,event){
        	var teamName=thisid.split("_")[1];
        	var teamId=thisid.split("_")[2];

             $("#Lagai1_"+teamName+"_"+teamId).val(parseFloat($("#Lagai1_"+teamName+"_"+teamId).val())+0.1);
             $("#Lagai2_"+teamName+"_"+teamId).val(parseFloat($("#Lagai2_"+teamName+"_"+teamId).val())+0.1);
             $("#Khai1_"+teamName+"_"+teamId).val(parseFloat( $("#Khai1_"+teamName+"_"+teamId).val())+0.1);
             $("#Khai2_"+teamName+"_"+teamId).val(parseFloat( $("#Khai2_"+teamName+"_"+teamId).val())+0.1);
             
        }
        function changeValueDec(thisid,thisVal,event){
        	var teamName=thisid.split("_")[1];
        	var teamId=thisid.split("_")[2];

             $("#Lagai1_"+teamName+"_"+teamId).val(parseFloat($("#Lagai1_"+teamName+"_"+teamId).val())-0.1);
             $("#Lagai2_"+teamName+"_"+teamId).val(parseFloat($("#Lagai2_"+teamName+"_"+teamId).val())-0.1);
             $("#Khai1_"+teamName+"_"+teamId).val(parseFloat( $("#Khai1_"+teamName+"_"+teamId).val())-0.1);
             $("#Khai2_"+teamName+"_"+teamId).val(parseFloat( $("#Khai2_"+teamName+"_"+teamId).val())-0.1);
             
        }
        function changeValue(thisid,thisVal){//alert("call"+thisid+"   "+thisVal);
        
        var teamName=thisid.split("_")[1];
    	var teamId=thisid.split("_")[2];
   		 if(thisid.contains("Lagai1_"))
        	{
        	 document.getElementById("Lagai1_"+teamName+"_"+teamId).stepUp();
        	 document.getElementById("Lagai2_"+teamName+"_"+teamId).stepUp();
        	 document.getElementById("Khai1_"+teamName+"_"+teamId).stepUp();
        	 document.getElementById("Khai2_"+teamName+"_"+teamId).stepUp();
        	}
   		 if(thisid.contains("Lagai2_"))
     	{
     	 document.getElementById("Lagai1_"+teamName+"_"+teamId).stepUp();
     	 document.getElementById("Lagai2_"+teamName+"_"+teamId).stepUp();
     	 document.getElementById("Khai1_"+teamName+"_"+teamId).stepUp();
     	 document.getElementById("Khai2_"+teamName+"_"+teamId).stepUp();
     	}if(thisid.contains("Khai2_"))
     	{
        	 document.getElementById("Lagai1_"+teamName+"_"+teamId).stepUp();
        	 document.getElementById("Lagai2_"+teamName+"_"+teamId).stepUp();
        	 document.getElementById("Khai1_"+teamName+"_"+teamId).stepUp();
        	 document.getElementById("Khai2_"+teamName+"_"+teamId).stepUp();
        	}
     	if(thisid.contains("Khai1_"))
     	{
     	 document.getElementById("Lagai1_"+teamName+"_"+teamId).stepUp();
     	 document.getElementById("Lagai2_"+teamName+"_"+teamId).stepUp();
     	 document.getElementById("Khai1_"+teamName+"_"+teamId).stepUp();
     	 document.getElementById("Khai2_"+teamName+"_"+teamId).stepUp();
     	}
        }
        // for session select name and id
        var sessionSelectId="";
        var sessionSelectName="";
        var DELAY = 700,clicks = 0,timer = null;
        
        $(document).ready(function(){
        	<%-- $('.submitMatchRate').keyup(function(e) {alert("up")});
        	$('.submitMatchRate').keydown(function(e) {alert("down")
        	        if (e.keyCode == 13) {
        	            e.preventDefault();
        	           // document.forms.
        	            var name= $(this).attr("name");
        	            var comment=$("#teamRateComment").val();
        	            alert($(this).attr("name")+"        comt="+comment)
        	             
        	           var lagai1= $("#Lagai1_"+name).val();
        	            var lagai2= $("#Lagai2_"+name).val();
        	            var khai2= $("#Khai2_"+name).val();
        	            var khai1=$("#Khai1_"+name).val(); 
        	            alert(lagai1+" @ "+lagai2+"   @ "+khai1+" @ "+khai2);
                    	$.ajax({
                		    type: "get",
                		    async :false,
                		    data:{"Khai2":khai2,"Khai1":khai1,"teamId":name.split("_")[1],"comment":comment,"teamName":name.split("_")[0],"Lagai1":lagai1,"Lagai2":lagai2},
                		    url: "<%=ctxPath%>/putTeamRateForMatch",
                		    success: function(data){
                		    	alert("data="+data);
                		    },
                			error:function() {
                				alert("Rate Not saved Please Try again.");
                			}
                		});
        	        }
        	    });
        	
        	
        	 --%>

        	    $("#showRecs1 tr").on("click", function(e){// alert($(this).attr("id"))
        	        clicks++;  //count clicks
        	        var thisObj=this;
        	        if(clicks === 1) {
        	            timer = setTimeout(function() {
        	                alert('Single Click'); //perform single-click action
        	                clicks = 0;  //after action performed, reset counter
        	                modifyCurrentBet(thisObj);
        	            }, DELAY);
        	        } else {
        	            clearTimeout(timer);  //prevent single-click action
        	          //  alert('Double Click');  //perform double-click action
        	            clicks = 0;  //after action performed, reset counter
        	            showIndividualRateModel();
        	        }
        	    })
        	    .on("dblclick", function(e){
        	        e.preventDefault();  //cancel system double-click event
        	        showIndividualRateModel();
        	    });


           

           $('.blueCol').on('keyup', function(event){
        	   changeValueInc($(this).attr("id"),$(this).Val(),event);
            }); 

           $('.blueCol').on('keydown', function(event){
            	
            	 changeValueDec($(this).attr("id"),$(this).Val(),event);
            }); 

        /* For select session checkbox like radio button for rate  */
        $("body").on("click",".sessionSelectCheckClass",function(){
				var id=$(this).attr("id").replace("CHk","");
				var name=$(this).attr("name");
				sessionSelectId=id;
				sessionSelectName=name;
				 var group = "input:checkbox[class='sessionSelectCheckClass']";
				 $(group).prop("checked",false);
				 $(this).prop("checked",true);
				 $("#selectSessionButton").attr("disabled",false);
         });
        
        
        /* For select Commision  checkbox like radio button   */
        $("body").on("click",".CommissionClassChkBox",function(){
        	 var checked = $(this).is(':checked');
		    $(".CommissionClassChkBox").prop('checked',false);
		    if(checked) {
		        $(this).prop('checked',true);
		    } 
         });
        

            adjustments();
        	/*  $("body").on("dblclick","#showRecs1 tr",function(){
        		 $('#individualReport').modal();
     			$('#individualReport').modal('show');
        	 }); */


    

            $("#showRecs1x tr").click(function(){
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
        
        function modifyCurrentBet(thisobj){
        	
        	 $("#ModifyExistingBet").attr("disabled",false);
        	  modiFyBetId=$(thisobj).attr("id").split("_")[1];
        	// alert(thisobj.);
        	   alert($(thisobj).children().html());
        	  
        
        }
        
        function modifyExistingSelectedBet(){
        	if(modiFyBetId!==""){
        		var rate= $("#tdbetRate_"+modiFyBetId).html();
        		var amt=$("#tdbetAmount_"+modiFyBetId).html();
        		var type= $("#tdbetType_"+modiFyBetId).html();
        		var teamName=$("#tdonTeam_"+modiFyBetId).html();
        		var userId= $("#tduserId_"+modiFyBetId).html();
        		$("#betRateEnter").val(rate);
        		$("#betRateAmount").val(amt);
        		$("#betMoodEnter option").attr('selected',false);
        		$("#SelectBetEditUser option").attr('selected',false);
        		$("#betMoodEnter option").attr('selected',false);
        		$("#betMoodEnter option[value="+type+"]").attr('selected','selected');
        		$("#teamIdEnterAMt option[value="+teamName+"]").attr('selected','selected');
        		$("#SelectBetEditUser option[value="+userId+"]").attr('selected','selected');
        		modiFyBetId="";
        		 $("#ModifyExistingBet").attr("disabled",true);
        	}else{
        		alert("please select Bet First");
        	}
        	
        }
        
        
        
        function showIndividualRateModel(){
            $('#individualReport').modal();
  			$('#individualReport').modal('show');
        }
        
        
        
        $(window).load(function(){
    		$(".adminMnu").removeClass("active");
        	$("#adminPage1").addClass("active");
        	crateBetAdminHtml();
    	});

        function EnterBetAmountByAdmin(){
        	var teamId=$("#teamIdEnterAMt").val();
        	var mode=$("#betMoodEnter").val();
        	var betRate=$("#betRateEnter").val();
        	var onteam=$("#teamIdEnterAMt").val();
        	alert(onteam);
        	
        	var team1Amt=$("#betRateAmount").val();
        	var userId=$("#SelectBetEditUser").val();
        	/* var team2Amt=$("#team2EnterAmount").val(); */
        	$.ajax({
    		    type: "post",
    		    async :false,
    		    data:{"matchId":teamId,"team1Rate":team1Amt,"onteam":onteam,"mode":mode,"rate":betRate,"userId":userId},
    		    url: "<%=ctxPath%>/adminEnterValueForMatch",
    		    success: function(data){
    		    	alert(data);
    		    },
    			error:function() {
    				alert("Not Updated Try again.");
    			}
    		});
        }


        function sessionCreateForMatch(){
			var sessionCreateMatchId=$("#sessionCreateMatchId").val();
			var sessionCreateCommentId=$("#sessionCreateCommentId").val();
			var sessionCreateMeterId=$("#sessionCreateMeterId").val();
			//alert(sessionCreateCommentId+"           "+sessionCreateMatchId);
      //  alert($("#sessionCreateForm").serialize())
	       $.ajax({
			    type: "post",
			    async :false,
			    data:{"matchId":sessionCreateMatchId,"comment":sessionCreateCommentId,"meter":sessionCreateMeterId},
			    url: "<%=ctxPath%>/createSessionForMatch",
			    success: function(data){
			    	alert(data);
			    },
				error:function() {
					alert("Session Not Created Please Try again.");
				}
			});
        }

      function  getSessionMatchList(){
    	  var sessionCreateMatchId=$("#sessionCreateMatchId").val();
    	  //alert(sessionCreateMatchId);
    	  $.ajax({
  		    type: "post",
  		    async :false,
  		    data:{"matchId":sessionCreateMatchId},
  		    url: "<%=ctxPath%>/getSessionForMatch",
  		    success: function(data){//alert(data)
  		    	$("#SelectModelSessionId").html(data);
  		    	//  createSessionDiv(sessionCreateMatchId,"name","description");
  		       
  		       
  		    },
  			error:function() {
  				alert("Session Not Created Please Try again.");

  			}
  		});


      }




      function  getAllSessionList(){
    	//  alert("getAllSession");
    	  $.ajax({
  		    type: "post",
  		    async :false,
  		    url: "<%=ctxPath%>/getAllSession",
  		    success: function(data){
  		    	//alert(data)
				var html="";
  		    	var dataParse=JSON.parse(data);
  		    	var keys=Object.keys(dataParse);
  		    	for(var i=0;i<keys.length;i++){
				var sessiondata=JSON.parse(dataParse[i]);
  		    		//alert(sessiondata["sessionComment"])
  		    		html+="<tr><td>Code</td><td>"+sessiondata["sessionCreatedDate"]+"</td><td>"+sessiondata["sessionComment"]+"</td><td>Result</td><td>Team1</td><td>Team2</td><td>Team3</td><td>Won</td></tr>";
  		    	}
  		    //	html+="<tr><td>Code</td><td>Date</td><td>Comment</td><td>Result</td><td>Team1</td><td>Team2</td><td>Team3</td><td>Won</td></tr>";
  		    	$("#AllSessionListId").html(html);
  		    },
  			error:function() {
  				alert("Session Not Created Please Try again.");

  			}
  		});


      }


    </script>
    <!-- This script for Admin Bet Accept and Show -->
    <script type="text/javascript">
    window.setInterval(crateBetAdminHtml, 3000);
    window.setInterval(getTotalOfTeamFromTeamBetPlace, 2000);
    
    function getTotalOfTeamFromTeamBetPlace(){
    	
    var teamId=$("#HiddenTeamId").val();
   		$.ajax({
    	    type: "get",
    	    async:false,
    	    data:{"teamId":teamId},
    	    url: "<%=ctxPath%>/getTotalOfTeamFromTeamBetPlace",
    	    success: function(data){//alert(data)
    	    	if(data==="" || data=="undefined"){
    	    		
    	    	}else{
    	     //try{
    	    	var jsonParseData=JSON.parse(data);
    	    	var keys=Object.keys(jsonParseData);
    	    	
    	    		//for(var i=0;i<keys.length;i++){
    	    			//alert(jsonParseData["team_1"])
    	    			var team1=jsonParseData["team_1"];
    	    			var team2=jsonParseData["team_2"];
    	    			var team3=jsonParseData["team_3"];
    	    			var team4=jsonParseData["team_4"];
    	    			var team5=jsonParseData["team_5"];
    	    			var team6=jsonParseData["team_6"];
    	    			var team7=jsonParseData["team_7"];
    	    			var team8=jsonParseData["team_8"];
    	    			var team9=jsonParseData["team_9"];
    	    			var team10=jsonParseData["team_10"];
    	    			var team11=jsonParseData["team_11"];
    	    			var team12=jsonParseData["team_12"];
	    	    		/* var teamName=keys[i];
    	    			var value=jsonParseData[keys[i]]; */
    	    			//alert($("#Total_"+teamName+"_"+teamId).val())
    	    			$("#Total_"+team1+"_"+teamId).val(jsonParseData["Team1_Amount1"]);
    	    			$("#Total_"+team2+"_"+teamId).val(jsonParseData["Team_Amount2"]);
    	    			$("#Total_"+team3+"_"+teamId).val(jsonParseData["Team1_Amount3"]);
    	    			 $("#Total_"+team4+"_"+teamId).val(jsonParseData["Team1_Amoun4"]);
    	    			$("#Total_"+team5+"_"+teamId).val(jsonParseData["Team1_Amount5"]);
    	    			$("#Total_"+team6+"_"+teamId).val(jsonParseData["Team1_Amount6"]);
    	    			$("#Total_"+team7+"_"+teamId).val(jsonParseData["Team1_Amount7"]);
    	    			$("#Total_"+team8+"_"+teamId).val(jsonParseData["Team1_Amount8"]);
    	    			$("#Total_"+team9+"_"+teamId).val(jsonParseData["Team1_Amount9"]);
    	    			$("#Total_"+team10+"_"+teamId).val(jsonParseData["Team1_Amount10"]);
    	    			$("#Total_"+team11+"_"+teamId).val(jsonParseData["Team1_Amount11"]);
    	    			$("#Total_"+team12+"_"+teamId).val(jsonParseData["Team1_Amount12"]); 
					}
    	     //}catch(ex){}
    	    },
    		error:function() {
    			alert("Sorry No User Exist with this  Id.");
    		}
    	});
    }


    
    
    function crateBetAdminHtml(){
    	$("#acceptAdminHtml").html("");
		$("#adminrightpanelTbody").html("");
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
			$("#adminrightpanelTbody").append(html);
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
var sessionDivArray=[];
    function createSessionDiv(id,name,description){
    	

		if(sessionDivArray.indexOf(id)>=0){
			
		}else{
			$(".adminOverlayPanelTblDiv2").remove();
		 	var html="<div id='Div_"+id+"' style='position: relative;'   class='adminOverlayPanelTblDiv2'>";
	    	html+="<table class='table table-striped table-bordered' style='margin:0px;'>";
	    	html+="<tr><td colspan='3'>"+name+"</td><td>"+description+"</td></tr>";
	    	html+="<tr><td>Type</td><td>RATE</td><td>Runs</td><td colspan='2' rowspan='3'><textarea   class='form-control'></textarea></td></tr>";
	    	html+="<tr><td>No</td><td ><input style='width:55px;'  type='number' step='0.01' max='9' min='0.1' class='form-control'></td><td><input  style='width:50px;' type='number' step='1'  min='0' class='form-control'></td></tr>";
	    	html+="<tr><td>Yes</td><td><input  style='width:55px;' type='number' step='0.01' max='9' min='0.1' class='form-control'></td><td><input  style='width:50px;' type='number' step='1'  min='0' class='form-control'></td></tr>";
	    	html+="<tr><td colspan='4'><button class='btn btn-default'>Show</button><button class='btn btn-default'>Don't Show</button></td></tr>";
	    	html+="</table></div>";
	    	$("#adminOverlayPanel").append(html);
	    	$( ".adminOverlayPanelTblDiv,.adminOverlayPanelTblDiv2" ).draggable();
			sessionDivArray.push(id);
			
		}
		
   
    }
    
    
    
    </script>
</html>
