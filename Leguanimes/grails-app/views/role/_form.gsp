<%@ page import="entities.Role" %>



<div class="fieldcontain ${hasErrors(bean: roleInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="role.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="type" from="${roleInstance.constraints.type.inList}" required="" value="${roleInstance?.type}" valueMessagePrefix="role.type"/>

</div>

