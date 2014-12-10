
<%@ page import="entities.Fansub" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'fansub.label', default: 'Fansub')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-fansub" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-fansub" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list fansub">
			
				<g:if test="${fansubInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="fansub.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${fansubInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fansubInstance?.webAddress}">
				<li class="fieldcontain">
					<span id="webAddress-label" class="property-label"><g:message code="fansub.webAddress.label" default="Web Address" /></span>
					
						<span class="property-value" aria-labelledby="webAddress-label"><g:fieldValue bean="${fansubInstance}" field="webAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fansubInstance?.active}">
				<li class="fieldcontain">
					<span id="active-label" class="property-label"><g:message code="fansub.active.label" default="Active" /></span>
					
						<span class="property-value" aria-labelledby="active-label"><g:formatBoolean boolean="${fansubInstance?.active}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${fansubInstance?.createdAt}">
				<li class="fieldcontain">
					<span id="createdAt-label" class="property-label"><g:message code="fansub.createdAt.label" default="Created At" /></span>
					
						<span class="property-value" aria-labelledby="createdAt-label"><g:formatDate date="${fansubInstance?.createdAt}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${fansubInstance?.createdby}">
				<li class="fieldcontain">
					<span id="createdby-label" class="property-label"><g:message code="fansub.createdby.label" default="Createdby" /></span>
					
						<span class="property-value" aria-labelledby="createdby-label"><g:link controller="user" action="show" id="${fansubInstance?.createdby?.id}">${fansubInstance?.createdby?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${fansubInstance?.removedAt}">
				<li class="fieldcontain">
					<span id="removedAt-label" class="property-label"><g:message code="fansub.removedAt.label" default="Removed At" /></span>
					
						<span class="property-value" aria-labelledby="removedAt-label"><g:formatDate date="${fansubInstance?.removedAt}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:fansubInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${fansubInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
