<%@ page import="sisouvidoria.Manifestante" %>



<div class="fieldcontain ${hasErrors(bean: manifestanteInstance, field: 'endereco', 'error')} ">
	<label for="endereco">
		<g:message code="manifestante.endereco.label" default="Endereco" />
		
	</label>
	<g:select id="endereco" name="endereco.id" from="${sisouvidoria.Endereco.list()}" optionKey="id" value="${manifestanteInstance?.endereco?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: manifestanteInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="manifestante.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${manifestanteInstance?.email}"/>

</div>

<!--  
<div class="fieldcontain ${hasErrors(bean: manifestanteInstance, field: 'manifesto', 'error')} ">
	<label for="manifesto">
		<g:message code="manifestante.manifesto.label" default="Manifesto" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${manifestanteInstance?.manifesto?}" var="m">
    <li><g:link controller="manifesto" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="manifesto" action="create" params="['manifestante.id': manifestanteInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'manifesto.label', default: 'Manifesto')])}</g:link>
</li>
</ul>


</div>

-->

<div class="fieldcontain ${hasErrors(bean: manifestanteInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="manifestante.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${manifestanteInstance?.nome}"/>

</div>

