<%
HttpSession sessionObj=request.getSession(false);
System.out.println("ses id="+sessionObj.getId());
String userType=(String)sessionObj.getAttribute("userType");
%>
<style type="text/css">

#cmpLogoDiv{
	height: 100%;
	width: 200px;
	margin-left: 20px;
	float: left;
}
#cmpLogoDiv img{
	width: 100%;
	height: 100%;
}
#topNavigation{
    height: 50%;
    margin-right: 50px;
    position: absolute;
    bottom: 0px;
    right: 0px
}
#topNavigation a{
	color: #fff;
	font-size: 15px;
	margin-left: 10px;
	text-decoration: none;
	padding: 5px;
	border-radius: 3px;
	border-color:#545454;
	border-width: 1px;
	border-style: solid;

}
#topNavigation a:hover{
	border-radius: 3px;
	border-color:#777;
	box-shadow: 0px 0px 2px 0px #777;
}
#topNavigation span{
	color:#fff;
	font-size: 20px;
	padding: 10px;
	cursor: pointer;
}
/* Admin Navigation */
#adminNavigation{
    background-color: #456065;
	height: 36px;
	color: #fff;
	font-size: 14px;
	position: relative;
	width: 100%;
}
#adminNavigation .adminMnu{
    text-align: center;
    float: left;
    cursor: pointer;
}
#adminNavigation .adminMnu a{
    color: #fff;
    text-decoration: none;
    display: block;
    padding: 8px;
}
#adminNavigation span:hover{
	background-color: #545454;
}
#adminLoadPage{
	text-align: center;
	margin-top: 35px;
	padding: 10px;
	overflow: auto;
	height: calc(100% - 135px);
}
.activem{
	background-color: #545454;
}
</style>
<div class="header" style='height: 100%;width: 100%;background-color: #545454;position: relative;'>
<div id='cmpLogoDiv'> <img src="<%=request.getContextPath() %>/images/logo.png" ></div>
<div id='topNavigation'>
<a id='admin' href='#'><i class='fa fa-user-secret'></i> Admin</a>
<a id='logout' href='logout'><i class='fa fa-power-off'></i> Logout</a>
</div>
<div id='adminNavigation' class='col-xs-12'>
	<span id='adminHome' class='adminMnu activem'><a href="home">Home</a></span>
	<span id='adminManageUsers' class='adminMnu'><a href="manageUsers">Manage Users</a></span>
	<span id='adminManageSession' class='adminMnu'><a href="home">Manage Session</a></span>
	<span id='adminManageSeries' class='adminMnu'><a href="manageTeams">Manage Match</a></span>
	<span id='adminManageTest' class='adminMnu'><a href="home">Manage Test Series</a></span>
	<!-- <span id='adminPage1' class='adminMnu'><a href="page1">Page 1</a></span> -->
	<span id='adminPage2' class='adminMnu'><a href="page2">Page 2</a></span>
	<span id='adminPage3' class='adminMnu'><a href="page3">Page 3</a></span>
	<span id='adminPage4' class='adminMnu'><a href="page4">Individual Session</a></span>
	<span id='adminPage4' class='adminMnu'><a href="admin/settingTransactionPage">SettingTransactionPage</a></span>
	<span id='adminPage2' class='adminMnu'><a href="admin/AdminBetAcceptNew">AdminBetAccept</a></span>
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
						<input onkeydown="updateValues(event,this,'77')" class="blueCol" id="lagai771" min="0.00" name="Lagai1" type="number"  step="0.01"   value="0.00"  maxlength="4" style="height: 100%;width: 100%;border: none;text-align: center;">
					</span>
				</div>
				 <div class="blueCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;'>
                           <input onkeydown="updateValues(event,this,'77')" class="blueCol"  id="lagai772"  name="Lagai2"  type="number" step='0.02'  value="0.00"  maxlength="4"  style="height: 100%;width: 100%;border: none;text-align: center;">
                     </span>
				</div>
			</div>
			<div style='float:left;width:auto;height:100%;padding: 0px;color: #fff;margin-left: 40px'>
				<div class="pinkCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;font-weight: bold;'>
                      <input onkeydown="updateValues(event,this,'77')" class="pinkCol"  id="khai771"  name="Khai2" min="0.00"  type="number" step='0.01'   value="0.00"  style="height: 100%;width: 100%;border: none;text-align: center;">
                    </span>
				</div>
				<div class="pinkCol" style='display:block;width:65px;float:left;border-right: 1px solid #000;'>
					<span style='display: block;text-align: center;'>
					   <input onkeydown="updateValues(event,this,'77')" class="pinkCol"  id="khai772"  name="Khai1"   type="number"   min="0.00"  step='0.02'  value="0.00"   style="height: 100%;width: 100%;border: none;text-align: center;">
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

