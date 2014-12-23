
<%@ page import="entities.Anime"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'anime.label', default: 'Anime')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
	<a href="#show-anime" class="skip" tabindex="-1"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home"
				href="${createLink(action: 'index', controller:'manager')}"><g:message
						code="default.home.label" /></a></li>
			<li><g:link class="list" action="index">
					<g:message code="default.list.label" args="[entityName]" />
				</g:link></li>
			<li><g:link class="create" action="create">
					<g:message code="default.new.label" args="[entityName]" />
				</g:link></li>
		</ul>
	</div>
	<div id="show-anime" class="content scaffold-show" role="main">
		<h1>
			<g:message code="default.show.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<ol class="property-list anime">

			<g:if test="${animeInstance?.title}">
				<li class="fieldcontain"><span id="title-label"
					class="property-label"><g:message code="anime.title.label"
							default="Title" /></span> <span class="property-value"
					aria-labelledby="title-label"><g:fieldValue
							bean="${animeInstance}" field="title" /></span></li>
			</g:if>

			<g:if test="${animeInstance?.startDate}">
				<li class="fieldcontain"><span id="startDate-label"
					class="property-label"><g:message
							code="anime.startDate.label" default="Start Date" /></span> <span
					class="property-value" aria-labelledby="startDate-label"><g:formatDate
							date="${animeInstance?.startDate}" /></span></li>
			</g:if>

			<g:if test="${animeInstance?.endDate}">
				<li class="fieldcontain"><span id="endDate-label"
					class="property-label"><g:message code="anime.endDate.label"
							default="End Date" /></span> <span class="property-value"
					aria-labelledby="endDate-label"><g:formatDate
							date="${animeInstance?.endDate}" /></span></li>
			</g:if>

			<g:if test="${animeInstance?.ageRating}">
				<li class="fieldcontain"><span id="ageRating-label"
					class="property-label"><g:message
							code="anime.ageRating.label" default="Age Rating" /></span> <span
					class="property-value" aria-labelledby="ageRating-label"><g:fieldValue
							bean="${animeInstance}" field="ageRating" /></span></li>
			</g:if>

			<g:if test="${animeInstance?.exibition}">
				<li class="fieldcontain"><span id="exibition-label"
					class="property-label"><g:message
							code="anime.exibition.label" default="Exibition" /></span> <span
					class="property-value" aria-labelledby="exibition-label"><g:link
							controller="exibition" action="show"
							id="${animeInstance?.exibition?.id}">
							${animeInstance?.exibition?.encodeAsHTML()}
						</g:link></span></li>
			</g:if>

			<g:if test="${animeInstance?.openings}">
				<li class="fieldcontain"><span id="openings-label"
					class="property-label"><g:message
							code="anime.openings.label" default="Openings" /></span> <g:each
						in="${animeInstance.openings}" var="o">
						<span class="property-value" aria-labelledby="openings-label"><g:link
								controller="opening" action="show" id="${o.id}">
								${o?.encodeAsHTML()}
							</g:link></span>
					</g:each></li>
			</g:if>

			<g:if test="${animeInstance?.endings}">
				<li class="fieldcontain"><span id="endings-label"
					class="property-label"><g:message code="anime.endings.label"
							default="Endings" /></span> <g:each in="${animeInstance.endings}"
						var="e">
						<span class="property-value" aria-labelledby="endings-label"><g:link
								controller="ending" action="show" id="${e.id}">
								${e?.encodeAsHTML()}
							</g:link></span>
					</g:each></li>
			</g:if>

			<g:if test="${animeInstance?.episodes}">
				<li class="fieldcontain"><span id="episodes-label"
					class="property-label"><g:message
							code="anime.episodes.label" default="Episodes" /></span> <g:each
						in="${animeInstance.episodes}" var="e">
						<span class="property-value" aria-labelledby="episodes-label"><g:link
								controller="episode" action="show" id="${e.id}">
								${e?.encodeAsHTML()}
							</g:link></span>
					</g:each></li>
			</g:if>

			<g:if test="${animeInstance?.fansubs}">
				<li class="fieldcontain"><span id="fansubs-label"
					class="property-label"><g:message code="anime.fansubs.label"
							default="Fansubs" /></span> <g:each in="${animeInstance.fansubs}"
						var="f">
						<span class="property-value" aria-labelledby="fansubs-label"><g:link
								controller="fansub" action="show" id="${f.id}">
								${f?.encodeAsHTML()}
							</g:link></span>
					</g:each></li>
			</g:if>

			<g:if test="${animeInstance?.genders}">
				<li class="fieldcontain"><span id="genders-label"
					class="property-label"><g:message code="anime.genders.label"
							default="Genders" /></span> <g:each in="${animeInstance.genders}"
						var="g">
						<span class="property-value" aria-labelledby="genders-label"><g:link
								controller="gender" action="show" id="${g.id}">
								${g?.encodeAsHTML()}
							</g:link></span>
					</g:each></li>
			</g:if>

			<g:if test="${animeInstance?.createdAt}">
				<li class="fieldcontain"><span id="createdAt-label"
					class="property-label"><g:message
							code="anime.createdAt.label" default="Created At" /></span> <span
					class="property-value" aria-labelledby="createdAt-label"><g:formatDate
							date="${animeInstance?.createdAt}" /></span></li>
			</g:if>

			<g:if test="${animeInstance?.removedAt}">
				<li class="fieldcontain"><span id="removedAt-label"
					class="property-label"><g:message
							code="anime.removedAt.label" default="Removed At" /></span> <span
					class="property-value" aria-labelledby="removedAt-label"><g:formatDate
							date="${animeInstance?.removedAt}" /></span></li>
			</g:if>

			<g:if test="${animeInstance?.createdBy}">
				<li class="fieldcontain"><span id="createdBy-label"
					class="property-label"><g:message
							code="anime.createdBy.label" default="Created By" /></span> <span
					class="property-value" aria-labelledby="createdBy-label"><g:link
							controller="user" action="show"
							id="${animeInstance?.createdBy?.id}">
							${animeInstance?.createdBy?.encodeAsHTML()}
						</g:link></span></li>
			</g:if>

			<g:if test="${animeInstance?.active}">
				<li class="fieldcontain"><span id="active-label"
					class="property-label"><g:message code="anime.active.label"
							default="Active" /></span> <span class="property-value"
					aria-labelledby="active-label"><g:formatBoolean
							boolean="${animeInstance?.active}" /></span></li>
			</g:if>

		</ol>
		<g:form url="[resource:animeInstance, action:'delete']"
			method="DELETE">
			<fieldset class="buttons">
				<g:link class="edit" action="edit" resource="${animeInstance}">
					<g:message code="default.button.edit.label" default="Edit" />
				</g:link>
				<g:actionSubmit class="delete" action="delete"
					value="${message(code: 'default.button.delete.label', default: 'Delete')}"
					onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
			</fieldset>
		</g:form>
	</div>
</body>
</html>
