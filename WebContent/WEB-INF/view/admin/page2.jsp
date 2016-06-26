<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<%String ctxPath=request.getContextPath();%>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
    <link rel="stylesheet" href="<%=ctxPath%>/css/datatables.min.css" type="text/css">
    <link rel="stylesheet" href="<%=ctxPath%>/css/bootstrap.min.css" type="text/css"/>
    <link rel="stylesheet" href="<%=ctxPath%>/css/font-awesome.min.css" type="text/css"/>
    <link rel="stylesheet" href="<%=ctxPath%>/css/mainLayout.css" type="text/css">
    <link rel="stylesheet" href="<%=ctxPath%>/css/connectReport.css" type="text/css">
</head>
<body>
    <div id='connectReport' class="rootContainer">
    <div class="col-xs-12 headerContainer"><jsp:include page="header.jsp"></jsp:include></div>
	<div class="col-xs-12 contentContainer">
    <div class="rightSection">
        <span><input class='fllt' type="checkbox"> &nbsp;105 23/05/15 SAVING</span> <span><input class='fllt' type="checkbox"> &nbsp;105 23/05/15 SAVING</span> <span><input class='fllt' type="checkbox"> &nbsp;105 23/05/15 SAVING</span> <span><input class='fllt' type="checkbox"> &nbsp;105 23/05/15 SAVING</span> <span><input class='fllt' type="checkbox"> &nbsp;105 23/05/15 SAVING</span>    
    </div>
    <div class="leftSection">
        <div class="top">
            <div class="right">
                <div class="tblDiv">
                     
            <table id='entryPanelTbl1' class="table table-striped table-hover table-condensed">
            <thead>
                <tr>
                    <td>Name</td>
                    <td>Amount</td>
                    <td>With Patti</td>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Demo Data 1</td>
                    <td>Demo Data 2</td>
                    <td>Demo Data 3</td>
                </tr>
            </tbody>
                         </table>    
                
            </div>
            </div>
            <div class="left">
                <div class="tblDiv">
                     
            <table id='entryPanelTbl1' class="table table-striped table-hover table-condensed">
            <thead>
                <tr>
                    <td>Name</td>
                    <td>Amount</td>
                    <td>With Patti</td>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Demo Data 1</td>
                    <td>Demo Data 2</td>
                    <td>Demo Data 3</td>
                </tr>
            </tbody>
                         </table>    
                
            </div>
            </div>
        </div>    
        <div class="bottom">
            <div class="first">
                <span>Sub Total 0</span>
                <span>Sub Total 0</span>
                <span></span>
                <span><b>Final Total 0</b></span>
                </div>
            <div class="second">
            <button class="btn btn-primary">Connect</button>
            <button class="btn btn-primary">Print</button>
            <button class="btn btn-primary">Close</button>
</div>
        </div>    
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
        function resizeDoc(){
        }
        $(document).ready(function(){
            resizeDoc();
        });
        $(window).resize(function(){resizeDoc();});
    </script>
</html>