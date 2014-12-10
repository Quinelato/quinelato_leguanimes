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

<div class="fieldcontain ${hasErrors(bean: genderInstance, field: 'createdAt', 'error')} required">
	<label for="createdAt">
		<g:message code="gender.createdAt.label" default="Created At" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdAt" precision="day"  value="${genderInstance?.createdAt}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: genderInstance, field: 'createdby', 'error')} required">
	<label for="createdby">
		<g:message code="gender.createdby.label" default="Createdby" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="createdby" name="createdby.id" from="${entities.User.list()}" optionKey="id" required="" value="${genderInstance?.createdby?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: genderInstance, field: 'removedAt', 'error')} required">
	<label for="removedAt">
		<g:message code="gender.removedAt.label" default="Removed At" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="removedAt" precision="day"  value="${genderInstance?.removedAt}"  />

</div>

