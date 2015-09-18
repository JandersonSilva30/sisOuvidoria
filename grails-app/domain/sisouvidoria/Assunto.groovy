package sisouvidoria


class Assunto {
	
	String descricao
	
	//um assunto pode está em varios manifestos
	static hasMany = [manifesto :Manifesto]
	
	static belongTo = [Manifesto]

	static constraints = {
		
		descricao inList : ["reclamacao", "elogio", "sugestao"]
	}
	
	static mapping = {
					
		id column : "id_assunto"
	
	}
}
