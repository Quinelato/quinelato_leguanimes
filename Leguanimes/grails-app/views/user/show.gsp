
<%@ page import="entities.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(action: 'index')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-user" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list user">
			
				<g:if test="${userInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="user.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${userInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="user.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${userInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="user.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${userInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.birthday}">
				<li class="fieldcontain">
					<span id="birthday-label" class="property-label"><g:message code="user.birthday.label" default="Birthday" /></span>
					
						<span class="property-value" aria-labelledby="birthday-label"><g:formatDate date="${userInstance?.birthday}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.avatar}">
				<li class="fieldcontain">
					<span id="avatar-label" class="property-label"><g:message code="user.avatar.label" default="Avatar" /></span>
					
						<span class="property-value" aria-labelledby="avatar-label"><g:fieldValue bean="${userInstance}" field="avatar"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="user.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${userInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="user.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${userInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.createdAt}">
				<li class="fieldcontain">
					<span id="createdAt-label" class="property-label"><g:message code="user.createdAt.label" default="Created At" /></span>
					
						<span class="property-value" aria-labelledby="createdAt-label"><g:formatDate date="${userInstance?.createdAt}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.removedAt}">
				<li class="fieldcontain">
					<span id="removedAt-label" class="property-label"><g:message code="user.removedAt.label" default="Removed At" /></span>
					
						<span class="property-value" aria-labelledby="removedAt-label"><g:formatDate date="${userInstance?.removedAt}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.active}">
				<li class="fieldcontain">
					<span id="active-label" class="property-label"><g:message code="user.active.label" default="Active" /></span>
					
						<span class="property-value" aria-labelledby="active-label"><g:formatBoolean boolean="${userInstance?.active}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.blockedAccount}">
				<li class="fieldcontain">
					<span id="blockedAccount-label" class="property-label"><g:message code="user.blockedAccount.label" default="Blocked Account" /></span>
					
						<span class="property-value" aria-labelledby="blockedAccount-label"><g:formatBoolean boolean="${userInstance?.blockedAccount}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.expiredAccount}">
				<li class="fieldcontain">
					<span id="expiredAccount-label" class="property-label"><g:message code="user.expiredAccount.label" default="Expired Account" /></span>
					
						<span class="property-value" aria-labelledby="expiredAccount-label"><g:formatBoolean boolean="${userInstance?.expiredAccount}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.expiredPassword}">
				<li class="fieldcontain">
					<span id="expiredPassword-label" class="property-label"><g:message code="user.expiredPassword.label" default="Expired Password" /></span>
					
						<span class="property-value" aria-labelledby="expiredPassword-label"><g:formatBoolean boolean="${userInstance?.expiredPassword}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.role}">
				<li class="fieldcontain">
					<span id="role-label" class="property-label"><g:message code="user.role.label" default="Role" /></span>
					
						<span class="property-value" aria-labelledby="role-label"><g:link controller="role" action="show" id="${userInstance?.role?.id}">${userInstance?.role?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:userInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${userInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
