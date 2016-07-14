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
	font-size: 20px;
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
</style>

<div class="header" style='height: 100%;width: 100%;background-color: #545454;position: relative;'>
<div id='cmpLogoDiv'> <img src="<%=request.getContextPath() %>/images/logo.png" ></div>
<div id='topNavigation'>
	
</div>
</div>
