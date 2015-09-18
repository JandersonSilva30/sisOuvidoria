
<%@ page import="sisouvidoria.Manifestante" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'manifestante.label', default: 'Manifestante')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-manifestante" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-manifestante" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="email" title="${message(code: 'manifestante.email.label', default: 'Codigo')}" />
						<g:sortableColumn property="nome" title="${message(code: 'manifestante.nome.label', default: 'Nome')}" />
											
						<g:sortableColumn property="email" title="${message(code: 'manifestante.email.label', default: 'Email')}" />
					
						<th><g:message code="manifestante.endereco.label" default="Endereco" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${manifestanteInstanceList}" status="i" var="manifestanteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${manifestanteInstance.id}">${fieldValue(bean: manifestanteInstance, field: "id")}</g:link></td>
					
						<td>${fieldValue(bean: manifestanteInstance, field: "nome")}</td>
						
						<td>${fieldValue(bean: manifestanteInstance, field: "email")}</td>
						
						<td>${fieldValue(bean: manifestanteInstance, field: "endereco.id")}</td>
					
						
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${manifestanteInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
