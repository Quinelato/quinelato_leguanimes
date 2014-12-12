
<%@ page import="entities.Anime" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'anime.label', default: 'Anime')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-anime" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-anime" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
										
						<g:sortableColumn property="title" title="${message(code: 'anime.title.label', default: 'Title')}" />
						
						<g:sortableColumn property="startDate" title="${message(code: 'anime.startDate.label', default: 'Start Date')}" />
					
						<g:sortableColumn property="endDate" title="${message(code: 'anime.endDate.label', default: 'End Date')}" />
					
						<g:sortableColumn property="ageRating" title="${message(code: 'anime.ageRating.label', default: 'Age Rating')}" />
					
						<th><g:message code="anime.exibition.label" default="Exibition" /></th>
					
						<g:sortableColumn property="active" title="${message(code: 'anime.active.label', default: 'Active')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${animeInstanceList}" status="i" var="animeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
										
						<td><g:link action="show" id="${animeInstance.id}">${fieldValue(bean: animeInstance, field: "title")}</g:link></td>
					
						<td>${fieldValue(bean: animeInstance, field: "startDate")}</td>
					
						<td><g:formatDate date="${animeInstance.endDate}" /></td>
					
						<td>${fieldValue(bean: animeInstance, field: "ageRating")}</td>
					
						<td>${fieldValue(bean: animeInstance, field: "exibition")}</td>
					
						<td><g:formatBoolean boolean="${animeInstance.active}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${animeInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>