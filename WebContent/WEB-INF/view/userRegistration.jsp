<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<%String ctxPath=request.getContextPath();%>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
    <link rel="stylesheet" href="<%=ctxPath%>/css/datatables.min.css" type="text/css">
    <link rel="stylesheet" href="<%=ctxPath%>/css/bootstrap.min.css"	type="text/css" />
    <link rel="stylesheet" href="<%=ctxPath%>/css/font-awesome.min.css"	type="text/css" />
    <link rel="stylesheet" href="<%=ctxPath%>/css/global.css" type="text/css">
    <link rel="stylesheet" href="<%=ctxPath%>/css/userReg.css" type="text/css" />
    <!-- load jQuery and jQuery UI -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>

<!-- load jQuery UI CSS theme -->
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">


</head>
<body>
	<div class="subRootootContainer" id="userReg">
        <div class="leftSec">
	        <div class="tblDiv">
	        <table id="usrRegTbl1" class="table table-striped table-hover table-condensed ">
		        <thead>
		            <tr>
		                <td>Code</td>
	                    <td>Name</td>
	                </tr>
	            </thead>
	             <tbody>
	             <c:forEach var='i' begin="0" end="30">
	                <tr>
	                      <td>123
</td>
	                      <td>ABCD</td>
	                    </tr>
	             </c:forEach>

	                </tbody>
	            </table>
	        </div>
        </div>
     <div class="rightSec">
  <%--    <c:if test="${not empty message}">
      <div id="messageDiv" style="font-size: 21px;color: Green;padding: 5px;border: 1px dotted;text-align: center;">${message}</div>
     </c:if>
 --%>
   <div id="messageDiv" style="display:none; font-size: 21px;color: Green;padding: 5px;border: 1px dotted;text-align: center;"></div>
           <%--  <form method="POST" class="form-horizontal" role="form"  action="<%=request.getContextPath()%>/regitrationProcess" commandname="Userpojo"> --%>
            <form method="POST" class="form-horizontal" role="form" >
                <div class="section1">
                    <label class=" " for="UserName">User Name</label>
                   <!-- the datepicker input -->
<input type='text' id='datepicker' placeholder='Select date' />
                    <!-- <input type="text" name="userName" onblur="validateUserName(this.value,this.id)"  id="User_NameId" class="form-control" placeholder="Enter User Name">
                     --><label class=" " for="State">State</label>
                    <select name="State" id="StateId" class="form-control">
 					    <option> -- Select -- </option>
                        <option>Andhra Pradesh</option>
                        <option>Arunachal Pradesh</option>
                        <option>Assam</option>
                        <option>Bihar</option>
                        <option>Chhattisgarh</option>
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
                    <input type="text" class="form-control" name="mobileNo"  onblur="mobileNumberValidator(this.id)"   id="mobileNo_NoId" placeholder="Mobile Number">
                    <input type="text" class="form-control" name="officeNo"  onblur="mobileNumberValidator(this.id)"  id="Office_NoId" placeholder="Office Number">
                    <input type="text" class="form-control" name="homeNo"  onblur="mobileNumberValidator(this.id)"  id="Home_NoId"  placeholder="Home Number">
                </div>
                <div class="section2">
                    <span>References</span><br>
                    <label class=" " for="Match_Commission">Match Commission :</label>
                    <select class="form-control"  name="matchCommission" id="Match_CommissionId">
                    	<option value="1">1</option>
                    	<option value="2">2</option>
                    	<option value="3">3</option>
                    	<option value="4">4</option>
                    </select>
                	<label class=" " for="Session_Commission">Session Commission:</label>
                    <select class="form-control" name="sessionCommission" id="Session_CommissionId">
                    	<option value="1">1</option>
                    	<option value="2">2</option>
                    	<option value="3">3</option>
                    	<option value="4">4</option>
                    </select>
                	<label class=" " for="Contact">Patti :</label>
                    <select class="form-control" name="patti"  id="PattiId">
                    	<option value="1">1</option>
                    	<option value="2">2</option>
                    	<option value="3">3</option>
                    	<option value="4">4</option>
                    </select>
                </div>
                <div class="section3">
                    <div class="leftSection">
                        <span>Set Limit</span><br>
                        <label class=" " for="Contact">Match Limit :</label>
                        <input type="text"   class="form-control numberclass" name="matchLimit" id="Match_LimitId"   placeholder="Enter Match Limit">
                    </div>
                    <div class="rightSection">
                        <span>Patti Percentage[%]</span><br>
                        <label class=" " for="Contact">Match :</label>
                        <input type="text" class="form-control numberclass" name="Match_No"  name="Match_NoId" placeholder="Enter Match No">
                        <label class=" " for="Contact">Session :</label>
                        <input type="text" class="form-control numberclass" name="Session_NO"  name="Session_NOId" placeholder="Enter Session No">
                    <label class=" " for="Contact">Session :</label>
                        <input type="text" class="form-control numberclass" name="Session_NO"  name="Session_NOId" placeholder="Enter Session No">
                    </div>
                </div>
                </form>
                <div class="section6">

<input type="text" id="mydate" /><br>
                    <button class="btn btn-primary">Modify</button>
                  <!--   <button class="btn btn-primary">Save</button> -->
                     <button class="btn btn-primary" onclick="registerUser()">Save</button>
                    <button class="btn btn-primary">Close</button>
                    <button class="btn btn-primary">Clear</button>
                </div>
        </div>

	</div>

</body>
	<link href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" rel="stylesheet" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
<script src="<%=ctxPath%>/js/jquery-1.12.1.min.js" type="text/javascript"></script>
<script src="<%=ctxPath%>/js/bootstrap.min.js" type="text/javascript"></script>
<script src="<%=ctxPath%>/js/datatables.min.js" type="text/javascript"></script>
<script type="text/javascript">
    function adjustments(){
        $('#usrRegTbl1').DataTable({
            "scrollY":        "65vh",
            "scrollCollapse": true,
            "paging":         false,
            "info":     false,
            "filter":false
        });
    }
    $(function() {
    	   $('#mydate').datepicker();
    	   $('#mydate').datepicker('setDate', '04/23/2014');
    	});
    $(document).ready(function(){
        alert("hi")
       // $("#mydate").datepicker().datepicker("setDate", new Date());


        // set minDate to 0 for today's date
$('#datepicker').datepicker({ minDate: 0 });
        adjustments();

        $('.numberclass').keypress(function (event) {
            return isNumber(event, this)
        });
    });

    // THE SCRIPT THAT CHECKS IF THE KEY PRESSED IS A NUMERIC OR DECIMAL VALUE.
    function isNumber(evt, element) {
        var charCode = (evt.which) ? evt.which : event.keyCode
        if (
            (charCode != 45 || $(element).val().indexOf('-') != -1) &&      // “-” CHECK MINUS, AND ONLY ONE.
            (charCode != 46 || $(element).val().indexOf('.') != -1) &&      // “.” CHECK DOT, AND ONLY ONE.
            (charCode <= 47 || charCode >= 57)){
        	$(this).value="";
        	$(this).focus();
        	return false;
        }


        return true;
    }

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
    	var patti=$("#PattiId").val();
    	var Match_No=$("#Match_NoId").val();
    	var Session_NO=$("#Session_NOId").val();
    	var data= "Session_NO="+Session_NO+"&Match_No="+Match_No+"&patti="+patti+"&sessionCommission="+sessionCommission+"&matchCommission="+matchCommission+"&office="+office+"&userName=" + userName+ "&matchLimit=" + matchLimit+ "'&State=" + State+ "&mobile="+mobile+"&phone="+phone;

    	$.ajax({
		    type: "post",
		    url: "regitrationProcessajax?"+data,
		    success: function(data){
		    	$("#messageDiv").css("display","block");
		    	$("#messageDiv").html(data);
		    	setTimeout(function(){$("#messageDiv").css("display","none");}, 5000);
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
		    url: "checkuserexist?userName="+userName,
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