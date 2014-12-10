
<%@ page import="entities.Producer" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'producer.label', default: 'Producer')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-producer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-producer" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'producer.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="active" title="${message(code: 'producer.active.label', default: 'Active')}" />
					
						<g:sortableColumn property="createdAt" title="${message(code: 'producer.createdAt.label', default: 'Created At')}" />
					
						<th><g:message code="producer.createdby.label" default="Createdby" /></th>
					
						<g:sortableColumn property="removedAt" title="${message(code: 'producer.removedAt.label', default: 'Removed At')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${producerInstanceList}" status="i" var="producerInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${producerInstance.id}">${fieldValue(bean: producerInstance, field: "name")}</g:link></td>
					
						<td><g:formatBoolean boolean="${producerInstance.active}" /></td>
					
						<td><g:formatDate date="${producerInstance.createdAt}" /></td>
					
						<td>${fieldValue(bean: producerInstance, field: "createdby")}</td>
					
						<td><g:formatDate date="${producerInstance.removedAt}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${producerInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
