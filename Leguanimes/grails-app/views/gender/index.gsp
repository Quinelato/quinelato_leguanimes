
<%@ page import="entities.Gender" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'gender.label', default: 'Gender')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-gender" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(action: 'index')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-gender" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="removedAt" title="${message(code: 'gender.removedAt.label', default: 'Removed At')}" />
					
						<th><g:message code="gender.createdBy.label" default="Created By" /></th>
					
						<g:sortableColumn property="name" title="${message(code: 'gender.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'gender.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="active" title="${message(code: 'gender.active.label', default: 'Active')}" />
					
						<g:sortableColumn property="createdAt" title="${message(code: 'gender.createdAt.label', default: 'Created At')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${genderInstanceList}" status="i" var="genderInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${genderInstance.id}">${fieldValue(bean: genderInstance, field: "removedAt")}</g:link></td>
					
						<td>${fieldValue(bean: genderInstance, field: "createdBy")}</td>
					
						<td>${fieldValue(bean: genderInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: genderInstance, field: "description")}</td>
					
						<td><g:formatBoolean boolean="${genderInstance.active}" /></td>
					
						<td><g:formatDate date="${genderInstance.createdAt}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${genderInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
