package sisouvidoria

class Endereco {
	
	String logradouro, bairro, cidade, uf	
			
	Manifestante manifestante
	
	
	static belongTo = [Manifestante]

	static constraints = {
		
		//manifestante nullable : true , blank :true
	}
	
	static mapping = {
		
		manifestante column : "fk_id_manisfestante"
		id column : "id_endereco"
		
		
	}
}