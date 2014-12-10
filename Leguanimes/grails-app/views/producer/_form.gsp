<%@ page import="entities.Producer" %>



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

<div class="fieldcontain ${hasErrors(bean: producerInstance, field: 'createdby', 'error')} required">
	<label for="createdby">
		<g:message code="producer.createdby.label" default="Createdby" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="createdby" name="createdby.id" from="${entities.User.list()}" optionKey="id" required="" value="${producerInstance?.createdby?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: producerInstance, field: 'removedAt', 'error')} required">
	<label for="removedAt">
		<g:message code="producer.removedAt.label" default="Removed At" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="removedAt" precision="day"  value="${producerInstance?.removedAt}"  />

</div>

