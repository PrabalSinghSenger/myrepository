<%
HttpSession sessionObj=request.getSession(false);
System.out.println("ses id="+sessionObj.getId());
String userType=(String)sessionObj.getAttribute("userType");
String userId=(String)sessionObj.getAttribute("userId");
System.out.println("@@@@@@@@@@@@@@@@@@@@@   userId="+userId);
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
	font-size: 16px;
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
	font-size: 14px;
	position: relative;
	width: 100%;
}
#adminNavigation>.adminMnu{
    text-align: center;
    float: left;
    cursor: pointer;
}
#adminNavigation>.adminMnu a{
    color: #fff;
    text-decoration: none;
    display: block;
    padding: 8px;
}
#adminNavigation>span:hover{
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
#inplaySlip{
    text-align: center;
    cursor: pointer;
    float: right;
    width: 150px;
    position: relative;
    color: #fff;
    text-decoration: none;
    background-color: #999;
    font-size: 16px;
    height: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    margin-right: -14px;
}
#inplaySlip i{
	position: absolute;
    left: 10px;
    top: 8px;
    font-size: 18px;
}
#betSlip{
    width: 300px;
    height: 150px;
    border: 1px solid #d5d5d5;
    position: absolute;
    right: 0px;
    top: 36px;
    background-color: #fff;
    box-shadow: 0px 0px 2px 2px #999;
    display: none;
}
#betSlip>div:first-child{
    background-color: #555;
    height: 20px;
    color: #fff;
}
#betSlip>div:last-child{
    position: absolute;
    bottom: 0px;
    padding: 5px 10px;
    width: 100%;
    border-top: 1px solid #999;
    background: #fff;
}
#betSlip>div:last-child div{
	width: 100%;
	    margin-top: 5px;
}
#betSlip>div:last-child div:nth-child(2){
	    text-align: right;
    font-size: 16px;
}
#betSlip>div:last-child div:last-child input{
	    position: absolute;
    margin-top: 3px;
}
#betSlip>div:last-child div:last-child span{
	    margin-left: 15px;
    font-size: 14px;
}
#betSlip>div:last-child div:last-child button{
	float: right;
}
#betSlip>div:last-child div:nth-child(2) span,
#betSlip>div:last-child div:nth-child(2) strong{
	font-size: inherit;
}
#betSlip>div:first-child span:nth-child(1){
    width: 175px;
    display: block;
    float: left;
    padding: 3px;
}
#betSlip>div:first-child span:nth-child(2),
#betSlip>div:first-child span:nth-child(3){
    width: 60px;
    display: block;
    float: left;
    padding: 3px;
}
#betSlipData{padding: 10px;max-height: 240px;overflow: auto;}
#betSlipData>div{margin: 6px 0px;}
#betSlipData>div>div:first-child{
	height: 30px;
	width: 100%;
}
#betSlipData>div>div:first-child input{
	float: right;
	width: 70px;
}
#betSlipData>div>div:first-child span:first-child{
	font-size: 14px;
}
#betSlipData>div>div:first-child span:last-child{
	float: right;
    padding: 5px;
}
#betSlipData>div>div:last-child{
	    height: 20px;
    width: 100%;
}
#betSlipData>div>div:last-child span:last-child{
	float: right;
}
</style>
<div class="header" style='height: 100%;width: 100%;background-color: #545454;position: relative;'>
	<div id='cmpLogoDiv'> <img src="<%=request.getContextPath() %>/images/logo.png" ></div>
	<div id='topNavigation'>
		<a id='logout' href='<%=request.getContextPath() %>/logout'><i class='fa fa-power-off'></i> Logout</a>
	</div>
	<div id='adminNavigation' class='col-xs-12'>
		<span id='inplayHome' class='adminMnu '><a href="inplay">Home</a></span>
		<span id='inplayFirst' class='adminMnu activem'><a href="inplay">In-Play</a></span>
		<span id='inplaySlip' onclick="inplaySlip(this)" class=''>
			<i class="fa fa-caret-left" aria-hidden="true"></i>
			BetSlip
		</span>
		<div id='betSlip'>
			<div><span>Your Selections</span><span>Odds</span><span>Stake</span></div>
			<form id="betForm">
			<input type='hidden' name='HiddenUserIdForm' id='HiddenUserIdForm' value='${userId }'>
			<div id='betSlipData'>
			</div>
			</form>
			<div>
				<div><button class="btn btn-danger" onclick="getRateNow();">Rate Now</button></div>
				<div><span>Total Stake :</span><strong>Rs 99.3</strong></div>
				<div>
					<input type='checkbox'  id="confirmBetCheckBox"  onchange="enablePlaceBetButton();"><span>&nbsp;&nbsp;Confirm Bets</span>
					<button type="submit" class="btn btn-success" disabled="disabled"  id="placeBetButton" onclick="placeBet();">Place Bets</button>
				</div>
			</div>

		</div>
	</div>
</div>
<script type="text/javascript">

function getRateNow(){
	alert("call")
	alert(rateNowMatchId+"     "+rateNowMatchName);

}


function enablePlaceBetButton(){
if($("#confirmBetCheckBox"). prop("checked") == true){
		$("#placeBetButton").prop("disabled","");
	}
	else if($("#confirmBetCheckBox"). prop("checked") == false){
		$("#placeBetButton").prop("disabled","disabled");
	}
}

function placeBet(){

	//alert($('#betForm').serialize())
	$.ajax({
	    type: "post",

	    data: $('#betForm').serialize(),
	    url: "<%=request.getContextPath()%>/putUserBet",
	    success: function(data){
	    	alert(data);
	    	$("#betSlipData").html("");

	    },
		error:function() {
			alert("Sorry your place is not placed please try again");

		}
	});

}




function inplaySlip(obj,items){
	var hgt=(60*items)+100;
	if(items >= 5){
		hgt=(50*5)+100;
	}
	$("#betSlip").css("height",hgt);
	$('#betSlip').toggle('slide', {direction: 'right'}, 500,function(){
		if($('#betSlip').is(":visible")){
			$(obj).css("background-color","#545454");
		}
		else{
			$(obj).css("background-color","#999");
		}
	});
	/* $("#betSlip").css("height","300px"); */
	//appendBetSlip(items);
}
function appendBetSlip(items){
	var html='';
	for(var i=0;i<items;i++){
		html+="<div><div>";
		html+="<span>India</span><input type='text'><span>121.99</span>";
		html+="</div><div>";
		html+="<span>Match Odds</span><span>Rs 23.99</span>";
		html+="</div></div>";
	}
	$("#betSlipData").html('');
	$("#betSlipData").append(html);
}

</script>