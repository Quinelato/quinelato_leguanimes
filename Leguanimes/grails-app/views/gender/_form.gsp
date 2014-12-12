<%@ page import="entities.Gender" %>

<div class="fieldcontain ${hasErrors(bean: genderInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="gender.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${genderInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: genderInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="gender.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${genderInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: genderInstance, field: 'active', 'error')} ">
	<label for="active">
		<g:message code="gender.active.label" default="Active" />
		
	</label>
	<g:checkBox name="active" value="${genderInstance?.active}" />

</div>

