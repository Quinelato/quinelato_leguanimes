
<%@ page import="entities.Opening" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'opening.label', default: 'Opening')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-opening" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-opening" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list opening">
			
				<g:if test="${openingInstance?.removedAt}">
				<li class="fieldcontain">
					<span id="removedAt-label" class="property-label"><g:message code="opening.removedAt.label" default="Removed At" /></span>
					
						<span class="property-value" aria-labelledby="removedAt-label"><g:formatDate date="${openingInstance?.removedAt}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${openingInstance?.createdBy}">
				<li class="fieldcontain">
					<span id="createdBy-label" class="property-label"><g:message code="opening.createdBy.label" default="Created By" /></span>
					
						<span class="property-value" aria-labelledby="createdBy-label"><g:link controller="user" action="show" id="${openingInstance?.createdBy?.id}">${openingInstance?.createdBy?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${openingInstance?.anime}">
				<li class="fieldcontain">
					<span id="anime-label" class="property-label"><g:message code="opening.anime.label" default="Anime" /></span>
					
						<span class="property-value" aria-labelledby="anime-label"><g:link controller="anime" action="show" id="${openingInstance?.anime?.id}">${openingInstance?.anime?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${openingInstance?.band}">
				<li class="fieldcontain">
					<span id="band-label" class="property-label"><g:message code="opening.band.label" default="Band" /></span>
					
						<span class="property-value" aria-labelledby="band-label"><g:fieldValue bean="${openingInstance}" field="band"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${openingInstance?.webAddress}">
				<li class="fieldcontain">
					<span id="webAddress-label" class="property-label"><g:message code="opening.webAddress.label" default="Web Address" /></span>
					
						<span class="property-value" aria-labelledby="webAddress-label"><g:fieldValue bean="${openingInstance}" field="webAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${openingInstance?.song}">
				<li class="fieldcontain">
					<span id="song-label" class="property-label"><g:message code="opening.song.label" default="Song" /></span>
					
						<span class="property-value" aria-labelledby="song-label"><g:fieldValue bean="${openingInstance}" field="song"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${openingInstance?.thumbnail}">
				<li class="fieldcontain">
					<span id="thumbnail-label" class="property-label"><g:message code="opening.thumbnail.label" default="Thumbnail" /></span>
					
						<span class="property-value" aria-labelledby="thumbnail-label"><g:fieldValue bean="${openingInstance}" field="thumbnail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${openingInstance?.number}">
				<li class="fieldcontain">
					<span id="number-label" class="property-label"><g:message code="opening.number.label" default="Number" /></span>
					
						<span class="property-value" aria-labelledby="number-label"><g:fieldValue bean="${openingInstance}" field="number"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${openingInstance?.active}">
				<li class="fieldcontain">
					<span id="active-label" class="property-label"><g:message code="opening.active.label" default="Active" /></span>
					
						<span class="property-value" aria-labelledby="active-label"><g:formatBoolean boolean="${openingInstance?.active}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${openingInstance?.createdAt}">
				<li class="fieldcontain">
					<span id="createdAt-label" class="property-label"><g:message code="opening.createdAt.label" default="Created At" /></span>
					
						<span class="property-value" aria-labelledby="createdAt-label"><g:formatDate date="${openingInstance?.createdAt}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:openingInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${openingInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
