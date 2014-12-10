<%@ page import="entities.Fansub" %>



<div class="fieldcontain ${hasErrors(bean: fansubInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="fansub.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${fansubInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fansubInstance, field: 'webAddress', 'error')} ">
	<label for="webAddress">
		<g:message code="fansub.webAddress.label" default="Web Address" />
		
	</label>
	<g:textField name="webAddress" value="${fansubInstance?.webAddress}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fansubInstance, field: 'active', 'error')} ">
	<label for="active">
		<g:message code="fansub.active.label" default="Active" />
		
	</label>
	<g:checkBox name="active" value="${fansubInstance?.active}" />

</div>

<div class="fieldcontain ${hasErrors(bean: fansubInstance, field: 'createdAt', 'error')} required">
	<label for="createdAt">
		<g:message code="fansub.createdAt.label" default="Created At" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdAt" precision="day"  value="${fansubInstance?.createdAt}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: fansubInstance, field: 'createdby', 'error')} required">
	<label for="createdby">
		<g:message code="fansub.createdby.label" default="Createdby" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="createdby" name="createdby.id" from="${entities.User.list()}" optionKey="id" required="" value="${fansubInstance?.createdby?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fansubInstance, field: 'removedAt', 'error')} required">
	<label for="removedAt">
		<g:message code="fansub.removedAt.label" default="Removed At" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="removedAt" precision="day"  value="${fansubInstance?.removedAt}"  />

</div>

