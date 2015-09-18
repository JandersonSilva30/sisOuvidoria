<%@ page import="sisouvidoria.Manifesto" %>



<div class="fieldcontain ${hasErrors(bean: manifestoInstance, field: 'resposta', 'error')} ">
	<label for="resposta">
		<g:message code="manifesto.resposta.label" default="Resposta" />
		
	</label>
	<g:select id="resposta" name="resposta.id" from="${sisouvidoria.Resposta.list()}" optionKey="id" value="${manifestoInstance?.resposta?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: manifestoInstance, field: 'assunto', 'error')} required">
	<label for="assunto">
		<g:message code="manifesto.assunto.label" default="Assunto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="assunto" name="assunto.id" from="${sisouvidoria.Assunto.list()}" optionKey="id" optionValue="descricao" required="" value="${manifestoInstance?.assunto?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: manifestoInstance, field: 'dataAbertura', 'error')} required">
	<label for="dataAbertura">
		<g:message code="manifesto.dataAbertura.label" default="Data Abertura" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataAbertura" precision="day"  value="${manifestoInstance?.dataAbertura}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: manifestoInstance, field: 'manifestante', 'error')} required">
	<label for="manifestante">
		<g:message code="manifesto.manifestante.label" default="Manifestante" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="manifestante" name="manifestante.id" from="${sisouvidoria.Manifestante.list()}" optionKey="id" optionValue="nome" required="" value="${manifestoInstance?.manifestante?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: manifestoInstance, field: 'relato', 'error')} required">
	<label for="relato">
		<g:message code="manifesto.relato.label" default="Relato" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="relato" required="" value="${manifestoInstance?.relato}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: manifestoInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="manifesto.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="status" name="status.id" from="${sisouvidoria.Status.list()}" optionKey="id" optionValue="descricao" required="" value="${manifestoInstance?.status?.id}" class="many-to-one"/>

</div>

