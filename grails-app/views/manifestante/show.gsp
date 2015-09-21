
<%@ page import="sisouvidoria.Manifestante" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'manifestante.label', default: 'Manifestante')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-manifestante" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-manifestante" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list manifestante">
			
				<g:if test="${manifestanteInstance?.endereco}">
				<li class="fieldcontain">
					<span id="endereco-label" class="property-label"><g:message code="manifestante.endereco.label" default="Endereco" /></span>
					
						<span class="property-value" aria-labelledby="endereco-label"><g:link controller="endereco" action="show" id="${manifestanteInstance?.endereco?.id}">${manifestanteInstance?.endereco?.id}</g:link></span>
					
				</li>
				</g:if>
				
				<g:if test="${manifestanteInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="manifestante.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${manifestanteInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${manifestanteInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="manifestante.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${manifestanteInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${manifestanteInstance?.manifesto}">
				<li class="fieldcontain">
					<span id="manifesto-label" class="property-label"><g:message code="manifestante.manifesto.label" default="Manifesto" /></span>
					
						<g:each in="${manifestanteInstance.manifesto}" var="m">
						<span class="property-value" aria-labelledby="manifesto-label"><g:link controller="manifesto" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				
			
			</ol>
			<g:form url="[resource:manifestanteInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${manifestanteInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
