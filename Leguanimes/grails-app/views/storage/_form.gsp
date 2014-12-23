<%@ page import="entities.Storage"%>

<div
	class="fieldcontain ${hasErrors(bean: storageInstance, field: 'name', 'error')} required">
	<label for="name"> <g:message code="storage.name.label"
			default="Name" /> <span class="required-indicator">*</span>
	</label>
	<g:select name="name" from="${storageInstance.constraints.name.inList}"
		required="" value="${storageInstance?.name}"
		valueMessagePrefix="storage.name" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: storageInstance, field: 'description', 'error')} ">
	<label for="description"> <g:message
			code="storage.description.label" default="Description" />

	</label>
	<g:textField name="description" value="${storageInstance?.description}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: storageInstance, field: 'number', 'error')} required">
	<label for="number"> <g:message code="storage.number.label"
			default="Number" /> <span class="required-indicator">*</span>
	</label>
	<g:field name="number" type="number" min="1"
		value="${storageInstance.number}" required="" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: storageInstance, field: 'burnDate', 'error')} ">
	<label for="burnDate"> <g:message code="storage.burnDate.label"
			default="Burn Date" />

	</label>
	<g:datePicker name="burnDate" precision="day"
		value="${storageInstance?.burnDate}" default="none"
		noSelection="['': '']" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: storageInstance, field: 'episodes', 'error')} ">
	<label for="episodes"> <g:message code="storage.episodes.label"
			default="Episodes" />

	</label>
	<g:select name="episodes" from="${entities.Episode.list()}"
		multiple="multiple" optionKey="id" size="5"
		value="${storageInstance?.episodes*.id}" class="many-to-many" />

</div>

