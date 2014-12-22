
<%@ page import="entities.Storage" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'storage.label', default: 'Storage')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-storage" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(action: 'index')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-storage" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="removedAt" title="${message(code: 'storage.removedAt.label', default: 'Removed At')}" />
					
						<th><g:message code="storage.createdBy.label" default="Created By" /></th>
					
						<g:sortableColumn property="name" title="${message(code: 'storage.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'storage.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="burnDate" title="${message(code: 'storage.burnDate.label', default: 'Burn Date')}" />
					
						<g:sortableColumn property="number" title="${message(code: 'storage.number.label', default: 'Number')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${storageInstanceList}" status="i" var="storageInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${storageInstance.id}">${fieldValue(bean: storageInstance, field: "removedAt")}</g:link></td>
					
						<td>${fieldValue(bean: storageInstance, field: "createdBy")}</td>
					
						<td>${fieldValue(bean: storageInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: storageInstance, field: "description")}</td>
					
						<td><g:formatDate date="${storageInstance.burnDate}" /></td>
					
						<td>${fieldValue(bean: storageInstance, field: "number")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${storageInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
