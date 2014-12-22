<%@ page import="entities.User" %>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="user.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" maxlength="20" required="" value="${userInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" maxlength="20" required="" value="${userInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="user.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${userInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="user.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${userInstance?.firstName}"/>
	<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'lastName', 'error')} required" style="margin: -25px 0 0 400px">
		<label for="lastName">
			<g:message code="user.lastName.label" default="Last Name" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField name="lastName" required="" value="${userInstance?.lastName}"/>
	
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'birthday', 'error')} ">
	<label for="birthday">
		<g:message code="user.birthday.label" default="Birthday" />
		
	</label>
	<g:datePicker name="birthday" precision="day"  value="${userInstance?.birthday}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'avatar', 'error')} ">
	<label for="avatar">
		<g:message code="user.avatar.label" default="Avatar" />
		
	</label>
	<input type="file" id="avatarImage" name="avatarImage" />
</div>
