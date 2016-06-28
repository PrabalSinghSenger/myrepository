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

				<c:choose>
					<c:when test="${not empty teamBean.team_1 and not empty teamBean.team_2 and  empty teamBean.team_3 }">
						<div class="sectionFirst">
							<div class="box1"
								style='width: 210px; border: 1px solid #d5d5d5; padding: 0px;'>
								<c:if test="${not empty teamBean.team_1 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;'
										name='team_1' type="text" value="${teamBean.team_1 }"
										readonly="readonly" /> <input class='form-control'
										style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control'
										style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>
								<c:if test="${not empty teamBean.team_2 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;'
										name='team_1' type="text" value="${teamBean.team_2 }"
										readonly="readonly" /> <input class='form-control'
										style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control'
										style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>

							</div>
							<!-- <div style='width: 1px;border: 1px solid #888;height: 80%;float: left;margin-top: 5px;'></div> -->
						<%-- 	<div class="box1"
								style='width: 210px; border: 1px solid #d5d5d5; padding: 0px;'>
								<c:if test="${not empty teamBean.team_1 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;'
										name='team_1' type="text" value="${teamBean.team_1 }"
										readonly="readonly" /> <input class='form-control'
										style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control'
										style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>
								<c:if test="${not empty teamBean.team_2 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;'
										name='team_1' type="text" value="${teamBean.team_2 }"
										readonly="readonly" /> <input class='form-control'
										style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control'
										style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>
							</div> --%>
							<!-- <div style='width: 1px;border: 1px solid #888;height: 80%;float: left;margin-top: 5px;'></div> -->
							<div class="box2" style="width: 210px; float: left; padding: 0px; margin: 0px;border: 1px solid #d5d5d5;">
								<span style='width: 100%; display: block;'>Actual Book <input
									type="checkbox" style="float: right;"></span> <span
									style='width: 100%; display: block;'>Without Com <input
									type="checkbox" style="float: right;"></span> <span
									style='width: 100%; display: block;'>With Patti <input
									type="checkbox" style="float: right;"></span>
								<!--  <span style='width: 100%;display: block;'>Auto accept bids of Match <input type="checkbox" style="float: right;"></span>
                            <span style='width: 100%;display: block;'>Auto accept session bids <input type="checkbox" style="float: right;"></span> -->
							</div>
							<!-- <div style='width: 1px;border: 1px solid #888;height: 80%;float: left;margin-top: 5px;'></div> -->
							<div class="box3"
								style='float: right; width: 160px; border: 1px solid #d5d5d5;'>
								<span class="fllt"
									style='float: left; display: block; width: 45px; height: 25px; margin: 3px 0px;'>AVG
									L</span> <input class="form-control blueBkCol"
									style='float: left; width: 95px; height: 25px; margin: 3px 0px;'
									name='avgLgi' type="number" step="0.01" /> <span
									style='float: left; display: block; width: 45px; height: 25px; margin: 3px 0px;'>AVG
									K</span> <input class="form-control yellowBkCol"
									style='float: left; width: 95px; height: 25px; margin: 3px 0px;'
									name='avgKhi' type="number" step="0.01" />
							</div>
							<!-- <div style='width: 1px;border: 1px solid #888;height: 80%;float: left;margin-top: 5px;'></div> -->
							<!-- <div class="box4">

                    </div> -->
						</div>

					</c:when>
					<c:when
						test="${not empty teamBean.team_1 and not empty teamBean.team_2 and not empty teamBean.team_3  and  empty teamBean.team_4 }">

						<div class="sectionFirst">
							<div class="box1"
								style='width: 210px; border: 1px solid #d5d5d5; padding: 0px;'>
								<c:if test="${not empty teamBean.team_1 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;'
										name='team_1' type="text" value="${teamBean.team_1 }" /> <input
										class='form-control'
										style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control'
										style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>
								<c:if test="${not empty teamBean.team_2 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;'
										name='team_1' type="text" value="${teamBean.team_2 }" /> <input
										class='form-control'
										style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control'
										style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>

								<c:if test="${not empty teamBean.team_3 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;'
										name='team_1' type="text" value="${teamBean.team_3 }" /> <input
										class='form-control'
										style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control'
										style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>


							</div>
							<!-- <div style='width: 1px;border: 1px solid #888;height: 80%;float: left;margin-top: 5px;'></div> -->
							<div class="box1"
								style='width: 210px; border: 1px solid #d5d5d5; padding: 0px;'>
								<c:if test="${not empty teamBean.team_1 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;'
										name='team_1' type="text" value="${teamBean.team_1 }" /> <input
										class='form-control'
										style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control'
										style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>
								<c:if test="${not empty teamBean.team_2 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;'
										name='team_1' type="text" value="${teamBean.team_2 }" /> <input
										class='form-control'
										style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control'
										style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>

								<c:if test="${not empty teamBean.team_3 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;'
										name='team_1' type="text" value="${teamBean.team_3 }" /> <input
										class='form-control'
										style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control'
										style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>

							</div>
							<!-- <div style='width: 1px;border: 1px solid #888;height: 80%;float: left;margin-top: 5px;'></div> -->
							<div class="box2"
								style="width: 210px; float: left; padding: 0px; margin: 0px;">
								<span style='width: 100%; display: block;'>Actual Book <input
									type="checkbox" style="float: right;"></span> <span
									style='width: 100%; display: block;'>Without Com <input
									type="checkbox" style="float: right;"></span> <span
									style='width: 100%; display: block;'>With Patti <input
									type="checkbox" style="float: right;"></span>
								<!--  <span style='width: 100%;display: block;'>Auto accept bids of Match <input type="checkbox" style="float: right;"></span>
                            <span style='width: 100%;display: block;'>Auto accept session bids <input type="checkbox" style="float: right;"></span> -->
							</div>
							<!-- <div style='width: 1px;border: 1px solid #888;height: 80%;float: left;margin-top: 5px;'></div> -->
							<div class="box3" style='float: right; width: 160px; border: 1px solid #d5d5d5;'>
									 <span class="fllt"	style='float: left; display: block; width: 45px; height: 25px; margin: 3px 0px;'>AVG L</span>
									 <input class="form-control blueBkCol" style='float: left; width: 95px; height: 25px; margin: 3px 0px;' name='avgLgi' type="number" step="0.01" />
									 <span style='float: left; display: block; width: 45px; height: 25px; margin: 3px 0px;'>AVG K</span>
									 <input class="form-control yellowBkCol"style='float: left; width: 95px; height: 25px; margin: 3px 0px;' name='avgKhi' type="number" step="0.01" />
							</div>
						</div>


					</c:when>
					<c:otherwise>
						<div class="sectionFirst">
							<div class="box1"
								style='width: 210px; border: 1px solid #d5d5d5; padding: 0px;'>
								<c:if test="${not empty teamBean.team_1 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;'
										name='team_1' type="text" value="${teamBean.team_1 }"
										readonly="readonly" /> <input class='form-control'
										style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control'
										style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>
								<c:if test="${not empty teamBean.team_2 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;'
										name='team_1' type="text" value="${teamBean.team_2 }"
										readonly="readonly" /> <input class='form-control'
										style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control'
										style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>
								<c:if test="${not empty teamBean.team_3 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;'
										name='team_1' type="text" value="${teamBean.team_3 }"
										readonly="readonly" /> <input class='form-control'
										style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control'
										style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>
								<c:if test="${not empty teamBean.team_4 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;'
										name='team_1' type="text" value="${teamBean.team_4 }"
										readonly="readonly" /> <input class='form-control'
										style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control'
										style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>
							</div>
							<!-- <div style='width: 1px;border: 1px solid #888;height: 80%;float: left;margin-top: 5px;'></div> -->
							<div class="box2"
								style='width: 210px; border: 1px solid #d5d5d5; padding: 0px;'>
								<c:if test="${not empty teamBean.team_5 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;'
										name='team_1' type="text" value="${teamBean.team_5 }"
										readonly="readonly" /> <input class='form-control'
										style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control'
										style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>
								<c:if test="${not empty teamBean.team_6 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;'
										name='team_1' type="text" value="${teamBean.team_6 }"
										readonly="readonly" /> <input class='form-control'
										style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control'
										style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>

								<c:if test="${not empty teamBean.team_7 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;'
										name='team_1' type="text" value="${teamBean.team_7 }"
										readonly="readonly" /> <input class='form-control'
										style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control'
										style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>

								<c:if test="${not empty teamBean.team_8 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;'
										name='team_1' type="text" value="${teamBean.team_8 }"
										readonly="readonly" /> <input class='form-control'
										style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control'
										style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>
							</div>
							<!-- <div style='width: 1px;border: 1px solid #888;height: 80%;float: left;margin-top: 5px;'></div> -->
							<div class="box2" style="width: 210px; float: left; padding: 0px; margin: 0px; border: 1px solid #d5d5d5;">
								<c:if test="${not empty teamBean.team_9 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;'
										name='team_1' type="text" value="${teamBean.team_9 }"
										readonly="readonly" /> <input class='form-control'
										style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control'
										style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>
								<c:if test="${not empty teamBean.team_10 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;'
										name='team_1' type="text" value="${teamBean.team_10 }"
										readonly="readonly" /> <input class='form-control'
										style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control'
										style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>

								<c:if test="${not empty teamBean.team_11 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;'
										name='team_1' type="text" value="${teamBean.team_11 }"
										readonly="readonly" /> <input class='form-control'
										style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control'
										style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>

								<c:if test="${not empty teamBean.team_12 }">
									<span style='display: block; width: 100%; margin: 0px;'>
										<input class="form-control" style='float: left; margin: 2px;'
										name='team_1' type="text" value="${teamBean.team_12 }"
										readonly="readonly" /> <input class='form-control'
										style='float: left; margin: 2px; width: 95px;' type='text'>
										<input class='form-control'
										style='float: left; margin: 2px; width: 30px;' type='text'>
									</span>
								</c:if>
							</div>
							<div class="box3" style='float: right; width: 160px; border: 1px solid #d5d5d5;'>
								<span style='width: 100%; display: block;'>Actual Book <input type="checkbox" style="float: right;"></span>
								<span style='width: 100%; display: block;'>Without Com <input	type="checkbox" style="float: right;"></span>
								<span style='width: 100%; display: block;'>With Patti <input type="checkbox" style="float: right;"></span>
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
                    <span>Amount</span>
                    <span>Mode</span>
                    <span>Team</span>
                    <span>Name</span>
                    <!-- <span>Team1</span> -->
                    <!-- <span>Team2</span> -->
                </div>
                <div class="bot">
                    <input class='form-control'  id="betRateEnter"  type="number" step="0.01"/>
                    <input class='form-control'  id="betRateEnter"  type="text" />
                    <select id="betMoodEnter" name="mode" class='form-control'>
                        <option value='L'>L</option>
                        <option value="K">K</option>
                    </select>
                    <select id="teamIdEnterAMt" class='form-control'>
	                   <%--  <c:forEach var="team" items="${teamList }"> --%>
	                       <option value="${teamBean.teamId }"> ${teamBean.team_1 }</option>
	                       <option value="${teamBean.teamId }"> ${teamBean.team_2 }</option>
	                  <%--   </c:forEach> --%>
                    </select>
                    <select class='form-control'>
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
                    <input class='form-control' type="text"/>
                    <input class='form-control' type="number" step="0.01"/>
                    <input class='form-control' type="text"/>
                    <input class='form-control' type="text"/>
                    <select id="YesNoLabel" class='form-control'>
                        <option value="yes">Yes</option>
                        <option value="no">No</option>
                    </select>
                    <select class='form-control'>
                        <c:forEach var="user" items="${userList }">
                    	   <option value="${user.userId }">${user.userName }-(${user.userId })</option>
                   		 </c:forEach>
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
	            <span style='width: 100%;display: block;'>Actual Book <input type="checkbox" style="float: right;"></span>
	            <span style='width: 100%;display: block;'>Without Com <input type="checkbox" style="float: right;"></span>
	            <span style='width: 100%;display: block;'>With Patti <input type="checkbox" style="float: right;"></span>
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
        			<tbody>
        				<tr><th>Sno</th><th>Rate</th><th>Amount</th><th>Mode</th><th>Fav</th><th>Name</th><th>Total Win</th><th>Total Loss</th><th>Accept</th><td>Decline</th></tr>
        				<tr><th>Sno</th><th>Rate</th><th>Amount</th><th>Mode</th><th>Fav</th><th>Name</th><th>Total Win</th><th>Total Loss</th><th>Accept</th><td>Decline</th></tr>
        				<tr><th>Sno</th><th>Rate</th><th>Amount</th><th>Mode</th><th>Fav</th><th>Name</th><th>Total Win</th><th>Total Loss</th><th>Accept</th><td>Decline</th></tr>
        				<tr><th>Sno</th><th>Rate</th><th>Amount</th><th>Mode</th><th>Fav</th><th>Name</th><th>Total Win</th><th>Total Loss</th><th>Accept</th><td>Decline</th></tr>
        				<tr><th>Sno</th><th>Rate</th><th>Amount</th><th>Mode</th><th>Fav</th><th>Name</th><th>Total Win</th><th>Total Loss</th><th>Accept</th><td>Decline</th></tr>
        				<tr><th>Sno</th><th>Rate</th><th>Amount</th><th>Mode</th><th>Fav</th><th>Name</th><th>Total Win</th><th>Total Loss</th><th>Accept</th><td>Decline</th></tr>
        				<tr><th>Sno</th><th>Rate</th><th>Amount</th><th>Mode</th><th>Fav</th><th>Name</th><th>Total Win</th><th>Total Loss</th><th>Accept</th><td>Decline</th></tr>
        				<tr><th>Sno</th><th>Rate</th><th>Amount</th><th>Mode</th><th>Fav</th><th>Name</th><th>Total Win</th><th>Total Loss</th><th>Accept</th><td>Decline</th></tr>
        				<tr><th>Sno</th><th>Rate</th><th>Amount</th><th>Mode</th><th>Fav</th><th>Name</th><th>Total Win</th><th>Total Loss</th><th>Accept</th><td>Decline</th></tr>
        				<tr><th>Sno</th><th>Rate</th><th>Amount</th><th>Mode</th><th>Fav</th><th>Name</th><th>Total Win</th><th>Total Loss</th><th>Accept</th><td>Decline</th></tr>
        				<tr><th>Sno</th><th>Rate</th><th>Amount</th><th>Mode</th><th>Fav</th><th>Name</th><th>Total Win</th><th>Total Loss</th><th>Accept</th><td>Decline</th></tr>
        				<tr><th>Sno</th><th>Rate</th><th>Amount</th><th>Mode</th><th>Fav</th><th>Name</th><th>Total Win</th><th>Total Loss</th><th>Accept</th><td>Decline</th></tr>
        				<tr><th>Sno</th><th>Rate</th><th>Amount</th><th>Mode</th><th>Fav</th><th>Name</th><th>Total Win</th><th>Total Loss</th><th>Accept</th><td>Decline</th></tr>
        				<tr><th>Sno</th><th>Rate</th><th>Amount</th><th>Mode</th><th>Fav</th><th>Name</th><th>Total Win</th><th>Total Loss</th><th>Accept</th><td>Decline</th></tr>
        				<tr><th>Sno</th><th>Rate</th><th>Amount</th><th>Mode</th><th>Fav</th><th>Name</th><th>Total Win</th><th>Total Loss</th><th>Accept</th><td>Decline</th></tr>
        				<tr><th>Sno</th><th>Rate</th><th>Amount</th><th>Mode</th><th>Fav</th><th>Name</th><th>Total Win</th><th>Total Loss</th><th>Accept</th><td>Decline</th></tr>
        			</tbody>
        		</table>
        	</div>
        </div>
        <!-- <span id='showOverlayBtn' class='showBtn' onclick='showHideOverlay(1)'><i class='fa fa-chevron-left'></i></span> -->
        <div id='adminOverlayPanel'>
        	<!-- <span class='hideBtn' onclick='showHideOverlay(0)'><i class='fa fa-chevron-right'></i></span> -->
 	      	<div class='adminOverlayPanelTblDiv'>
        		<table class='table table-striped table-bordered ' style='margin:0px;'>
        			<tr>
        				<td>India 1st ODI</td>
        				<td>Lagai</td>
        				<td>Khai</td>
        				<td>Comments</td>
        			</tr>
        			<tr>
        				<td>INDIA</td>
        				<td><input type='text' class='form-control' style='width: 50px'></td>
        				<td><input type='text' class='form-control' style='width: 50px'></td>
        				<td rowspan='2'></td>
        			</tr>
        			<tr>
        				<td>SRI LANKA</td>
        				<td><input type='text' class='form-control' style='width: 50px'></td>
        				<td><input type='text' class='form-control' style='width: 50px'></td>
        			</tr>
        			<tr>
        				<td colspan='4'>
        					<button class='btn btn-default'>Show</button>
        					<button class='btn btn-default'>Don't Show</button>
       					</td>
        			</tr>
       			</table>
        	</div>
        	<div class='adminOverlayPanelTblDiv2'>
        		<table class='table table-striped table-bordered' style='margin:0px;'>
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
        				<td><input type='text' class="form-control"></td>
        				<td><input type='text' class="form-control"></td>
        				<td><input type='text' class="form-control"></td>
        				<td></td>
        			</tr>
        			<tr>
        				<td colspan='4'>
        					<button class='btn btn-default'>Show</button>
        					<button class='btn btn-default'>Don't Show</button>
       					</td>
        			</tr>
       			</table>
    		</div>
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
        <button type="button" class="btn btn-primary" data-dismiss="modal">Ok</button>
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
	<div id='headerPopupInner' style='height:138px;width:100%;box-shadow:0px 0px 2px 2px #999;'>
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
				<c:if test="${not empty teamBean.team_1 }">

		<div style='width:100%;height:18px;background:#353535;padding: 0px 5px;color:#fff;'>
			<div style='float: left;'>${teamBean.team_1  }</div>
			<div style='float:right;'>
				<i class="fa fa-refresh" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
				<i class="fa fa-times" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
			</div>
		</div>
		<div style='width:100%;height:30px;background:#fff;padding: 0px 5px;position: relative;'>
			<div style='float:left;width:48%;height:100%;padding: 0px;color: #fff;'>
				<div class="blueCol" style='display:block;width:50px;float:right;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="blueCol" style='display:block;width:50px;float:right;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="blueCol" style='display:block;width:50px;float:right;border-right: 1px solid #000;border-left: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
			</div>
			<div style='float:right;width:48%;height:100%;padding: 0px;color: #fff;'>
				<div class="pinkCol" style='display:block;width:50px;float:left;border-right: 1px solid #000;border-left: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="pinkCol" style='display:block;width:50px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="pinkCol" style='display:block;width:50px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
			</div>
		</div>
       </c:if>
	   <c:if test="${not empty teamBean.team_2 }">
		<div style='width:100%;height:18px;background:#353535;padding: 0px 5px;color:#fff;'>
			<div style='float: left;'>${teamBean.team_2  }</div>
			<div style='float:right;'>
				<i class="fa fa-refresh" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
				<i class="fa fa-times" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
			</div>
		</div>
		<div style='width:100%;height:30px;background:#fff;padding: 0px 5px;position: relative;'>
			<div style='float:left;width:48%;height:100%;padding: 0px;color: #fff;'>
				<div class="blueCol" style='display:block;width:50px;float:right;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="blueCol" style='display:block;width:50px;float:right;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="blueCol" style='display:block;width:50px;float:right;border-right: 1px solid #000;border-left: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
			</div>
			<div style='float:right;width:48%;height:100%;padding: 0px;color: #fff;'>
				<div class="pinkCol" style='display:block;width:50px;float:left;border-right: 1px solid #000;border-left: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="pinkCol" style='display:block;width:50px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="pinkCol" style='display:block;width:50px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
			</div>
		</div>

       </c:if>
	   <c:if test="${not empty teamBean.team_3 }">
		<div style='width:100%;height:18px;background:#353535;padding: 0px 5px;color:#fff;'>
			<div style='float: left;'>${teamBean.team_3 }</div>
			<div style='float:right;'>
				<i class="fa fa-refresh" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
				<i class="fa fa-times" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
			</div>
		</div>
		<div style='width:100%;height:30px;background:#fff;padding: 0px 5px;position: relative;'>
			<div style='float:left;width:48%;height:100%;padding: 0px;color: #fff;'>
				<div class="blueCol" style='display:block;width:50px;float:right;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="blueCol" style='display:block;width:50px;float:right;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="blueCol" style='display:block;width:50px;float:right;border-right: 1px solid #000;border-left: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
			</div>
			<div style='float:right;width:48%;height:100%;padding: 0px;color: #fff;'>
				<div class="pinkCol" style='display:block;width:50px;float:left;border-right: 1px solid #000;border-left: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="pinkCol" style='display:block;width:50px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="pinkCol" style='display:block;width:50px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
			</div>
		</div>

       </c:if>
	   <c:if test="${not empty teamBean.team_4 }">
		<div style='width:100%;height:18px;background:#353535;padding: 0px 5px;color:#fff;'>
			<div style='float: left;'>${teamBean.team_4  }</div>
			<div style='float:right;'>
				<i class="fa fa-refresh" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
				<i class="fa fa-times" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
			</div>
		</div>
		<div style='width:100%;height:30px;background:#fff;padding: 0px 5px;position: relative;'>
			<div style='float:left;width:48%;height:100%;padding: 0px;color: #fff;'>
				<div class="blueCol" style='display:block;width:50px;float:right;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="blueCol" style='display:block;width:50px;float:right;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="blueCol" style='display:block;width:50px;float:right;border-right: 1px solid #000;border-left: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
			</div>
			<div style='float:right;width:48%;height:100%;padding: 0px;color: #fff;'>
				<div class="pinkCol" style='display:block;width:50px;float:left;border-right: 1px solid #000;border-left: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="pinkCol" style='display:block;width:50px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="pinkCol" style='display:block;width:50px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
			</div>
		</div>

       </c:if>
	   <c:if test="${not empty teamBean.team_5 }">
		<div style='width:100%;height:18px;background:#353535;padding: 0px 5px;color:#fff;'>
			<div style='float: left;'>${teamBean.team_5  }</div>
			<div style='float:right;'>
				<i class="fa fa-refresh" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
				<i class="fa fa-times" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
			</div>
		</div>
		<div style='width:100%;height:30px;background:#fff;padding: 0px 5px;position: relative;'>
			<div style='float:left;width:48%;height:100%;padding: 0px;color: #fff;'>
				<div class="blueCol" style='display:block;width:50px;float:right;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="blueCol" style='display:block;width:50px;float:right;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="blueCol" style='display:block;width:50px;float:right;border-right: 1px solid #000;border-left: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
			</div>
			<div style='float:right;width:48%;height:100%;padding: 0px;color: #fff;'>
				<div class="pinkCol" style='display:block;width:50px;float:left;border-right: 1px solid #000;border-left: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="pinkCol" style='display:block;width:50px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="pinkCol" style='display:block;width:50px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
			</div>
		</div>

       </c:if>
	   <c:if test="${not empty teamBean.team_6 }">
		<div style='width:100%;height:18px;background:#353535;padding: 0px 5px;color:#fff;'>
			<div style='float: left;'>${teamBean.team_6  }</div>
			<div style='float:right;'>
				<i class="fa fa-refresh" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
				<i class="fa fa-times" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
			</div>
		</div>
		<div style='width:100%;height:30px;background:#fff;padding: 0px 5px;position: relative;'>
			<div style='float:left;width:48%;height:100%;padding: 0px;color: #fff;'>
				<div class="blueCol" style='display:block;width:50px;float:right;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="blueCol" style='display:block;width:50px;float:right;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="blueCol" style='display:block;width:50px;float:right;border-right: 1px solid #000;border-left: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
			</div>
			<div style='float:right;width:48%;height:100%;padding: 0px;color: #fff;'>
				<div class="pinkCol" style='display:block;width:50px;float:left;border-right: 1px solid #000;border-left: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="pinkCol" style='display:block;width:50px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="pinkCol" style='display:block;width:50px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
			</div>
		</div>

       </c:if>
	   <c:if test="${not empty teamBean.team_7 }">
		<div style='width:100%;height:18px;background:#353535;padding: 0px 5px;color:#fff;'>
			<div style='float: left;'>${teamBean.team_7  }</div>
			<div style='float:right;'>
				<i class="fa fa-refresh" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
				<i class="fa fa-times" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
			</div>
		</div>
		<div style='width:100%;height:30px;background:#fff;padding: 0px 5px;position: relative;'>
			<div style='float:left;width:48%;height:100%;padding: 0px;color: #fff;'>
				<div class="blueCol" style='display:block;width:50px;float:right;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="blueCol" style='display:block;width:50px;float:right;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="blueCol" style='display:block;width:50px;float:right;border-right: 1px solid #000;border-left: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
			</div>
			<div style='float:right;width:48%;height:100%;padding: 0px;color: #fff;'>
				<div class="pinkCol" style='display:block;width:50px;float:left;border-right: 1px solid #000;border-left: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="pinkCol" style='display:block;width:50px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="pinkCol" style='display:block;width:50px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
			</div>
		</div>

       </c:if>
	   <c:if test="${not empty teamBean.team_8 }">
		<div style='width:100%;height:18px;background:#353535;padding: 0px 5px;color:#fff;'>
			<div style='float: left;'>${teamBean.team_8 }</div>
			<div style='float:right;'>
				<i class="fa fa-refresh" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
				<i class="fa fa-times" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
			</div>
		</div>
		<div style='width:100%;height:30px;background:#fff;padding: 0px 5px;position: relative;'>
			<div style='float:left;width:48%;height:100%;padding: 0px;color: #fff;'>
				<div class="blueCol" style='display:block;width:50px;float:right;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="blueCol" style='display:block;width:50px;float:right;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="blueCol" style='display:block;width:50px;float:right;border-right: 1px solid #000;border-left: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
			</div>
			<div style='float:right;width:48%;height:100%;padding: 0px;color: #fff;'>
				<div class="pinkCol" style='display:block;width:50px;float:left;border-right: 1px solid #000;border-left: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="pinkCol" style='display:block;width:50px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="pinkCol" style='display:block;width:50px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
			</div>
		</div>

       </c:if>
	   <c:if test="${not empty teamBean.team_9 }">
		<div style='width:100%;height:18px;background:#353535;padding: 0px 5px;color:#fff;'>
			<div style='float: left;'>${teamBean.team_9 }</div>
			<div style='float:right;'>
				<i class="fa fa-refresh" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
				<i class="fa fa-times" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
			</div>
		</div>
		<div style='width:100%;height:30px;background:#fff;padding: 0px 5px;position: relative;'>
			<div style='float:left;width:48%;height:100%;padding: 0px;color: #fff;'>
				<div class="blueCol" style='display:block;width:50px;float:right;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="blueCol" style='display:block;width:50px;float:right;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="blueCol" style='display:block;width:50px;float:right;border-right: 1px solid #000;border-left: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
			</div>
			<div style='float:right;width:48%;height:100%;padding: 0px;color: #fff;'>
				<div class="pinkCol" style='display:block;width:50px;float:left;border-right: 1px solid #000;border-left: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="pinkCol" style='display:block;width:50px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="pinkCol" style='display:block;width:50px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
			</div>
		</div>

       </c:if>
	   <c:if test="${not empty teamBean.team_10}">
		<div style='width:100%;height:18px;background:#353535;padding: 0px 5px;color:#fff;'>
			<div style='float: left;'>${teamBean.team_10 }</div>
			<div style='float:right;'>
				<i class="fa fa-refresh" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
				<i class="fa fa-times" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
			</div>
		</div>
		<div style='width:100%;height:30px;background:#fff;padding: 0px 5px;position: relative;'>
			<div style='float:left;width:48%;height:100%;padding: 0px;color: #fff;'>
				<div class="blueCol" style='display:block;width:50px;float:right;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="blueCol" style='display:block;width:50px;float:right;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="blueCol" style='display:block;width:50px;float:right;border-right: 1px solid #000;border-left: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
			</div>
			<div style='float:right;width:48%;height:100%;padding: 0px;color: #fff;'>
				<div class="pinkCol" style='display:block;width:50px;float:left;border-right: 1px solid #000;border-left: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="pinkCol" style='display:block;width:50px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="pinkCol" style='display:block;width:50px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
			</div>
		</div>

       </c:if>
	   <c:if test="${not empty teamBean.team_11 }">
		<div style='width:100%;height:18px;background:#353535;padding: 0px 5px;color:#fff;'>
			<div style='float: left;'>${teamBean.team_11  }</div>
			<div style='float:right;'>
				<i class="fa fa-refresh" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
				<i class="fa fa-times" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
			</div>
		</div>
		<div style='width:100%;height:30px;background:#fff;padding: 0px 5px;position: relative;'>
			<div style='float:left;width:48%;height:100%;padding: 0px;color: #fff;'>
				<div class="blueCol" style='display:block;width:50px;float:right;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="blueCol" style='display:block;width:50px;float:right;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="blueCol" style='display:block;width:50px;float:right;border-right: 1px solid #000;border-left: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
			</div>
			<div style='float:right;width:48%;height:100%;padding: 0px;color: #fff;'>
				<div class="pinkCol" style='display:block;width:50px;float:left;border-right: 1px solid #000;border-left: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="pinkCol" style='display:block;width:50px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="pinkCol" style='display:block;width:50px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
			</div>
		</div>

       </c:if>
	   <c:if test="${not empty teamBean.team_12 }">
		<div style='width:100%;height:18px;background:#353535;padding: 0px 5px;color:#fff;'>
			<div style='float: left;'>${teamBean.team_12  }</div>
			<div style='float:right;'>
				<i class="fa fa-refresh" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
				<i class="fa fa-times" style='cursor:pointer;color: #fff;margin: 0px 3px;'></i>
			</div>
		</div>
		<div style='width:100%;height:30px;background:#fff;padding: 0px 5px;position: relative;'>
			<div style='float:left;width:48%;height:100%;padding: 0px;color: #fff;'>
				<div class="blueCol" style='display:block;width:50px;float:right;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="blueCol" style='display:block;width:50px;float:right;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="blueCol" style='display:block;width:50px;float:right;border-right: 1px solid #000;border-left: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
			</div>
			<div style='float:right;width:48%;height:100%;padding: 0px;color: #fff;'>
				<div class="pinkCol" style='display:block;width:50px;float:left;border-right: 1px solid #000;border-left: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="pinkCol" style='display:block;width:50px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
				<div class="pinkCol" style='display:block;width:50px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>4.5</span>
					<span style='display: block;text-align: center;'>$316</span>
				</div>
			</div>
		</div>

       </c:if>


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
    $(function() {
    	$( ".adminOverlayPanelTblDiv,.adminOverlayPanelTblDiv2" ).draggable();
    });
    function minimizeWindow(obj){
    	$("#headerPopupInner").slideToggle();
    	$("#headerPopup").height("15px");
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
        $(document).ready(function(){


   /*      	$(document).ready(function(){
        		$("#addTeamDate,#editTeamDate").datepicker({
        			startDate: '${sdate}', //MM/DD/YYYY
        		    endDate: '${edate}'
        		});
        	 */

            adjustments();
        	 $("body").on("dblclick","#showRecs1 tr",function(){

        	 alert($(this).attr("id"))
        		 $('#individualReport').modal();
     			$('#individualReport').modal('show');
        	 });

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


        function sessionCreateForMatch(){
			var sessionCreateMatchId=$("#sessionCreateMatchId").val();
			var sessionCreateCommentId=$("#sessionCreateCommentId").val();
			var sessionCreateMeterId=$("#sessionCreateMeterId").val();
			alert(sessionCreateCommentId+"           "+sessionCreateMatchId);
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
  		    success: function(data){
  		    	$("#SelectModelSessionId").html(data);
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
</html>