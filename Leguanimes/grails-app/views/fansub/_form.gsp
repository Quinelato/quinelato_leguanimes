<%@ page import="entities.Fansub" %>



<div class="fieldcontain ${hasErrors(bean: fansubInstance, field: 'removedAt', 'error')} ">
	<label for="removedAt">
		<g:message code="fansub.removedAt.label" default="Removed At" />
		
	</label>
	<g:datePicker name="removedAt" precision="day"  value="${fansubInstance?.removedAt}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: fansubInstance, field: 'createdBy', 'error')} ">
	<label for="createdBy">
		<g:message code="fansub.createdBy.label" default="Created By" />
		
	</label>
	<g:select id="createdBy" name="createdBy.id" from="${entities.User.list()}" optionKey="id" value="${fansubInstance?.createdBy?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

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

