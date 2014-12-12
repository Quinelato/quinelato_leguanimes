<%@ page import="entities.Anime" %>


<div class="fieldcontain ${hasErrors(bean: animeInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="anime.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${animeInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: animeInstance, field: 'startDate', 'error')} required">
	<label for="startDate">
		<g:message code="anime.startDate.label" default="Start Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startDate" precision="day"  value="${animeInstance?.startDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: animeInstance, field: 'endDate', 'error')} ">
	<label for="endDate">
		<g:message code="anime.endDate.label" default="End Date" />
		
	</label>
	<g:datePicker name="endDate" precision="day"  value="${animeInstance?.endDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: animeInstance, field: 'exibition', 'error')} required">
	<label for="exibition">
		<g:message code="anime.exibition.label" default="Exibition" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="exibition" name="exibition.id" from="${entities.Exibition.list()}" optionKey="id" required="" value="${animeInstance?.exibition?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: animeInstance, field: 'ageRating', 'error')} ">
	<label for="ageRating">
		<g:message code="anime.ageRating.label" default="Age Rating" />
		
	</label>
	<g:textField name="ageRating" value="${animeInstance?.ageRating}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: animeInstance, field: 'genders', 'error')} ">
	<label for="genders">
		<g:message code="anime.genders.label" default="Genders" />
		
	</label>
	<g:select name="genders" from="${entities.Gender.list()}" multiple="multiple" optionKey="id" size="5" value="${animeInstance?.genders*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: animeInstance, field: 'openings', 'error')} ">
	<label for="openings">
		<g:message code="anime.openings.label" default="Openings" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${animeInstance?.openings?}" var="o">
    <li><g:link controller="opening" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="opening" action="create" params="['anime.id': animeInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'opening.label', default: 'Opening')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: animeInstance, field: 'endings', 'error')} ">
	<label for="endings">
		<g:message code="anime.endings.label" default="Endings" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${animeInstance?.endings?}" var="e">
    <li><g:link controller="ending" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="ending" action="create" params="['anime.id': animeInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'ending.label', default: 'Ending')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: animeInstance, field: 'episodes', 'error')} ">
	<label for="episodes">
		<g:message code="anime.episodes.label" default="Episodes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${animeInstance?.episodes?}" var="e">
    <li><g:link controller="episode" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="episode" action="create" params="['anime.id': animeInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'episode.label', default: 'Episode')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: animeInstance, field: 'fansubs', 'error')} ">
	<label for="fansubs">
		<g:message code="anime.fansubs.label" default="Fansubs" />
		
	</label>
	<g:select name="fansubs" from="${entities.Fansub.list()}" multiple="multiple" optionKey="id" size="5" value="${animeInstance?.fansubs*.id}" class="many-to-many"/>

</div>


<div class="fieldcontain ${hasErrors(bean: animeInstance, field: 'active', 'error')} ">
	<label for="active">
		<g:message code="anime.active.label" default="Active" />
		
	</label>
	<g:checkBox name="active" value="${animeInstance?.active}" />

</div>

