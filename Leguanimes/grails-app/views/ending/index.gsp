
<%@ page import="entities.Ending"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'ending.label', default: 'Ending')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	<a href="#list-ending" class="skip" tabindex="-1"><g:message
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
	<div id="list-ending" class="content scaffold-list" role="main">
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
						title="${message(code: 'ending.number.label', default: 'Number')}" />
						
					<th><g:message code="ending.anime.label" default="Anime" /></th>

					<g:sortableColumn property="band"
						title="${message(code: 'ending.band.label', default: 'Band')}" />

					<g:sortableColumn property="song"
						title="${message(code: 'ending.song.label', default: 'Song')}" />
						
					<g:sortableColumn property="webAddress"
						title="${message(code: 'ending.webAddress.label', default: 'Web Address')}" />
						
					<g:sortableColumn property="thumbnail"
						title="${message(code: 'ending.thumbnail.label', default: 'Thumbnail')}" />
						
					<th><g:message code="ending.createdAt.label" default="Created At" /></th>
						
					<th><g:message code="ending.removedAt.label" default="Removed At" /></th>
						
					<th><g:message code="ending.createdBy.label" default="Created By" /></th>
					
					<th><g:message code="ending.active.label" default="Active" /></th>

				</tr>
			</thead>
			<tbody>
				<g:each in="${endingInstanceList}" status="i" var="endingInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td><g:link action="show" id="${endingInstance.id}">
								${fieldValue(bean: endingInstance, field: "number")}
							</g:link></td>

						<td>
							${fieldValue(bean: endingInstance, field: "anime")}
						</td>

						<td>
							${fieldValue(bean: endingInstance, field: "band")}
						</td>

						<td>
							${fieldValue(bean: endingInstance, field: "song")}
						</td>
						
						<td>
							${fieldValue(bean: endingInstance, field: "webAddress")}
						</td>
						
						<td>
							${fieldValue(bean: endingInstance, field: "thumbnail")}
						</td>
						
						<td>
							${fieldValue(bean: endingInstance, field: "createdAt")}
						</td>
						
						<td>
							${fieldValue(bean: endingInstance, field: "removedAt")}
						</td>
						
						<td>
							${fieldValue(bean: endingInstance, field: "createdBy")}
						</td>
						
						<td>
							${fieldValue(bean: endingInstance, field: "active")}
						</td>
					</tr>
				</g:each>
			</tbody>
		</table>
		<div class="pagination">
			<g:paginate total="${endingInstanceCount ?: 0}" />
		</div>
	</div>
</body>
</html>
