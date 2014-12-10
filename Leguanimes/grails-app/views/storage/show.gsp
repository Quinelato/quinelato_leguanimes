
<%@ page import="entities.Storage" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'storage.label', default: 'Storage')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-storage" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-storage" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list storage">
			
				<g:if test="${storageInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="storage.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${storageInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${storageInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="storage.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${storageInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${storageInstance?.burnDate}">
				<li class="fieldcontain">
					<span id="burnDate-label" class="property-label"><g:message code="storage.burnDate.label" default="Burn Date" /></span>
					
						<span class="property-value" aria-labelledby="burnDate-label"><g:formatDate date="${storageInstance?.burnDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${storageInstance?.number}">
				<li class="fieldcontain">
					<span id="number-label" class="property-label"><g:message code="storage.number.label" default="Number" /></span>
					
						<span class="property-value" aria-labelledby="number-label"><g:fieldValue bean="${storageInstance}" field="number"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${storageInstance?.active}">
				<li class="fieldcontain">
					<span id="active-label" class="property-label"><g:message code="storage.active.label" default="Active" /></span>
					
						<span class="property-value" aria-labelledby="active-label"><g:formatBoolean boolean="${storageInstance?.active}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${storageInstance?.createdAt}">
				<li class="fieldcontain">
					<span id="createdAt-label" class="property-label"><g:message code="storage.createdAt.label" default="Created At" /></span>
					
						<span class="property-value" aria-labelledby="createdAt-label"><g:formatDate date="${storageInstance?.createdAt}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${storageInstance?.createdby}">
				<li class="fieldcontain">
					<span id="createdby-label" class="property-label"><g:message code="storage.createdby.label" default="Createdby" /></span>
					
						<span class="property-value" aria-labelledby="createdby-label"><g:link controller="user" action="show" id="${storageInstance?.createdby?.id}">${storageInstance?.createdby?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${storageInstance?.episodes}">
				<li class="fieldcontain">
					<span id="episodes-label" class="property-label"><g:message code="storage.episodes.label" default="Episodes" /></span>
					
						<g:each in="${storageInstance.episodes}" var="e">
						<span class="property-value" aria-labelledby="episodes-label"><g:link controller="episode" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${storageInstance?.removedAt}">
				<li class="fieldcontain">
					<span id="removedAt-label" class="property-label"><g:message code="storage.removedAt.label" default="Removed At" /></span>
					
						<span class="property-value" aria-labelledby="removedAt-label"><g:formatDate date="${storageInstance?.removedAt}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:storageInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${storageInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
