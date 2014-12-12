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
