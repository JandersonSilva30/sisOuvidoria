package sisouvidoria



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RespostaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Resposta.list(params), model:[respostaInstanceCount: Resposta.count()]
    }

    def show(Resposta respostaInstance) {
        respond respostaInstance
    }

    def create() {
        respond new Resposta(params)
    }

    @Transactional
    def save(Resposta respostaInstance) {
        if (respostaInstance == null) {
            notFound()
            return
        }

        if (respostaInstance.hasErrors()) {
            respond respostaInstance.errors, view:'create'
            return
        }

        respostaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'resposta.label', default: 'Resposta'), respostaInstance.id])
                redirect respostaInstance
            }
            '*' { respond respostaInstance, [status: CREATED] }
        }
    }

    def edit(Resposta respostaInstance) {
        respond respostaInstance
    }

    @Transactional
    def update(Resposta respostaInstance) {
        if (respostaInstance == null) {
            notFound()
            return
        }

        if (respostaInstance.hasErrors()) {
            respond respostaInstance.errors, view:'edit'
            return
        }

        respostaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Resposta.label', default: 'Resposta'), respostaInstance.id])
                redirect respostaInstance
            }
            '*'{ respond respostaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Resposta respostaInstance) {

        if (respostaInstance == null) {
            notFound()
            return
        }

        respostaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Resposta.label', default: 'Resposta'), respostaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'resposta.label', default: 'Resposta'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
