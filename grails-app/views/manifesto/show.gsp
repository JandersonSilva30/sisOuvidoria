
<%@ page import="sisouvidoria.Manifesto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'manifesto.label', default: 'Manifesto')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-manifesto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-manifesto" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list manifesto">
			
				<g:if test="${manifestoInstance?.resposta}">
				<li class="fieldcontain">
					<span id="resposta-label" class="property-label"><g:message code="manifesto.resposta.label" default="Resposta" /></span>
					
						<span class="property-value" aria-labelledby="resposta-label"><g:link controller="resposta" action="show" id="${manifestoInstance?.resposta?.id}">${manifestoInstance?.resposta?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${manifestoInstance?.assunto}">
				<li class="fieldcontain">
					<span id="assunto-label" class="property-label"><g:message code="manifesto.assunto.label" default="Assunto" /></span>
					
						<span class="property-value" aria-labelledby="assunto-label"><g:link controller="assunto" action="show" id="${manifestoInstance?.assunto?.id}">${manifestoInstance?.assunto?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${manifestoInstance?.dataAbertura}">
				<li class="fieldcontain">
					<span id="dataAbertura-label" class="property-label"><g:message code="manifesto.dataAbertura.label" default="Data Abertura" /></span>
					
						<span class="property-value" aria-labelledby="dataAbertura-label"><g:formatDate date="${manifestoInstance?.dataAbertura}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${manifestoInstance?.manifestante}">
				<li class="fieldcontain">
					<span id="manifestante-label" class="property-label"><g:message code="manifesto.manifestante.label" default="Manifestante" /></span>
					
						<span class="property-value" aria-labelledby="manifestante-label"><g:link controller="manifestante" action="show" id="${manifestoInstance?.manifestante?.id}">${manifestoInstance?.manifestante?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${manifestoInstance?.relato}">
				<li class="fieldcontain">
					<span id="relato-label" class="property-label"><g:message code="manifesto.relato.label" default="Relato" /></span>
					
						<span class="property-value" aria-labelledby="relato-label"><g:fieldValue bean="${manifestoInstance}" field="relato"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${manifestoInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="manifesto.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:link controller="status" action="show" id="${manifestoInstance?.status?.id}">${manifestoInstance?.status?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:manifestoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${manifestoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
