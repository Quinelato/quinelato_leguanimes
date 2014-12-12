<%@ page import="entities.Exibition" %>



<div class="fieldcontain ${hasErrors(bean: exibitionInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="exibition.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="type" required="" value="${exibitionInstance?.type}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: exibitionInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="exibition.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${exibitionInstance?.description}"/>

</div>