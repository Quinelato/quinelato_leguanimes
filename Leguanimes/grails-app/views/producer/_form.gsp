<%@ page import="entities.Producer" %>



<div class="fieldcontain ${hasErrors(bean: producerInstance, field: 'removedAt', 'error')} ">
	<label for="removedAt">
		<g:message code="producer.removedAt.label" default="Removed At" />
		
	</label>
	<g:datePicker name="removedAt" precision="day"  value="${producerInstance?.removedAt}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: producerInstance, field: 'createdBy', 'error')} ">
	<label for="createdBy">
		<g:message code="producer.createdBy.label" default="Created By" />
		
	</label>
	<g:select id="createdBy" name="createdBy.id" from="${entities.User.list()}" optionKey="id" value="${producerInstance?.createdBy?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: producerInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="producer.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${producerInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: producerInstance, field: 'active', 'error')} ">
	<label for="active">
		<g:message code="producer.active.label" default="Active" />
		
	</label>
	<g:checkBox name="active" value="${producerInstance?.active}" />

</div>

<div class="fieldcontain ${hasErrors(bean: producerInstance, field: 'createdAt', 'error')} required">
	<label for="createdAt">
		<g:message code="producer.createdAt.label" default="Created At" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdAt" precision="day"  value="${producerInstance?.createdAt}"  />

</div>

