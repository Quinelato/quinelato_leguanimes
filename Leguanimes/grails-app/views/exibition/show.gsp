
<%@ page import="entities.Exibition"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'exibition.label', default: 'Exibition')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
	<a href="#show-exibition" class="skip" tabindex="-1"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(action: 'index', controller:'manager')}"><g:message
						code="default.home.label" /></a></li>
			<li><g:link class="list" action="index">
					<g:message code="default.list.label" args="[entityName]" />
				</g:link></li>
			<li><g:link class="create" action="create">
					<g:message code="default.new.label" args="[entityName]" />
				</g:link></li>
		</ul>
	</div>
	<div id="show-exibition" class="content scaffold-show" role="main">
		<h1>
			<g:message code="default.show.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<ol class="property-list exibition">
		
			<g:if test="${exibitionInstance?.type}">
				<li class="fieldcontain"><span id="type-label"
					class="property-label"><g:message
							code="exibition.type.label" default="Type" /></span> <span
					class="property-value" aria-labelledby="type-label"><g:fieldValue
							bean="${exibitionInstance}" field="type" /></span></li>
			</g:if>

			<g:if test="${exibitionInstance?.description}">
				<li class="fieldcontain"><span id="description-label"
					class="property-label"><g:message
							code="exibition.description.label" default="Description" /></span> <span
					class="property-value" aria-labelledby="description-label"><g:fieldValue
							bean="${exibitionInstance}" field="description" /></span></li>
			</g:if>
			
			<g:if test="${exibitionInstance?.createdAt}">
				<li class="fieldcontain"><span id="createdAt-label"
					class="property-label"><g:message
							code="exibition.createdAt.label" default="Created At" /></span> <span
					class="property-value" aria-labelledby="createdAt-label"><g:formatDate
							date="${exibitionInstance?.createdAt}" /></span></li>
			</g:if>

			<g:if test="${exibitionInstance?.removedAt}">
				<li class="fieldcontain"><span id="removedAt-label"
					class="property-label"><g:message
							code="exibition.removedAt.label" default="Removed At" /></span> <span
					class="property-value" aria-labelledby="removedAt-label"><g:formatDate
							date="${exibitionInstance?.removedAt}" /></span></li>
			</g:if>

			<g:if test="${exibitionInstance?.createdBy}">
				<li class="fieldcontain"><span id="createdBy-label"
					class="property-label"><g:message
							code="exibition.createdBy.label" default="Created By" /></span> <span
					class="property-value" aria-labelledby="createdBy-label"><g:link
							controller="user" action="show"
							id="${exibitionInstance?.createdBy?.id}">
							${exibitionInstance?.createdBy?.encodeAsHTML()}
						</g:link></span></li>
			</g:if>

			<g:if test="${exibitionInstance?.active}">
				<li class="fieldcontain"><span id="active-label"
					class="property-label"><g:message
							code="exibition.active.label" default="Active" /></span> <span
					class="property-value" aria-labelledby="active-label"><g:formatBoolean
							boolean="${exibitionInstance?.active}" /></span></li>
			</g:if>
		</ol>
		<g:form url="[resource:exibitionInstance, action:'delete']"
			method="DELETE">
			<fieldset class="buttons">
				<g:link class="edit" action="edit" resource="${exibitionInstance}">
					<g:message code="default.button.edit.label" default="Edit" />
				</g:link>
				<g:actionSubmit class="delete" action="delete"
					value="${message(code: 'default.button.delete.label', default: 'Delete')}"
					onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
			</fieldset>
		</g:form>
	</div>
</body>
</html>
