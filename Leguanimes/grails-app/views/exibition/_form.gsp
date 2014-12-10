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

<div class="fieldcontain ${hasErrors(bean: exibitionInstance, field: 'createdby', 'error')} required">
	<label for="createdby">
		<g:message code="exibition.createdby.label" default="Createdby" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="createdby" name="createdby.id" from="${entities.User.list()}" optionKey="id" required="" value="${exibitionInstance?.createdby?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: exibitionInstance, field: 'removedAt', 'error')} required">
	<label for="removedAt">
		<g:message code="exibition.removedAt.label" default="Removed At" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="removedAt" precision="day"  value="${exibitionInstance?.removedAt}"  />

</div>

