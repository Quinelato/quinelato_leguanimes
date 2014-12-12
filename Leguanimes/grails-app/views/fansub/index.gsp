
<%@ page import="entities.Fansub" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'fansub.label', default: 'Fansub')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-fansub" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-fansub" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'fansub.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="webAddress" title="${message(code: 'fansub.webAddress.label', default: 'Web Address')}" />
					
						<th><g:message code="fansub.createdBy.label" default="Created By" /></th>
											
						<g:sortableColumn property="createdAt" title="${message(code: 'fansub.createdAt.label', default: 'Created At')}" />
					
						<g:sortableColumn property="removedAt" title="${message(code: 'fansub.removedAt.label', default: 'Removed At')}" />
						
						<g:sortableColumn property="active" title="${message(code: 'fansub.active.label', default: 'Active')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${fansubInstanceList}" status="i" var="fansubInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${fansubInstance.id}">${fieldValue(bean: fansubInstance, field: "name")}</g:link></td>
					
						<td><a href="${fieldValue(bean: fansubInstance, field: "webAddress")}">${fieldValue(bean: fansubInstance, field: "webAddress")}</a></td>
					
						<td>${fieldValue(bean: fansubInstance, field: "createdBy")}</td>
											
						<td><g:formatDate date="${fansubInstance.createdAt}" /></td>
					
						<td><g:formatDate date="${fansubInstance.removedAt}" /></td>
						
						<td><g:formatBoolean boolean="${fansubInstance.active}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${fansubInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
