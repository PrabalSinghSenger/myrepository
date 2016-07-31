<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
System.out.println("This is for new page");
%>
<c:choose>
	<c:when test="${not empty teamBean.team_1 and not empty teamBean.team_2 and  empty teamBean.team_3 }">
	<div class=" kpiDiv  mrg pdg5">
		<div class="col-xs-12" style='padding:0px;'>
		<c:if test="${not empty teamBean.team_1 }">
			<div class="teamGruopDiv"><span class="teamName teamName1" >${teamBean.team_1 }</span><input class='teamName2' type="text" id="${teamBean.team_1 }"> <!-- <span><input style="width:30px;" type="text" ></span> --></div>
		</c:if>
		<c:if test="${not empty teamBean.team_2 }">	
			<div class="teamGruopDiv"><span class="teamName teamName1" >${teamBean.team_2 }</span><input class='teamName2' type="text"  id="${teamBean.team_2 }"> <!-- <span><input style="width:30px;"  type="text" ></span> --></div>
		</c:if>
		</div>
	</div>
	<div class=" kpiDiv  mrg pdg5" style="border: none;">
		<div class="col-xs-12"></div>
	</div>
	<div class=" kpiDiv  mrg pdg5">
			<div class="col-xs-12">
				<div class="teamGruopDiv"><span class="teamName teamName3">Actual Book   </span><input type="checkbox" > <!-- <span><input style="width:30px;" type="text" ></span> --></div>
				<div class="teamGruopDiv"><span class="teamName teamName3">Without Com</span><input type="checkbox" > <!-- <span><input style="width:30px;"  type="text" ></span> --></div>
				<div class="teamGruopDiv"><span class="teamName teamName3">With Patti</span><input type="checkbox" ><!--  <span><input style="width:30px;"  type="text" ></span> --></div>
			</div>
	</div>
	<div class=" kpiDiv  mrg pdg5">
		<div class="col-xs-12">
			<div class="teamGruopDiv"><span class="teamName teamName4">AVG L </span><input type="text" style="background-color: #4DA6FF;color: #000;font-weight: bold;float: right;width: 70%;"> <!-- <span><input style="width:30px;" type="text" ></span> --></div>
			<div class="teamGruopDiv"><span class="teamName teamName4">AVG K</span><input type="text"  style="background-color: #F9D959;color: #000;font-weight: bold;float: right;width: 70%;"> <!-- <span><input style="width:30px;"  type="text" ></span> --></div>
		</div>
	</div>
</c:when>
<c:when test="${not empty teamBean.team_1 and not empty teamBean.team_2 and not empty teamBean.team_3  and  empty teamBean.team_4 }">
	 <div class=" kpiDiv  mrg pdg5">
		<div class="col-xs-12">
		<c:if test="${not empty teamBean.team_1 }">
			<div class="teamGruopDiv"><span class="teamName teamName1">${teamBean.team_1 }</span><input class='teamName2' type="text" id="${teamBean.team_1 }"> <!-- <span><input style="width:30px;" type="text" ></span> --></div>
		</c:if>
		<c:if test="${not empty teamBean.team_2 }">	
			<div class="teamGruopDiv"><span class="teamName teamName1">${teamBean.team_2 }</span><input class='teamName2' type="text"  id="${teamBean.team_2 } "> <!-- <span><input style="width:30px;"  type="text" ></span> --></div>
		</c:if>
		<c:if test="${not empty teamBean.team_3 }">	
			<div class="teamGruopDiv"><span class="teamName teamName1">${teamBean.team_3 }</span><input class='teamName2' type="text"  id="${teamBean.team_3 }"> <!-- <span><input style="width:30px;"  type="text" ></span> --></div>
		</c:if>
		</div>
	</div>
	<div class=" kpiDiv  mrg pdg5">
		<div class="col-xs-12"></div>
	</div>
	<div class=" kpiDiv  mrg pdg5">
			<div class="col-xs-12">
				<div class="teamGruopDiv"><span class="teamName teamName3">Actual Book   </span><input type="checkbox" > <!-- <span><input style="width:30px;" type="text" ></span> --></div>
				<div class="teamGruopDiv"><span class="teamName teamName3">Without Com</span><input type="checkbox" > <!-- <span><input style="width:30px;"  type="text" ></span> --></div>
				<div class="teamGruopDiv"><span class="teamName teamName3">With Patti</span><input type="checkbox" ><!--  <span><input style="width:30px;"  type="text" ></span> --></div>
			</div>
	</div>
	<div class=" kpiDiv  mrg pdg5">
		<div class="col-xs-12">
			<div class="teamGruopDiv"><span class="teamName teamName4" >AVG L </span><input type="text" style="background-color: #4DA6FF;color: #000;font-weight: bold;float: right;width: 70%;"> <!-- <span><input style="width:30px;" type="text" ></span> --></div>
			<div class="teamGruopDiv"><span class="teamName teamName4" >AVG K</span><input type="text"  style="background-color: #F9D959;color: #000;font-weight: bold;float: right;width: 70%;"> <!-- <span><input style="width:30px;"  type="text" ></span> --></div>
		</div>
	</div>
</c:when>
<c:otherwise>
 <div class=" kpiDiv  mrg pdg5" style="height: 120px;">
		<div class="col-xs-12">
		<c:if test="${not empty teamBean.team_1 }">
			<div class="teamGruopDiv"><span class="teamName teamName1">${teamBean.team_1 }</span><input class='teamName2' type="text" id="${teamBean.team_1 }"> <!-- <span><input style="width:30px;" type="text" ></span> --></div>
		</c:if>
		<c:if test="${not empty teamBean.team_2 }">	
			<div class="teamGruopDiv"><span class="teamName teamName1">${teamBean.team_2 }</span><input class='teamName2' type="text"  id="${teamBean.team_2 }"> <!-- <span><input style="width:30px;"  type="text" ></span> --></div>
		</c:if>
		<c:if test="${not empty teamBean.team_3 }">	
			<div class="teamGruopDiv"><span class="teamName teamName1">${teamBean.team_3 }</span><input class='teamName2' type="text"  id="${teamBean.team_3 }"> <!-- <span><input style="width:30px;"  type="text" ></span> --></div>
		</c:if>
		<c:if test="${not empty teamBean.team_4 }">		
			<div class="teamGruopDiv"><span class="teamName teamName1">${teamBean.team_4 }</span><input class='teamName2' type="text" id="${teamBean.team_4 }"> <!-- <span><input style="width:30px;"  type="text" ></span> --></div>
		</c:if>
		</div>
	</div>
	<div class=" kpiDiv  mrg pdg5" style="height: 120px;">
		<div class="col-xs-12">
		<c:if test="${not empty teamBean.team_5 }">
			<div class="teamGruopDiv"><span class="teamName teamName1">${teamBean.team_5 }</span><input class='teamName2' type="text" id="${teamBean.team_5 }"> <!-- <span><input style="width:30px;" type="text" ></span> --></div>
		</c:if>
		<c:if test="${not empty teamBean.team_6 }">	
			<div class="teamGruopDiv"><span class="teamName teamName1">${teamBean.team_6 }</span><input class='teamName2' type="text"  id="${teamBean.team_6 }"> <!-- <span><input style="width:30px;"  type="text" ></span> --></div>
		</c:if>
		<c:if test="${not empty teamBean.team_7 }">	
			<div class="teamGruopDiv"><span class="teamName teamName1">${teamBean.team_7 }</span><input class='teamName2' type="text"  id="${teamBean.team_7 }"> <!-- <span><input style="width:30px;"  type="text" ></span> --></div>
		</c:if>
		<c:if test="${not empty teamBean.team_8 }">		
			<div class="teamGruopDiv"><span class="teamName teamName1">${teamBean.team_8 }</span><input class='teamName2' type="text" id="${teamBean.team_8 }"> <!-- <span><input style="width:30px;"  type="text" ></span> --></div>
		</c:if>
		</div>
	</div>
	
	<div class=" kpiDiv  mrg pdg5" style="height: 120px;">
		<div class="col-xs-12">
		<c:if test="${not empty teamBean.team_9 }">
			<div class="teamGruopDiv"><span class="teamName teamName1">${teamBean.team_9 }</span><input class='teamName2' type="text" id="${teamBean.team_9 }"> <!-- <span><input style="width:30px;" type="text" ></span> --></div>
		</c:if>
		<c:if test="${not empty teamBean.team_10}">	
			<div class="teamGruopDiv"><span class="teamName teamName1">${teamBean.team_10 }</span><input class='teamName2' type="text"  id="${teamBean.team_10 }"> <!-- <span><input style="width:30px;"  type="text" ></span> --></div>
		</c:if>
		<c:if test="${not empty teamBean.team_11 }">	
			<div class="teamGruopDiv"><span class="teamName teamName1">${teamBean.team_11 }</span><input class='teamName2' type="text"  id="${teamBean.team_11 }"><!--  <span><input style="width:30px;"  type="text" ></span> --></div>
		</c:if>
		<c:if test="${not empty teamBean.team_12 }">		
			<div class="teamGruopDiv"><span class="teamName teamName1">${teamBean.team_12 }</span><input class='teamName2' type="text" id="${teamBean.team_12 }"> <!-- <span><input style="width:30px;"  type="text" ></span> --></div>
		</c:if>
		</div>
	</div>
	<div class=" kpiDiv  mrg pdg5" style="height: 120px;">
			<div class="col-xs-12">
				<div class="teamGruopDiv"><span class="teamName teamName3">Actual Book   </span><input type="checkbox" > </div>
				<div class="teamGruopDiv"><span class="teamName teamName3">Without Com</span><input type="checkbox" > </div>
				<div class="teamGruopDiv"><span class="teamName teamName3">With Patti</span><input type="checkbox" > </div>
			</div>
	</div>
	
</c:otherwise>
</c:choose>
	