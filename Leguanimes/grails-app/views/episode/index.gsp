
<%@ page import="entities.Episode" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'episode.label', default: 'Episode')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-episode" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(action: 'index')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-episode" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="removedAt" title="${message(code: 'episode.removedAt.label', default: 'Removed At')}" />
					
						<th><g:message code="episode.createdBy.label" default="Created By" /></th>
					
						<th><g:message code="episode.anime.label" default="Anime" /></th>
					
						<g:sortableColumn property="duration" title="${message(code: 'episode.duration.label', default: 'Duration')}" />
					
						<g:sortableColumn property="size" title="${message(code: 'episode.size.label', default: 'Size')}" />
					
						<g:sortableColumn property="height" title="${message(code: 'episode.height.label', default: 'Height')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${episodeInstanceList}" status="i" var="episodeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${episodeInstance.id}">${fieldValue(bean: episodeInstance, field: "removedAt")}</g:link></td>
					
						<td>${fieldValue(bean: episodeInstance, field: "createdBy")}</td>
					
						<td>${fieldValue(bean: episodeInstance, field: "anime")}</td>
					
						<td>${fieldValue(bean: episodeInstance, field: "duration")}</td>
					
						<td>${fieldValue(bean: episodeInstance, field: "size")}</td>
					
						<td>${fieldValue(bean: episodeInstance, field: "height")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${episodeInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
