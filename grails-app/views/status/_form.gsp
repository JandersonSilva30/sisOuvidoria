<%@ page import="sisouvidoria.Status" %>



<div class="fieldcontain ${hasErrors(bean: statusInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="status.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="descricao" from="${statusInstance.constraints.descricao.inList}" required="" value="${statusInstance?.descricao}" valueMessagePrefix="status.descricao"/>

</div>

<!--  

<div class="fieldcontain ${hasErrors(bean: statusInstance, field: 'manifesto', 'error')} ">
	<label for="manifesto">
		<g:message code="status.manifesto.label" default="Manifesto" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${statusInstance?.manifesto?}" var="m">
    <li><g:link controller="manifesto" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="manifesto" action="create" params="['status.id': statusInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'manifesto.label', default: 'Manifesto')])}</g:link>
</li>
</ul>

-->


</div>

