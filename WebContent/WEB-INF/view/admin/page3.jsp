<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="stylesheet" href="<%=ctxPath%>/css/entryPanel2.css" type="text/css">
</head>
<body>
    <div id='entryPanel2' class="rootContainer">
    <div class="col-xs-12 headerContainer"><jsp:include page="header.jsp"></jsp:include></div>
	<div class="col-xs-12 contentContainer">
    <div class="topSection">
        <div class="tblDiv">
            <table id='entryPanelTbl1' class="table table-striped table-hover table-condensed">
            <thead>
                <tr>
                    <td>SALECTED</td>
                    <td>CODE</td>
                    <td>DATE</td>
                    <td>COMMENT</td>
                    <td>TEAM 1</td>
                    <td>TEAM 2</td>
                    <td>TEAM 3</td>
                    <td>TEAM 4</td>
                    <td>TEAM 5</td>
                    <td>TEAM 6</td>
                    <td>TEAM 7</td>
                    <td>TEAM 8</td>
                    <td>TEAM 9</td>
                    <td>TEAM 10</td>
                    <td>TEAM 11</td>
                    <td>TEAM 12</td>
                </tr>
            </thead>
            <tbody>
            <c:forEach var="i" begin="1" end="30">
            	<tr>
                    <td>Demo Data 1</td>
                    <td>Demo Data 2</td>
                    <td>Demo Data 3</td>
                    <td>Demo Data 4</td>
                    <td>Demo Data 5</td>
                    <td>Demo Data 6</td>
                    <td>Demo Data 6</td>
                    <td>Demo Data 6</td>
                    <td>Demo Data 6</td>
                    <td>Demo Data 6</td>
                    <td>Demo Data 6</td>
                    <td>Demo Data 6</td>
                    <td>Demo Data 6</td>
                    <td>Demo Data 6</td>
                    <td>Demo Data 6</td>
                    <td>Demo Data 6</td>
            	</tr>
            </c:forEach>
                
            </tbody>
                         </table>    
                
            </div>    
    </div>
    <div class="bottomSection">
        <div>
            <button class="btn btn-primary">Ses Enter</button>
            <button class="btn btn-primary">Ses Name Modify</button>
            <button class="btn btn-primary">Delete</button>
            <button class="btn btn-primary">Close</button>
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
        function applyDataTable(){
        	$('#entryPanelTbl1').DataTable({
                "scrollY":  "60vh",
                "scrollCollapse": true,
                "paging":         false,
                "info":     false,
                "filter":false,
                "scrollX": true,
                "fixedHeader": false,
                "order": [[ 0, "desc" ]],
                "columns": [		   
                    { "width": "50px" },
                    { "width": "50px" },
                    { "width": "200px" },
                    { "width": "200px" },
                    { "width": "200px" },
                    { "width": "200px" },
                    { "width": "200px" },
                    { "width": "200px" },
                    { "width": "200px" },
                    { "width": "200px" },
                    { "width": "200px" },
                    { "width": "200px" },
                    { "width": "200px" },			
                    { "width": "200px" },
                    { "width": "200px" },
                    { "width": "200px" },
                   ]
            });
        }
        $(document).ready(function(){
            resizeDoc();
            applyDataTable();
        });
        $(window).resize(function(){resizeDoc();});
        $(window).load(function(){
    		$(".adminMnu").removeClass("active");
        	$("#adminPage3").addClass("active");
    	});
    </script></html>