<%@ page import="entities.Opening" %>



<div class="fieldcontain ${hasErrors(bean: openingInstance, field: 'anime', 'error')} required">
	<label for="anime">
		<g:message code="opening.anime.label" default="Anime" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="anime" name="anime.id" from="${entities.Anime.list()}" optionKey="id" required="" value="${openingInstance?.anime?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: openingInstance, field: 'band', 'error')} required">
	<label for="band">
		<g:message code="opening.band.label" default="Band" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="band" required="" value="${openingInstance?.band}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: openingInstance, field: 'webAddress', 'error')} required">
	<label for="webAddress">
		<g:message code="opening.webAddress.label" default="Web Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="webAddress" required="" value="${openingInstance?.webAddress}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: openingInstance, field: 'song', 'error')} required">
	<label for="song">
		<g:message code="opening.song.label" default="Song" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="song" required="" value="${openingInstance?.song}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: openingInstance, field: 'thumbnail', 'error')} ">
	<label for="thumbnail">
		<g:message code="opening.thumbnail.label" default="Thumbnail" />
		
	</label>
	<g:textField name="thumbnail" value="${openingInstance?.thumbnail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: openingInstance, field: 'number', 'error')} required">
	<label for="number">
		<g:message code="opening.number.label" default="Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="number" type="number" min="1" value="${openingInstance.number}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: openingInstance, field: 'active', 'error')} ">
	<label for="active">
		<g:message code="opening.active.label" default="Active" />
		
	</label>
	<g:checkBox name="active" value="${openingInstance?.active}" />

</div>

<div class="fieldcontain ${hasErrors(bean: openingInstance, field: 'createdAt', 'error')} required">
	<label for="createdAt">
		<g:message code="opening.createdAt.label" default="Created At" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdAt" precision="day"  value="${openingInstance?.createdAt}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: openingInstance, field: 'createdby', 'error')} required">
	<label for="createdby">
		<g:message code="opening.createdby.label" default="Createdby" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="createdby" name="createdby.id" from="${entities.User.list()}" optionKey="id" required="" value="${openingInstance?.createdby?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: openingInstance, field: 'removedAt', 'error')} required">
	<label for="removedAt">
		<g:message code="opening.removedAt.label" default="Removed At" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="removedAt" precision="day"  value="${openingInstance?.removedAt}"  />

</div>

