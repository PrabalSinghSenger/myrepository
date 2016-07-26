<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String fromBetAccept=(String)request.getAttribute("fromBetAccept");
System.out.println("fromBetAccept= "+fromBetAccept);
if(fromBetAccept!=null && fromBetAccept.equalsIgnoreCase("fromBetAccept")){
%>
<c:if test="${empty sessionMatchLis }">
	<span>No Session Created</span>
</c:if>
<c:forEach var="session" items="${ sessionMatchLis}">
<span class="col-xs-12 bdr-btm" ><input id="${ session.sessionId}"  class="SessionChkBox"  type="checkbox" ><span style="padding-left: 10px;" >${ session.sessionComment}</span></span>
</c:forEach>
<%}else{ %>
<c:forEach var="session" items="${ sessionMatchLis}">
<tr id="${ session.sessionId}">
        				<td><input type="checkbox" id="CHk${ session.sessionId}" class="sessionSelectCheckClass" name="${ session.sessionComment}"></td>
        				<td>${ session.sessionComment}</td>
        				<td>${ session.createdTime}</td>
        				<td>${ session.rate}</td>
        				<td>${ session.isDeclare}</td>
        			</tr>
</c:forEach>
<% }%>