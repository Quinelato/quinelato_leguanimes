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