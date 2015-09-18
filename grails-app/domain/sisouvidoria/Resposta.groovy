package sisouvidoria


class Resposta {
	
	Date dataResposta
	String respostaRelato
	
	Manifesto manifesto

	static constraints = {
		
		manifesto nullable : true , blank: true
	}
	
	static mapping = {
		
		manifesto column : "fk_id_manifesto"
		
		id column : "id_resposta"
	
	}
}