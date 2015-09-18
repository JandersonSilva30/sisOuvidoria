<%@ page import="sisouvidoria.Assunto" %>



<div class="fieldcontain ${hasErrors(bean: assuntoInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="assunto.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="descricao" from="${assuntoInstance.constraints.descricao.inList}" required="" value="${assuntoInstance?.descricao}" valueMessagePrefix="assunto.descricao"/>

</div>

<!--  
<div class="fieldcontain ${hasErrors(bean: assuntoInstance, field: 'manifesto', 'error')} ">
	<label for="manifesto">
		<g:message code="assunto.manifesto.label" default="Manifesto" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${assuntoInstance?.manifesto?}" var="m">
    <li><g:link controller="manifesto" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="manifesto" action="create" params="['assunto.id': assuntoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'manifesto.label', default: 'Manifesto')])}</g:link>
</li>
</ul>

-->

</div>

