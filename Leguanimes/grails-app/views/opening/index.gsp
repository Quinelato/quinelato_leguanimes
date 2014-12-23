
<%@ page import="entities.Opening"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'opening.label', default: 'Opening')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	<a href="#list-opening" class="skip" tabindex="-1"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(action: 'index', controller:'manager')}"><g:message
						code="default.home.label" /></a></li>
			<li><g:link class="create" action="create">
					<g:message code="default.new.label" args="[entityName]" />
				</g:link></li>
		</ul>
	</div>
	<div id="list-opening" class="content scaffold-list" role="main">
		<h1>
			<g:message code="default.list.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<table>
			<thead>
				<tr>

					<g:sortableColumn property="number"
						title="${message(code: 'opening.number.label', default: 'Number')}" />
						
					<th><g:message code="opening.anime.label" default="Anime" /></th>

					<g:sortableColumn property="band"
						title="${message(code: 'opening.band.label', default: 'Band')}" />

					<g:sortableColumn property="song"
						title="${message(code: 'opening.song.label', default: 'Song')}" />
						
					<g:sortableColumn property="webAddress"
						title="${message(code: 'opening.webAddress.label', default: 'Web Address')}" />
						
					<g:sortableColumn property="thumbnail"
						title="${message(code: 'opening.thumbnail.label', default: 'Thumbnail')}" />
						
					<th><g:message code="opening.createdAt.label" default="Created At" /></th>
						
					<th><g:message code="opening.removedAt.label" default="Removed At" /></th>
						
					<th><g:message code="opening.createdBy.label" default="Created By" /></th>
					
					<th><g:message code="opening.active.label" default="Active" /></th>

				</tr>
			</thead>
			<tbody>
				<g:each in="${openingInstanceList}" status="i" var="openingInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td><g:link action="show" id="${openingInstance.id}">
								${fieldValue(bean: openingInstance, field: "number")}
							</g:link></td>

						<td>
							${fieldValue(bean: openingInstance, field: "anime")}
						</td>

						<td>
							${fieldValue(bean: openingInstance, field: "band")}
						</td>

						<td>
							${fieldValue(bean: openingInstance, field: "song")}
						</td>
						
						<td>
							${fieldValue(bean: openingInstance, field: "webAddress")}
						</td>
						
						<td>
							${fieldValue(bean: openingInstance, field: "thumbnail")}
						</td>
						
						<td>
							${fieldValue(bean: openingInstance, field: "createdAt")}
						</td>
						
						<td>
							${fieldValue(bean: openingInstance, field: "removedAt")}
						</td>
						
						<td>
							${fieldValue(bean: openingInstance, field: "createdBy")}
						</td>
						
						<td>
							${fieldValue(bean: openingInstance, field: "active")}
						</td>
					</tr>
				</g:each>
			</tbody>
		</table>
		<div class="pagination">
			<g:paginate total="${openingInstanceCount ?: 0}" />
		</div>
	</div>
</body>
</html>
