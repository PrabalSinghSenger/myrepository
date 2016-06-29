<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:forEach var="session" items="${ sessionMatchLis}">
<tr id="${ session.sessionId}">
        				<td><input type="checkbox" id="CHk${ session.sessionId}" class="sessionSelectCheckClass" name="${ session.sessionComment}"></td>
        				<td>${ session.sessionComment}</td>
        				<td>${ session.createdTime}</td>
        				<td>${ session.rate}</td>
        				<td>${ session.isDeclare}</td>
        			</tr>
</c:forEach>