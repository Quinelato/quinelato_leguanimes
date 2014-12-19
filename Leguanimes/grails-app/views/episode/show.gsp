
<%@ page import="entities.Episode" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'episode.label', default: 'Episode')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-episode" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-episode" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list episode">
			
				<g:if test="${episodeInstance?.removedAt}">
				<li class="fieldcontain">
					<span id="removedAt-label" class="property-label"><g:message code="episode.removedAt.label" default="Removed At" /></span>
					
						<span class="property-value" aria-labelledby="removedAt-label"><g:formatDate date="${episodeInstance?.removedAt}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${episodeInstance?.createdBy}">
				<li class="fieldcontain">
					<span id="createdBy-label" class="property-label"><g:message code="episode.createdBy.label" default="Created By" /></span>
					
						<span class="property-value" aria-labelledby="createdBy-label"><g:link controller="user" action="show" id="${episodeInstance?.createdBy?.id}">${episodeInstance?.createdBy?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${episodeInstance?.anime}">
				<li class="fieldcontain">
					<span id="anime-label" class="property-label"><g:message code="episode.anime.label" default="Anime" /></span>
					
						<span class="property-value" aria-labelledby="anime-label"><g:link controller="anime" action="show" id="${episodeInstance?.anime?.id}">${episodeInstance?.anime?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${episodeInstance?.duration}">
				<li class="fieldcontain">
					<span id="duration-label" class="property-label"><g:message code="episode.duration.label" default="Duration" /></span>
					
						<span class="property-value" aria-labelledby="duration-label"><g:fieldValue bean="${episodeInstance}" field="duration"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${episodeInstance?.size}">
				<li class="fieldcontain">
					<span id="size-label" class="property-label"><g:message code="episode.size.label" default="Size" /></span>
					
						<span class="property-value" aria-labelledby="size-label"><g:fieldValue bean="${episodeInstance}" field="size"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${episodeInstance?.height}">
				<li class="fieldcontain">
					<span id="height-label" class="property-label"><g:message code="episode.height.label" default="Height" /></span>
					
						<span class="property-value" aria-labelledby="height-label"><g:fieldValue bean="${episodeInstance}" field="height"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${episodeInstance?.number}">
				<li class="fieldcontain">
					<span id="number-label" class="property-label"><g:message code="episode.number.label" default="Number" /></span>
					
						<span class="property-value" aria-labelledby="number-label"><g:fieldValue bean="${episodeInstance}" field="number"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${episodeInstance?.width}">
				<li class="fieldcontain">
					<span id="width-label" class="property-label"><g:message code="episode.width.label" default="Width" /></span>
					
						<span class="property-value" aria-labelledby="width-label"><g:fieldValue bean="${episodeInstance}" field="width"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${episodeInstance?.extension}">
				<li class="fieldcontain">
					<span id="extension-label" class="property-label"><g:message code="episode.extension.label" default="Extension" /></span>
					
						<span class="property-value" aria-labelledby="extension-label"><g:fieldValue bean="${episodeInstance}" field="extension"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${episodeInstance?.quality}">
				<li class="fieldcontain">
					<span id="quality-label" class="property-label"><g:message code="episode.quality.label" default="Quality" /></span>
					
						<span class="property-value" aria-labelledby="quality-label"><g:fieldValue bean="${episodeInstance}" field="quality"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${episodeInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="episode.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${episodeInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${episodeInstance?.codec}">
				<li class="fieldcontain">
					<span id="codec-label" class="property-label"><g:message code="episode.codec.label" default="Codec" /></span>
					
						<span class="property-value" aria-labelledby="codec-label"><g:fieldValue bean="${episodeInstance}" field="codec"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${episodeInstance?.active}">
				<li class="fieldcontain">
					<span id="active-label" class="property-label"><g:message code="episode.active.label" default="Active" /></span>
					
						<span class="property-value" aria-labelledby="active-label"><g:formatBoolean boolean="${episodeInstance?.active}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${episodeInstance?.createdAt}">
				<li class="fieldcontain">
					<span id="createdAt-label" class="property-label"><g:message code="episode.createdAt.label" default="Created At" /></span>
					
						<span class="property-value" aria-labelledby="createdAt-label"><g:formatDate date="${episodeInstance?.createdAt}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${episodeInstance?.storages}">
				<li class="fieldcontain">
					<span id="storages-label" class="property-label"><g:message code="episode.storages.label" default="Storages" /></span>
					
						<g:each in="${episodeInstance.storages}" var="s">
						<span class="property-value" aria-labelledby="storages-label"><g:link controller="storage" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:episodeInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${episodeInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
