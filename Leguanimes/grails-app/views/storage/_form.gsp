<%@ page import="entities.Storage" %>



<div class="fieldcontain ${hasErrors(bean: storageInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="storage.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${storageInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: storageInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="storage.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${storageInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: storageInstance, field: 'burnDate', 'error')} ">
	<label for="burnDate">
		<g:message code="storage.burnDate.label" default="Burn Date" />
		
	</label>
	<g:datePicker name="burnDate" precision="day"  value="${storageInstance?.burnDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: storageInstance, field: 'number', 'error')} required">
	<label for="number">
		<g:message code="storage.number.label" default="Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="number" type="number" min="1" value="${storageInstance.number}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: storageInstance, field: 'active', 'error')} ">
	<label for="active">
		<g:message code="storage.active.label" default="Active" />
		
	</label>
	<g:checkBox name="active" value="${storageInstance?.active}" />

</div>

<div class="fieldcontain ${hasErrors(bean: storageInstance, field: 'createdAt', 'error')} required">
	<label for="createdAt">
		<g:message code="storage.createdAt.label" default="Created At" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdAt" precision="day"  value="${storageInstance?.createdAt}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: storageInstance, field: 'createdby', 'error')} required">
	<label for="createdby">
		<g:message code="storage.createdby.label" default="Createdby" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="createdby" name="createdby.id" from="${entities.User.list()}" optionKey="id" required="" value="${storageInstance?.createdby?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: storageInstance, field: 'episodes', 'error')} ">
	<label for="episodes">
		<g:message code="storage.episodes.label" default="Episodes" />
		
	</label>
	<g:select name="episodes" from="${entities.Episode.list()}" multiple="multiple" optionKey="id" size="5" value="${storageInstance?.episodes*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: storageInstance, field: 'removedAt', 'error')} required">
	<label for="removedAt">
		<g:message code="storage.removedAt.label" default="Removed At" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="removedAt" precision="day"  value="${storageInstance?.removedAt}"  />

</div>

