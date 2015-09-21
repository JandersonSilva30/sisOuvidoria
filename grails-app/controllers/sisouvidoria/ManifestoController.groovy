package sisouvidoria



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ManifestoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Manifesto.list(params), model:[manifestoInstanceCount: Manifesto.count()]
		
		//render(view:"/manifesto/index")
    }
	
	
	/**def adicionar(){
		
		
		//instanciando o manifesto
		Manifesto novoManifesto = new Manifesto()		
		novoManifesto.dataAbetura =new Date()
		novoManifesto.relato = ""
		
		//instanciando manifestante
		Manifestante manifestante = new Manifestante()
		manifestante.nome = ""
		manifestante.email = ""
		
		//isntanciando endereço
		
		Endereco endereco = new Endereco()
		
		
		//instanciando assunto
		Assunto assunto = new Assunto()
		assunto.id = 1
		
		//instanciando Status
		Status status = new Status()
		status.id = 1
		
		//instanciando Resposta
		Resposta resposta = new Resposta()		
		
		render(template:"/manifesto/form", model: [manifesto: novoManifesto])
		
		//render "Hello this is a greeting box."
		
		
		
	}
	
	def salvar(){
		
	}*/

    def show(Manifesto manifestoInstance) {
        respond manifestoInstance
    }

    def create() {
        respond new Manifesto(params)
    }
    
    

    @Transactional
    def save(Manifesto manifestoInstance) {
        if (manifestoInstance == null) {
            notFound()
            return
        }

        if (manifestoInstance.hasErrors()) {
            respond manifestoInstance.errors, view:'create'
            return
        }

        manifestoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'manifesto.label', default: 'Manifesto'), manifestoInstance.id])
                redirect manifestoInstance
            }
            '*' { respond manifestoInstance, [status: CREATED] }
        }
    }

    def edit(Manifesto manifestoInstance) {
        respond manifestoInstance
    }

    @Transactional
    def update(Manifesto manifestoInstance) {
        if (manifestoInstance == null) {
            notFound()
            return
        }

        if (manifestoInstance.hasErrors()) {
            respond manifestoInstance.errors, view:'edit'
            return
        }

        manifestoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Manifesto.label', default: 'Manifesto'), manifestoInstance.id])
                redirect manifestoInstance
            }
            '*'{ respond manifestoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Manifesto manifestoInstance) {

        if (manifestoInstance == null) {
            notFound()
            return
        }
		
		

        manifestoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Manifesto.label', default: 'Manifesto'), manifestoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'manifesto.label', default: 'Manifesto'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
