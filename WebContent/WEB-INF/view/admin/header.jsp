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
	<span id='adminPage2' class='adminMnu'><a href="AdminBetAccept">AdminBetAccept</a></span>
</div>
</div>
