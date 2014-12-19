<%@ page import="entities.Exibition" %>



<div class="fieldcontain ${hasErrors(bean: exibitionInstance, field: 'removedAt', 'error')} ">
	<label for="removedAt">
		<g:message code="exibition.removedAt.label" default="Removed At" />
		
	</label>
	<g:datePicker name="removedAt" precision="day"  value="${exibitionInstance?.removedAt}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: exibitionInstance, field: 'createdBy', 'error')} ">
	<label for="createdBy">
		<g:message code="exibition.createdBy.label" default="Created By" />
		
	</label>
	<g:select id="createdBy" name="createdBy.id" from="${entities.User.list()}" optionKey="id" value="${exibitionInstance?.createdBy?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: exibitionInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="exibition.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="type" from="${exibitionInstance.constraints.type.inList}" required="" value="${exibitionInstance?.type}" valueMessagePrefix="exibition.type"/>

</div>

<div class="fieldcontain ${hasErrors(bean: exibitionInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="exibition.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${exibitionInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: exibitionInstance, field: 'active', 'error')} ">
	<label for="active">
		<g:message code="exibition.active.label" default="Active" />
		
	</label>
	<g:checkBox name="active" value="${exibitionInstance?.active}" />

</div>

<div class="fieldcontain ${hasErrors(bean: exibitionInstance, field: 'createdAt', 'error')} required">
	<label for="createdAt">
		<g:message code="exibition.createdAt.label" default="Created At" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdAt" precision="day"  value="${exibitionInstance?.createdAt}"  />

</div>

