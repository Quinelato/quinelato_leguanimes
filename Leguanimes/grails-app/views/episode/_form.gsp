<%@ page import="entities.Episode" %>

<div class="fieldcontain ${hasErrors(bean: episodeInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="episode.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${episodeInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: episodeInstance, field: 'anime', 'error')} required">
	<label for="anime">
		<g:message code="episode.anime.label" default="Anime" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="anime" name="anime.id" from="${entities.Anime.list()}" optionKey="id" required="" value="${episodeInstance?.anime?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: episodeInstance, field: 'number', 'error')} required">
	<label for="number">
		<g:message code="episode.number.label" default="Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="number" type="number" min="1" value="${episodeInstance.number}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: episodeInstance, field: 'width', 'error')} required">
	<label for="width">
		<g:message code="episode.width.label" default="Width" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="width" type="number" min="1" value="${episodeInstance.width}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: episodeInstance, field: 'height', 'error')} required">
	<label for="height">
		<g:message code="episode.height.label" default="Height" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="height" type="number" min="1" value="${episodeInstance.height}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: episodeInstance, field: 'duration', 'error')} required">
	<label for="duration">
		<g:message code="episode.duration.label" default="Duration" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="duration" value="${fieldValue(bean: episodeInstance, field: 'duration')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: episodeInstance, field: 'size', 'error')} required">
	<label for="size">
		<g:message code="episode.size.label" default="Size" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="size" value="${fieldValue(bean: episodeInstance, field: 'size')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: episodeInstance, field: 'extension', 'error')} ">
	<label for="extension">
		<g:message code="episode.extension.label" default="Extension" />
		
	</label>
	<g:textField name="extension" value="${episodeInstance?.extension}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: episodeInstance, field: 'quality', 'error')} ">
	<label for="quality">
		<g:message code="episode.quality.label" default="Quality" />
		
	</label>
	<g:textField name="quality" value="${episodeInstance?.quality}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: episodeInstance, field: 'codec', 'error')} ">
	<label for="codec">
		<g:message code="episode.codec.label" default="Codec" />
		
	</label>
	<g:textField name="codec" value="${episodeInstance?.codec}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: episodeInstance, field: 'storages', 'error')} ">
	<label for="storages">
		<g:message code="episode.storages.label" default="Storages" />
		
	</label>
	

</div>

