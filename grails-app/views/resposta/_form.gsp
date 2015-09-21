<%@ page import="sisouvidoria.Resposta" %>



<div class="fieldcontain ${hasErrors(bean: respostaInstance, field: 'manifesto', 'error')} ">
	<label for="manifesto">
		<g:message code="resposta.manifesto.label" default="Manifesto" />
		
	</label>
	<g:select id="manifesto" name="manifesto.id" from="${sisouvidoria.Manifesto.list()}" optionKey="id" optionValue="id" value="${respostaInstance?.manifesto?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: respostaInstance, field: 'dataResposta', 'error')} required">
	<label for="dataResposta">
		<g:message code="resposta.dataResposta.label" default="Data Resposta" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataResposta" precision="day"  value="${respostaInstance?.dataResposta}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: respostaInstance, field: 'respostaRelato', 'error')} required">
	<label for="respostaRelato">
		<g:message code="resposta.respostaRelato.label" default="Resposta Relato" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="respostaRelato" required="" value="${respostaInstance?.respostaRelato}"/>

</div>

