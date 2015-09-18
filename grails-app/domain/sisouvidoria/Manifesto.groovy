package sisouvidoria


class Manifesto {
	
	Date dataAbertura
	String relato
	
	Status status
	Assunto assunto
	Manifestante manifestante
	
	
	/*Classe mãe "manisfesto" mandará sua Foreign Key pra classe Resposta
	 mas irá importar a chave da tabela resposta  para ela*/
	static hasOne = [resposta :Resposta]
	
	static constraints = {
		
		resposta nullable : true , blank:true
	}
	
	static mapping = {
		
		status column : "fk_id_status"
		assunto column : "fk_id_assunto"
		manifestante column : "fk_id_manifestante"
				
		id column : "id_manifesto"
	
	}
}

