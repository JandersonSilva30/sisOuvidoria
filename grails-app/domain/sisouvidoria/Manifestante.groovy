package sisouvidoria


class Manifestante {
	
	String nome, email
	
	Endereco endereco
	//static hasOne = [endereco :Endereco]
	 

	//um manifestante pode está em varios manifestos
	static hasMany = [manifesto :Manifesto]
	
	static belongTo = [Manifesto]
	
		
	static constraints = {
		
		endereco nullable : true, blank : true
	}
	
	static mapping = {
		
		endereco column : "fk_id_endereço"
		id column : "id_manifestante"
	
	}
}

