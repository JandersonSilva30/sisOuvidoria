package sisouvidoria


class Manifestante {
	
	String nome, email
	
	//Endereco endereco
	
	//um manifestante pode está em varios manifestos
	static hasMany = [manifesto :Manifesto]
	
	static hasOne = [endereco :Endereco]
	
	static belongTo = [Manifesto]
	
		
	static constraints = {
		
		endereco nullable : true, blank : true
	}
	
	static mapping = {
		
		//endereco column : "fk_id_endereco"
		
		endereco cascade: 'all-delete-orphan'
		id column : "id_manifestante"
	
	}
}

