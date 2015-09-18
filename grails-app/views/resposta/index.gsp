
<%@ page import="sisouvidoria.Resposta" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'resposta.label', default: 'Resposta')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-resposta" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-resposta" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="resposta.manifesto.label" default="Manifesto" /></th>
					
						<g:sortableColumn property="dataResposta" title="${message(code: 'resposta.dataResposta.label', default: 'Data Resposta')}" />
					
						<g:sortableColumn property="respostaRelato" title="${message(code: 'resposta.respostaRelato.label', default: 'Resposta Relato')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${respostaInstanceList}" status="i" var="respostaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${respostaInstance.id}">${fieldValue(bean: respostaInstance, field: "manifesto")}</g:link></td>
					
						<td><g:formatDate date="${respostaInstance.dataResposta}" /></td>
					
						<td>${fieldValue(bean: respostaInstance, field: "respostaRelato")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${respostaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
