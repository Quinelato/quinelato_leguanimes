<%@ page import="entities.Producer" %>



<div class="fieldcontain ${hasErrors(bean: producerInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="producer.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${producerInstance?.name}"/>

</div>