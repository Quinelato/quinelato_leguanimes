
<%@ page import="entities.Exibition" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'exibition.label', default: 'Exibition')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-exibition" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-exibition" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="removedAt" title="${message(code: 'exibition.removedAt.label', default: 'Removed At')}" />
					
						<th><g:message code="exibition.createdBy.label" default="Created By" /></th>
					
						<g:sortableColumn property="type" title="${message(code: 'exibition.type.label', default: 'Type')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'exibition.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="active" title="${message(code: 'exibition.active.label', default: 'Active')}" />
					
						<g:sortableColumn property="createdAt" title="${message(code: 'exibition.createdAt.label', default: 'Created At')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${exibitionInstanceList}" status="i" var="exibitionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${exibitionInstance.id}">${fieldValue(bean: exibitionInstance, field: "removedAt")}</g:link></td>
					
						<td>${fieldValue(bean: exibitionInstance, field: "createdBy")}</td>
					
						<td>${fieldValue(bean: exibitionInstance, field: "type")}</td>
					
						<td>${fieldValue(bean: exibitionInstance, field: "description")}</td>
					
						<td><g:formatBoolean boolean="${exibitionInstance.active}" /></td>
					
						<td><g:formatDate date="${exibitionInstance.createdAt}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${exibitionInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
