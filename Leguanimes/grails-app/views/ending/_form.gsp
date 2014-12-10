<%@ page import="entities.Ending" %>



<div class="fieldcontain ${hasErrors(bean: endingInstance, field: 'anime', 'error')} required">
	<label for="anime">
		<g:message code="ending.anime.label" default="Anime" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="anime" name="anime.id" from="${entities.Anime.list()}" optionKey="id" required="" value="${endingInstance?.anime?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: endingInstance, field: 'band', 'error')} required">
	<label for="band">
		<g:message code="ending.band.label" default="Band" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="band" required="" value="${endingInstance?.band}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: endingInstance, field: 'webAddress', 'error')} required">
	<label for="webAddress">
		<g:message code="ending.webAddress.label" default="Web Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="webAddress" required="" value="${endingInstance?.webAddress}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: endingInstance, field: 'song', 'error')} required">
	<label for="song">
		<g:message code="ending.song.label" default="Song" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="song" required="" value="${endingInstance?.song}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: endingInstance, field: 'thumbnail', 'error')} ">
	<label for="thumbnail">
		<g:message code="ending.thumbnail.label" default="Thumbnail" />
		
	</label>
	<g:textField name="thumbnail" value="${endingInstance?.thumbnail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: endingInstance, field: 'number', 'error')} required">
	<label for="number">
		<g:message code="ending.number.label" default="Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="number" type="number" min="1" value="${endingInstance.number}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: endingInstance, field: 'active', 'error')} ">
	<label for="active">
		<g:message code="ending.active.label" default="Active" />
		
	</label>
	<g:checkBox name="active" value="${endingInstance?.active}" />

</div>

<div class="fieldcontain ${hasErrors(bean: endingInstance, field: 'createdAt', 'error')} required">
	<label for="createdAt">
		<g:message code="ending.createdAt.label" default="Created At" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdAt" precision="day"  value="${endingInstance?.createdAt}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: endingInstance, field: 'createdby', 'error')} required">
	<label for="createdby">
		<g:message code="ending.createdby.label" default="Createdby" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="createdby" name="createdby.id" from="${entities.User.list()}" optionKey="id" required="" value="${endingInstance?.createdby?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: endingInstance, field: 'removedAt', 'error')} required">
	<label for="removedAt">
		<g:message code="ending.removedAt.label" default="Removed At" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="removedAt" precision="day"  value="${endingInstance?.removedAt}"  />

</div>

