<%@ page import="entities.Exibition"%>

<div
	class="fieldcontain ${hasErrors(bean: exibitionInstance, field: 'type', 'error')} required">
	<label for="type"> <g:message code="exibition.type.label"
			default="Type" /> <span class="required-indicator">*</span>
	</label>
	<g:select name="type"
		from="${exibitionInstance.constraints.type.inList}" required=""
		value="${exibitionInstance?.type}" valueMessagePrefix="exibition.type" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: exibitionInstance, field: 'description', 'error')} ">
	<label for="description"> <g:message
			code="exibition.description.label" default="Description" />

	</label>
	<g:textField name="description"
		value="${exibitionInstance?.description}" />

</div>
