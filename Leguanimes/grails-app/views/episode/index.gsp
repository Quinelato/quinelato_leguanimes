
<%@ page import="entities.Episode"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'episode.label', default: 'Episode')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	<a href="#list-episode" class="skip" tabindex="-1"><g:message
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
	<div id="list-episode" class="content scaffold-list" role="main">
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
					<g:sortableColumn property="title"
						title="${message(code: 'episode.title.label', default: 'Title')}" />
				
					<th><g:message code="episode.anime.label" default="Anime" /></th>
										
					<g:sortableColumn property="number"
						title="${message(code: 'episode.number.label', default: 'Number')}" />
						
					<g:sortableColumn property="width"
						title="${message(code: 'episode.width.label', default: 'Width')}" />
						
					<g:sortableColumn property="height"
						title="${message(code: 'episode.height.label', default: 'Height')}" />
						
					<g:sortableColumn property="duration"
						title="${message(code: 'episode.duration.label', default: 'Duration')}" />

					<g:sortableColumn property="size"
						title="${message(code: 'episode.size.label', default: 'Size')}" />
						
					<g:sortableColumn property="extension"
						title="${message(code: 'episode.extension.label', default: 'Extension')}" />

					<g:sortableColumn property="quality"
						title="${message(code: 'episode.quality.label', default: 'Quality')}" />
						
					<g:sortableColumn property="codec"
						title="${message(code: 'episode.codec.label', default: 'Codec')}" />
					
					<g:sortableColumn property="createdAt"
						title="${message(code: 'episode.createdAt.label', default: 'Created At')}" />

					<g:sortableColumn property="removedAt"
						title="${message(code: 'episode.removedAt.label', default: 'Removed At')}" />

					<th><g:message code="episode.createdBy.label"
							default="Created By" /></th>
					
					<g:sortableColumn property="active"
						title="${message(code: 'episode.active.label', default: 'Active')}" />

				</tr>
			</thead>
			<tbody>
				<g:each in="${episodeInstanceList}" status="i" var="episodeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td><g:link action="show" id="${episodeInstance.id}">
								${fieldValue(bean: episodeInstance, field: "title")}
							</g:link></td>

						<td>
							${fieldValue(bean: episodeInstance, field: "anime")}
						</td>
						
						<td>
							${fieldValue(bean: episodeInstance, field: "number")}
						</td>

						<td>
							${fieldValue(bean: episodeInstance, field: "width")}
						</td>
									
						<td>
							${fieldValue(bean: episodeInstance, field: "height")}
						</td>
									
						<td>
							${fieldValue(bean: episodeInstance, field: "duration")}
						</td>

						<td>
							${fieldValue(bean: episodeInstance, field: "size")}
						</td>
															
						<td>
							${fieldValue(bean: episodeInstance, field: "extension")}
						</td>
															
						<td>
							${fieldValue(bean: episodeInstance, field: "quality")}
						</td>
															
						<td>
							${fieldValue(bean: episodeInstance, field: "codec")}
						</td>
			
						<td><g:formatDate date="${episodeInstance.createdAt}" /></td>
						
						<td><g:formatDate date="${episodeInstance.removedAt}" /></td>

						<td>
							${fieldValue(bean: episodeInstance, field: "createdBy")}
						</td>

						<td><g:formatBoolean boolean="${episodeInstance.active}" /></td>

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
