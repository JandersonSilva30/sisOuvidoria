package sisouvidoria


class Status {
	
	String descricao
	
	//um status pode está em varios manifestos
	static hasMany = [manifesto :Manifesto]
	
	
	static belongTo = [Manifesto]
	
	
		
	static constraints = {
		
		descricao inList : ["aberto", "respondido"]
	}
	
	static mapping = {
						
		id column : "id_status"
	
	}
}
