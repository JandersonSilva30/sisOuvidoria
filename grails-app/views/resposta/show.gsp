
<%@ page import="sisouvidoria.Resposta" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'resposta.label', default: 'Resposta')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-resposta" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-resposta" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list resposta">
			
				<g:if test="${respostaInstance?.manifesto}">
				<li class="fieldcontain">
					<span id="manifesto-label" class="property-label"><g:message code="resposta.manifesto.label" default="Manifesto" /></span>
					
						<span class="property-value" aria-labelledby="manifesto-label"><g:link controller="manifesto" action="show" id="${respostaInstance?.manifesto?.id}">${respostaInstance?.manifesto?.id}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${respostaInstance?.dataResposta}">
				<li class="fieldcontain">
					<span id="dataResposta-label" class="property-label"><g:message code="resposta.dataResposta.label" default="Data Resposta" /></span>
					
						<span class="property-value" aria-labelledby="dataResposta-label"><g:formatDate date="${respostaInstance?.dataResposta}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${respostaInstance?.respostaRelato}">
				<li class="fieldcontain">
					<span id="respostaRelato-label" class="property-label"><g:message code="resposta.respostaRelato.label" default="Resposta Relato" /></span>
					
						<span class="property-value" aria-labelledby="respostaRelato-label"><g:fieldValue bean="${respostaInstance}" field="respostaRelato"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:respostaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${respostaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
