<%@ page import="entities.Opening" %>

<div class="fieldcontain ${hasErrors(bean: openingInstance, field: 'anime', 'error')} required">
	<label for="anime">
		<g:message code="opening.anime.label" default="Anime" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="anime" name="anime.id" from="${entities.Anime.list()}" optionKey="id" required="" value="${openingInstance?.anime?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: openingInstance, field: 'number', 'error')} required">
	<label for="number">
		<g:message code="opening.number.label" default="Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="number" type="number" min="1" value="${openingInstance.number}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: openingInstance, field: 'band', 'error')} required">
	<label for="band">
		<g:message code="opening.band.label" default="Band" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="band" required="" value="${openingInstance?.band}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: openingInstance, field: 'song', 'error')} required">
	<label for="song">
		<g:message code="opening.song.label" default="Song" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="song" required="" value="${openingInstance?.song}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: openingInstance, field: 'webAddress', 'error')} required">
	<label for="webAddress">
		<g:message code="opening.webAddress.label" default="Web Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="webAddress" required="" value="${openingInstance?.webAddress}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: openingInstance, field: 'thumbnail', 'error')} ">
	<label for="thumbnail">
		<g:message code="opening.thumbnail.label" default="Thumbnail" />
		
	</label>
	<g:textField name="thumbnail" value="${openingInstance?.thumbnail}"/>

</div>

