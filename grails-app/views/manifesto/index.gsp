
<%@ page import="sisouvidoria.Manifesto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'manifesto.label', default: 'Manifesto')}" />
		
		<!--  <title><g:message code="default.list.label" args="[entityName]" /></title> -->
		<title>Gerenciamento de Manisfestos - Ouvidoria</title>
		<g:javascript library="jquery"/>
	</head>
	<body>
		<a href="#list-manifesto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
		
			
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
			
			
			
		</div>
		
		<!-- DAQUI PRA BAIXO É MINHA LISTA A MOSTRAR -->
		
		<div id="list-manifesto" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
						
				<table>
					<thead>
						<tr>
						
							<g:sortableColumn property="relato" title="${message(code: 'manifesto.id.label', default: 'Codigo')}" />
							
							<g:sortableColumn property="dataAbertura" title="${message(code: 'manifesto.dataAbertura.label', default: 'Data Abertura')}" />
							
							<th><g:message code="manifesto.manifestante.label" default="Manifestante" /></th>
							
							<th><g:message code="manifesto.assunto.label" default="Assunto" /></th>
							
							<th><g:message code="manifesto.resposta.label" default="Resposta" /></th>
							
							<th><g:message code="manifesto.status.label" default="Status" /></th>						
						
							<g:sortableColumn property="relato" title="${message(code: 'manifesto.relato.label', default: 'Relato')}" />
						
							
						
						</tr>
					</thead>
					<tbody>
						<g:each in="${manifestoInstanceList}" status="i" var="manifestoInstance">
							<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
							
								<td><g:link action="show" id="${manifestoInstance.id}">${fieldValue(bean: manifestoInstance, field: "id")}</g:link></td>
								
								<td><g:formatDate date="${manifestoInstance.dataAbertura}" /></td>
								
								<td>${fieldValue(bean: manifestoInstance, field: "manifestante.nome")}</td>
								
								<td>${fieldValue(bean: manifestoInstance, field: "assunto.descricao")}</td>
								
								<td><g:link action="show" id="${manifestoInstance.id}">${fieldValue(bean: manifestoInstance, field: "resposta.ida")}</g:link></td>
								
								<td>${fieldValue(bean: manifestoInstance, field: "status.descricao")}</td>
								
								<td>${fieldValue(bean: manifestoInstance, field: "relato")}</td>						
							
							</tr>
						</g:each>
					
					</tbody>
					
				</table>
			
			<div class="pagination">
				<g:paginate total="${manifestoInstanceCount ?: 0}" />
			</div>
			
		</div>
		
		<!-- aqui termina MINHA LISTA A MOSTRAR -->
		
		
	</body>
</html>
