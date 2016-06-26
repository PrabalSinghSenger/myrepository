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
.adminUsrCtrlDiv{
	height: 50px;
	padding: 10px 15px;
}
.headerTxt{
	font-size: 16px;
	font-weight: bold;
	padding: 0px 5px;
}
.tblDiv>div{
	border: 1px solid #888;
	text-align: left;
	}
.userRegDiv>form>.section1,
.userRegDiv>form>.section2,
.userRegDiv>form>.section3,
.userRegDiv>form>.section4{
	margin-top: 10px;
    height: 100px;
    text-align: center;
}
.userRegDiv>form>.section2{
height:210px;
}
.userRegDiv>form>.section1 label,
.userRegDiv>form>.section2 label,
.userRegDiv>form>.section3 label,
.userRegDiv>form>.section4 label{
	width: 140px;
float: left;
text-align: right;
margin: 0px 10px 0px 0px;
padding: 7px 0px 0px 0px;
}
.userRegDiv>form>.section1 input[type="text"],
.userRegDiv>form>.section1 select,
.userRegDiv>form>.section2 input[type="text"],
.userRegDiv>form>.section2 select,
.userRegDiv>form>.section3 input[type="text"],
.userRegDiv>form>.section3 select,
.userRegDiv>form>.section4 input[type="text"],
.userRegDiv>form>.section4 select{
width:  calc(100% - 220px);
margin-top: 5px;
padding: 0px 10px;
height: 25px;
border-radius: 1px;
float: left;
}
.userRegDiv>form>.section2 input[type="text"]{
    width: 40px;
    margin-left: 10px;
}

.userRegDiv>form>.section1 input:nth-child(6),
.userRegDiv>form>.section1 input:nth-child(7),
.userRegDiv>form>.section1 input:nth-child(8){
width: 20%;
float: left;
margin-right: 5px;
}
.userRegDiv>form>.section3 .leftSection,
.userRegDiv>form>.section3 .rightSection,
.userRegDiv>form>.section4 .leftSection,
.userRegDiv>form>.section4 .rightSection{
width: 50%;
float: left;
}
.userRegDiv>form>.section3 .leftSection{
/* margin-left: 12%; */
}

.userRegDiv>form>.section3>.leftSection label:nth-child(4),
.userRegDiv>form>.section3>.leftSection label:nth-child(6){
	width: 90px;}
.userRegDiv>form>.section3>.leftSection input[type="text"]:nth-child(5),
.userRegDiv>form>.section3>.leftSection input[type="text"]:nth-child(7){
	width: calc(100% - 115px);}
.userRegDiv>form>.section3>.rightSection select{
    width: 55%;
    margin-left: 22%;
}
.userRegDiv>form>.section4>.leftSection label:nth-child(3),
.userRegDiv>form>.section4>.leftSection label:nth-child(5),
.userRegDiv>form>.section4>.leftSection label:nth-child(7){
	width: 90px;}
.userRegDiv>form>.section4>.leftSection input[type="text"]:nth-child(4),
.userRegDiv>form>.section4>.leftSection input[type="text"]:nth-child(6),
.userRegDiv>form>.section4>.leftSection input[type="text"]:nth-child(8){
	width: calc(100% - 115px);}
.userRegDiv>form>.section4>.rightSection select{
    width: 55%;
    margin-left: 22%;
}
.userRegDiv>form>.section4>.rightSection select:nth-child(3){
	width: 40%;
}
.userRegDiv>form>.section4>.rightSection span:nth-child(4){
 	float: left;
    height: 25px;
    margin: 5px 0px 0px 5px;
    font-size: 15px;
    padding: 3px;
}
#adminMgUserCtrl button i{padding: 5px;}
#adminMgSearchBox{
    width: 35%;
    margin-left: 10%;
}
#adminMgSearchBox input:first-child{
    width: calc(100% - 105px);
    float: left;
    margin-right: 10px;
}
</style>
</head>
<body>
<div class='col-xs-12 rootContainer'>
	<div class="col-xs-12 headerContainer"><jsp:include page="header.jsp"></jsp:include></div>
	<div class="col-xs-12 contentContainer">
		<div class='col-xs-12 adminUsrCtrlDiv'>
			<span class='fllt headerTxt'>User List</span>
			<div id='adminMgSearchBox' class='fllt'>
				<input type="text" class='form-control' name="searchUser"  placeholder="Search user by userid" id="searchUserIdTextbox">
				<input type="button" class='btn mateCol' onclick="serchUserByUserId();" value="Search User"><br>
				<div  id="searchResult" style="display:none;"></div>
			</div>

			<div id='adminMgUserCtrl' class='flrt'>
				<button class='btn mateCol' id="refreshUserPage"><i class='fa fa-refresh'></i></button>
				<button class='btn mateCol' data-toggle="modal" data-target="#userRegModal"><i class='fa fa-plus'></i></button>
				<button id='editUser' class='btn mateCol'><i class='fa fa-pencil'></i></button>
				<button  id='deleteUser' class='btn mateCol'><i class='fa fa-trash'></i></button>
			</div>
		</div>
		<div class='col-xs-12 tblDiv'>
			<table id='adminMgUsrTbl' class='table '>
				<thead>
					<tr>
						<td><input type='checkbox'></td>
						<td><span>Sno</span></td>
						<td><span>User Id</span></td>
						<td><span>User Name</span></td>
						<!-- <td><span>First Name</span></td>
						<td><span>Last Name</span></td> -->
						<td><span>User Type</span></td>
						<td><span>Phone No</span></td>
						<td><span>Mobile No</span></td>
						<td><span>Office No</span></td>
						<td><span>Home No</span></td>
						<td><span>Email</span></td>
						<td><span>State</span></td>
						<td><span>Admin IP</span></td>
						<td><span>Match Commission</span></td>
						<td><span>sessionCommission</span></td>
						<td><span>patti</span></td>
						<td><span>matchLimit</span></td>
						<td><span>pattiPerMatchNo</span></td>
						<td><span>pattiPerSessionNo</span></td>
						<!-- <td><span>deviceType</span></td>
						<td><span>deviceId</span></td>
						<td><span>verificationCode</span></td> -->
						<td><span>verificationStatus</span></td>
						<td><span>addedOn</span></td>
					</tr>
				</thead>
				<tbody id="UserListTbody">
				<c:set var="j" value="1"></c:set>
				<c:forEach var="i"  items="${userList}">
					<tr id="tr${i.userId }">
						<td><input type='checkbox' class="checkBoxUserId"  value="${i.userId }"></td>
						<td><span>${j }</span></td>
						<td><span>${i.userId }</span></td>
						<td><span>${i.firstName } ${i.lastName }</span></td>
						<%-- <td><span>${i.firstName }</span></td>
						<td><span>${i.lastName }</span></td> --%>
						<td><span>${i.userType }</span></td>
						<td><span>${i.phoneNumber }</span></td>
						<td><span>${i.mobileNo }</span></td>
						<td><span>${i.officeNo }</span></td>
						<td><span>${i.homeNo }</span></td>
						<td><span>${i.email }</span></td>
						<td><span>${i.state }</span></td>
						<td><span>${i.adminIP }</span></td>
						<td><span>${i.matchCommission }</span></td>
						<td><span>${i.sessionCommission }</span></td>
						<td><span>${i.patti }</span></td>
						<td><span>${i.matchLimit }</span></td>
						<td><span>${i.pattiPerMatchNo }</span></td>
						<td><span>${i.pattiPerSessionNo }</span></td>
						<%-- <td><span>${i.deviceType }</span></td>
						<td><span>${i.deviceId }</span></td>
						<td><span>${i.verificationCode }</span></td> --%>
						<td><span>${i.verificationStatus }</span></td>
						<td><span>${i.addedOn }</span></td>
					</tr>
					<c:set var="j" value="${j+1}"></c:set>
				</c:forEach>
				</tbody>
			</table>
		</div>

	</div>
	<div class="footerContainer"><jsp:include page="footer.jsp"></jsp:include> </div>
</div>
<!-- User Registration Modal -->
<div class="modal fade" id="userRegModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">User Registration</h4>
      </div>
      <div class="modal-body">
        <div class="userRegDiv">
   			<div id="messageDiv" style="display:none; font-size: 21px;color: Green;padding: 5px;border: 1px dotted;text-align: center;"></div>
            <form method="POST" class="form-horizontal" id="userRegModalForm" role="form" >
                <div class="section1">
                    <label class=" " for="UserName">User Name</label>
                    <input type="text" name="userName" onblur="validateUserName(this.value,this.id)" required id="User_NameId" class="form-control" placeholder="Enter User Name">
                    <label class=" " for="State">State</label>
                    <select name="State" id="StateId" class="form-control">
 					    <option>Select State</option>
                        <option>Andhra Pradesh</option>
                        <option>Arunachal Pradesh</option>
                        <option>Assam</option>
                        <option>Bihar</option>
                        <option>Chhattisgarh</option>
                        <option>Delhi</option>
                        <option>Goa</option>
                        <option>Gujarat</option>
                        <option>Haryana</option>
                        <option>Himachal Pradesh</option>
                        <option>Jammu & Kashmir</option>
                        <option>Jharkhand</option>
                        <option>Karnataka</option>
                        <option>Kerala</option>
                        <option>Madhya Pradesh</option>
                        <option>Maharashtra</option>
                        <option>Manipur</option>
                        <option>Meghalaya</option>
                        <option>Mizoram</option>
                        <option>Nagaland</option>
                        <option>Odisha</option>
                        <option>Punjab</option>
                        <option>Rajasthan</option>
                        <option>Sikkim</option>
                        <option>Tamil Nadu</option>
                        <option>Telangana</option>
                        <option>Tripura</option>
                        <option>Uttar Pradesh</option>
                        <option>Uttarakhand</option>
                        <option>West Bengal</option>
 					</select>

                    <label class=" " for="Contact">Contact</label>
                    <input type="text" class="form-control" name="mobileNo"  onblur="mobileNumberValidator(this.id)" required  id="mobileNo_NoId" placeholder="Mobile Number">
                    <input type="text" class="form-control" name="officeNo"  id="Office_NoId" placeholder="Office Number">
                    <input type="text" class="form-control" name="homeNo"    id="Home_NoId"  placeholder="Home Number">
                </div>
                <div class="section2">
                    <span class='headerTitle'>References</span><br>
                    <label class=" " for="Match_Commission">Match Commission 1 :</label>
                    <select class="form-control"  name="matchCommission" id="Match_CommissionId">
                    <option value="none">-- Select --</option>
                    	 <c:forEach var="user" items="${userList }">
                    	   <option value="${user.userId }">${user.userName }-(${user.userId })</option>
                   		 </c:forEach>
                    </select>
                    <input class="form-control" type="text" value='0'>
                    <label class=" " for="Match_Commission">Match Commission 2 :</label>
                    <select class="form-control"  name="matchCommission1" id="Match_CommissionId1">
                    	 <option value="none">-- Select --</option>
                    	 <c:forEach var="user" items="${userList }">
                    	   <option value="${user.userId }">${user.userName }-(${user.userId })</option>
                   		 </c:forEach>
                    </select>
                    <input class="form-control" type="text" value='0'>
                	<label class=" " for="Session_Commission">Session Commission 1 :</label>
                    <select class="form-control" name="sessionCommission" id="Session_CommissionId">
                    	 <option value="none">-- Select --</option>
                    	 <c:forEach var="user" items="${userList }">
                    	   <option value="${user.userId }">${user.userName }-(${user.userId })</option>
                   		 </c:forEach>
                    </select>
                    <input class="form-control" type="text" value='0'>
                    <label class=" " for="Session_Commission">Session Commission 2 :</label>
                       <select class="form-control" name="sessionCommission1" id="Session_CommissionId1">
                    	 <option value="none">-- Select --</option>
                    	 <c:forEach var="user" items="${userList }">
                    	   <option value="${user.userId }">${user.userName }-(${user.userId })</option>
                   		 </c:forEach>
                    </select>
                    <input class="form-control " type="text" value='0'>
                	<label class=" " for="Contact">Patti :</label>
                    <select class="form-control" name="patti"  id="PattiId">
                    	 <option value="none">-- Select --</option>
                    	 <c:forEach var="user" items="${userList }">
                    	   <option value="${user.userId }">${user.userName }-(${user.userId })</option>
                   		 </c:forEach>
                    </select>
                    <label class=" " for="Contact">Cutting Reference :</label>
                    <select class="form-control" name="CuttingReference"  id="CuttingReferenceId">
                    	 <option value="none">-- Select --</option>
                    	 <c:forEach var="user" items="${userList }">
                    	   <option value="${user.userId }">${user.userName }-(${user.userId })</option>
                   		 </c:forEach>
                    </select>
                </div>
                <div class="section3">
                    <div class="leftSection">
                    	<input type="hidden" name="adminIP" id="adminIPId">
                        <span class='headerTitle'>Set Limit</span><br>
                        <label class=" " for="Contact">Match Limit :</label>
                        <input type="text"   class="form-control " name="matchLimit" id="Match_LimitId"  required= placeholder="Enter Match Limit">
                        <label class=" " for="Contact">Session Limit :</label>
                        <input type="text"   class="form-control " name="SessionLimit" id="Session_LimitId"  required= placeholder="Enter Session Limit">
                    </div>
                    <div class="rightSection">
                        <span class='headerTitle'>Session Commission</span><br>
                        <select class="form-control" name="Session_Commission2" id="Session_CommissionId2">
                        	<c:set var="count" value="0" scope="page" />
                        	<c:forEach var="i" begin="0" end="20" >
                        		<option value="${count }">${count }</option>
								<c:set var="count" value="${count + 0.25}" scope="page"/>
                        	</c:forEach>
                        </select>
                        <select class="form-control" name="Session_Commission3" id="Session_CommissionId3">
                        	<c:set var="count" value="0" scope="page" />
                        	<c:forEach var="i" begin="0" end="20" >
                        		<option value="${count }">${count }</option>
								<c:set var="count" value="${count + 0.25}" scope="page"/>
                        	</c:forEach>
                        </select>
                    </div>
                </div>
                <div class="section4">
                    <div class="leftSection">
                        <span class='headerTitle'>Patti Percentage[%]</span><br>
                        <label class=" " for="Contact">Match :</label>
                        <input type="text" class="form-control "  onkeypress="return isNumberKey(event)" name="Match_No"  required  id="Match_NoId" placeholder="Enter Match No">
                        <label class=" " for="Contact">Session :</label>
                        <input type="text" class="form-control "  onkeypress="return isNumberKey(event)" name="Session_NO"  required  id="Session_NOId" placeholder="Enter Session No">
                        <label class=" " for="Contact">Meter :</label>
                        <input type="text" class="form-control "  onkeypress="return isNumberKey(event)" name="Meter_NO"  required  id="Meter_NOId" placeholder="Enter Meter No">
                    </div>
                    <div class="rightSection">
                        <span class='headerTitle'>Match Commission</span><br>
                       <select class="form-control "   onkeypress="return isNumberKey(event)"   name="Match_CommissionId2"  id="Match_Commission2">
                        	<c:set var="count" value="0" scope="page" />
                        	<c:forEach var="i" begin="0" end="20" >
                        		<option value="${count }">${count }</option>
								<c:set var="count" value="${count + 0.25}" scope="page"/>
                        	</c:forEach>
                        </select>
                         <span>&nbsp; % &nbsp;<input type="checkbox"> &nbsp;ALL</span>
                        <select class="form-control "    name="Match_CommissionId3"  id="Match_Commission3">
                       		<option value="entry_wise">Entry Wise</option>
                       		<option value="net">Net</option>
						</select>
                         <span>&nbsp; % &nbsp;<input type="checkbox" name="isAutoAccept" id="isAutoAccept"> &nbsp;Auto Bet</span>

                        <select class="form-control "  name="Match_CommissionId4"  id="Match_Commission4">
                       		<option value="pay">pay</option>
                       		<option value="receive">receive</option>
						</select>
                </div>
                </div>
                </form>
        	</div>
      	</div>
      <div class="modal-footer">
      <!--   <button class="btn btn-primary">Modify</button> -->
        <button class="btn btn-primary" onclick="registerUser()">Save</button>
        <button class="btn btn-danger" data-dismiss="modal">Close</button>
        <button class="btn btn-primary">Clear</button>
      </div>
    </div>
  </div>
</div>
<!-- End Modal -->
</body>
	<script src="<%=ctxPath%>/js/jquery-1.12.1.min.js" type="text/javascript"></script>
   	<script src="<%=ctxPath%>/js/datatables.min.js" type="text/javascript"></script>
 	<script src="<%=ctxPath%>/js/jquery-ui.min.js" type="text/javascript"></script>
 	<script src="<%=ctxPath%>/js/bootstrap.min.js" type="text/javascript"></script>
 	<script src="<%=ctxPath%>/js/global.js" type="text/javascript"></script>

<script type="text/javascript">

function serchUserByUserId(){
	var userId="";
	userId=$("#searchUserIdTextbox").val();
 	$.ajax({
	    type: "post",
	    url: "<%=ctxPath%>/searchUser?userid="+userId,
	    success: function(data){
	    //	alert(data);
	    	var Userdata=JSON.parse(data);
	    var html="";
	   html+="<tr id='tr"+Userdata["UserId"]+"'>";
	        html+="<td><input type='checkbox'  id='checkUser"+Userdata["UserId"]+"'></td>";
	        html+="<td><span>1</span></td>";
	        html+="<td><span>"+Userdata["UserId"]+"</span></td>";
	        html+="	<td><span>"+Userdata["UserName"]+"</span></td>";
	        html+="<td><span>"+Userdata["UserType"]+"</span></td>";
	        html+="<td><span>"+Userdata["PhoneNumber"]+" </span></td>";
	        html+="<td><span>"+Userdata["MobileNo"]+"</span></td>";
	        html+="<td><span>"+Userdata["OfficeNo"]+"</span></td>";
	        html+="<td><span>"+Userdata["HomeNo"]+"</span></td>";
	        html+="<td><span>"+Userdata["Email"]+"</span></td>";
	        html+="<td><span>"+Userdata["State"]+" </span></td>";
			html+="<td><span>"+Userdata["AdminIP"]+"</span></td>";
			html+="<td><span>"+Userdata["MatchCommission"]+"</span></td>";
			html+="<td><span>"+Userdata["SessionCommission"]+"</span></td>";
			html+="<td><span>"+Userdata["Patti"]+"</span></td>";
			html+="<td><span>"+Userdata["MatchLimit"]+"</span></td>";
			html+="<td><span>"+Userdata["PattiPerMatchNo"]+"</span></td>";
			html+="<td><span>"+Userdata["PattiPerSessionNo"]+"</span></td>";
			html+="<td><span>"+Userdata["VerificationStatus"]+"</span></td>";
			html+="<td><span>$"+Userdata["AddedOn"]+"</span></td></tr>";
			$("#UserListTbody").html(html);
	    },
		error:function() {
			alert("Sorry No User Exist with this  Id.");

		}
	});
}
var userIdForEdit="";


var dataTableUserList=$('#adminMgUsrTbl').DataTable({
    "scrollY":  "60vh",
    "scrollCollapse": false,
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


$(window).load(function(){
	$(".adminMnu").removeClass("active");
	$("#adminManageUsers").addClass("active");
});


function isNumberKey(evt)
{
   var charCode = (evt.which) ? evt.which : event.keyCode
   if (charCode > 31 && (charCode < 48 || charCode > 57))
      return false;
   return true;
}

    $(document).ready(function(){

    	 $('.checkBoxUserId').click(function() {
             if($(this).is(":checked")){
            	 userIdForEdit=$(this).val();
             }else{
            	 userIdForEdit="";
             }
         });

    	   $("#refreshUserPage").click(function(){
    	 			window.location="<%=ctxPath%>/admin/manageUsers"
    	   });


        $("#editUser").click(function(){
        	var x = document.getElementsByClassName("checkBoxUserId");
        	var ckcount=0;
        	for(var i=0;i<x.length;i++){
        		if(x[i].checked){
        			ckcount=ckcount+1;
        		}
        	}
        	if(ckcount == 1){
        		$('#userRegModal').modal();
        	}else{
        		alert("Please select user!")
        	}
        	$("#myModalLabel").html("");
        	$("#myModalLabel").html("Edit User Panel");
        	if(typeof userIdForEdit!=""){
        		$.ajax({
        		    type: "post",
        		    url: "<%=ctxPath%>/searchUser?userid="+userIdForEdit,
        		    success: function(data){
        		    	var Userdata=JSON.parse(data);
        		    	$("#User_NameId").val(Userdata["UserName"]);
        		    	$("#Match_LimitId").val(Userdata["MatchLimit"]);
        		    	$("#StateId").val(Userdata["State"]);
        		    	$("#mobileNo_NoId").val(Userdata["MobileNo"]);
        		    	$("#Home_NoId").val(Userdata["HomeNo"]);
        		    	$("#Office_NoId").val(Userdata["OfficeNo"]);
        		    	$("#Match_CommissionId").val(Userdata["matchCommission"]);
        		    	$("#Session_CommissionId").val(Userdata["sessionCommission"]);
        		    	$("#Match_CommissionId1").val(Userdata["matchCommission1"]);
        		    	$("#Session_CommissionId1").val(Userdata["sessionCommission1"]);
        		    	$("#PattiId").val(Userdata["Patti"]);
        		    	$("#CuttingReferenceId").val(Userdata["CuttingReference"]);
        		    	$("#Match_LimitId").val(Userdata["matchLimit"]);
        		    	$("#Session_LimitId").val(Userdata["SessionLimit"]);
        		    	$("#Match_NoId").val(Userdata["Meter_NO"]);
        		    	$("#Session_NOId").val(Userdata["Session_NO"]);
        		    	$("#Meter_NOId").val(Userdata["Meter_NO"]);
        		    	$("#adminIPId").val(Userdata["AdminIP"]);

        		    },
        			error:function() {
        				alert("Sorry No User Exist with this  Id.");

        			}
        		});
        	}else{
        		alert("Please select any checkbox");
        	}
        	$("#myModalLabel").html("User Registration");
        });




        $("#deleteUser").click(function(){
        	var x = document.getElementsByClassName("checkBoxUserId");
        	var userIds="";
        	for(var i=0;i<x.length;i++){
        		if(x[i].checked){

						userIds+=x[i].value+",";

        		}
        	}
        	userIds+='000';
        	if(userIds==""){
        		alert("Please select user!")
        	}else{

        		$.ajax({
        		    type: "post",
        		    async :false,
        		    data:{"userIds":userIds},
        		    url: "<%=ctxPath%>/deleteUsers",
        		    success: function(data){
        		    	alert(data);
        		    	window.location="<%=ctxPath%>/admin/manageUsers";
        		    	/* for(var i=0;userIds.split(",").length;i++){
        		    		dataTableUserList.row($("#tr"+userIds.split(",")[i])).remove().draw();
        		    		//$("#tr"+userIds.split(",")[i]).remove();
        		    	} */
        		    },
        			error:function() {
        				alert("Sorry No User Exist with this  Id.");

        			}
        		});
        	}
        });




    });


    function mobileNumberValidator(txtMobId) {
		var fld = document.getElementById(txtMobId);
		if (fld.value == "") {
			alert("You didn't enter a phone number.");
			fld.value = "";
			fld.focus();
			return false;
		} else if (isNaN(fld.value)) {
			alert("The phone number contains illegal characters.");
			fld.value = "";
			fld.focus();
			return false;
		} else if (!(fld.value.length == 10)) {
			alert("The phone number is the wrong length. \nPlease enter 10 digit mobile no.");
			fld.value = "";
			fld.focus();
			return false;
		}
		return true;
	}

    function validateUserName(username,thiso){
    	checkUserExist();
		 re = /^\w+$/;
		    if(!re.test(username)) {
		      alert("Error: Username must contain only letters, numbers and underscores!");
		     // document.getElementById(thiso).value="";
		      document.getElementById(thiso).focus();
		      return false;
		    }else{
		    	return true;
		    }

	}


    function registerUser(){
    	var userName=$("#User_NameId").val();
    	var matchLimit=$("#Match_LimitId").val();
    	var State=$("#StateId").val();
    	var mobile=$("#mobileNo_NoId").val();
    	var phone=$("#Home_NoId").val();
    	var office=$("#Office_NoId").val();
    	var matchCommission=$("#Match_CommissionId").val();
    	var sessionCommission=$("#Session_CommissionId").val();

    	var matchCommission1=$("#Match_CommissionId1").val();
    	var sessionCommission1=$("#Session_CommissionId1").val();
    	var patti=$("#PattiId").val();
    	var cuttingReference=$("#CuttingReferenceId").val();

    	var match_Limit=$("#Match_LimitId").val();
    	var session_Limit=$("#Session_LimitId").val();
    	var Match_No=$("#Match_NoId").val();
    	var Session_NO=$("#Session_NOId").val();
    	var meter=$("#Meter_NOId").val();
    	var adminIP=$("#adminIPId").val();
    	var url="";
		if( userIdForEdit==""){
			url="<%=ctxPath%>/regitrationProcessajax?"+$('#userRegModalForm').serialize();
		}else{
			url="<%=ctxPath%>/regitrationProcessajax?"+$('#userRegModalForm').serialize()+"&edit=Edit&userId="+userIdForEdit;
		}
     	$.ajax({
		    type: "post",
		    url: url,
		    success: function(data){
		    	if(data==="User Register Successfully."||data==="User Values Edited Successfully"){
		    	$("#messageDiv").css({"display":"block","color":"Green"});
		    	$("#messageDiv").html(data);

		    	setTimeout(function(){$("#messageDiv").css("display","none");window.location="<%=ctxPath%>/admin/manageUsers";}, 5000);
		    	}else{
		    		$("#messageDiv").css({"display":"block","color":"red"});
			    	$("#messageDiv").html(data);
			    	setTimeout(function(){$("#messageDiv").css("display","none");}, 5000);

		    	}
		    },
    		error:function() {
    			alert("error")
    		}
    	});
    }


    function checkUserExist(){
    	var userName=$("#User_NameId").val();

    	$.ajax({
		    type: "post",
		    url: "<%=ctxPath%>/checkuserexist?userName="+userName,
		    success: function(data){
		    	if(data==""){
		    		$("#messageDiv").css("display","none");
		    	}else{
		    	document.getElementById("User_NameId").focus();
		    	$("#messageDiv").css("display","block");
		    	$("#messageDiv").css("color","red");
		    	$("#messageDiv").html(data);
		    	}
		    },
    		error:function() {
    			alert("error")
    		}
    	});
    }



</script>
</html>



