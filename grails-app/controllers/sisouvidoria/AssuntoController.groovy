package sisouvidoria



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AssuntoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Assunto.list(params), model:[assuntoInstanceCount: Assunto.count()]
    }

    def show(Assunto assuntoInstance) {
        respond assuntoInstance
    }

    def create() {
        respond new Assunto(params)
    }

    @Transactional
    def save(Assunto assuntoInstance) {
        if (assuntoInstance == null) {
            notFound()
            return
        }

        if (assuntoInstance.hasErrors()) {
            respond assuntoInstance.errors, view:'create'
            return
        }

        assuntoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'assunto.label', default: 'Assunto'), assuntoInstance.id])
                redirect assuntoInstance
            }
            '*' { respond assuntoInstance, [status: CREATED] }
        }
    }

    def edit(Assunto assuntoInstance) {
        respond assuntoInstance
    }

    @Transactional
    def update(Assunto assuntoInstance) {
        if (assuntoInstance == null) {
            notFound()
            return
        }

        if (assuntoInstance.hasErrors()) {
            respond assuntoInstance.errors, view:'edit'
            return
        }

        assuntoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Assunto.label', default: 'Assunto'), assuntoInstance.id])
                redirect assuntoInstance
            }
            '*'{ respond assuntoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Assunto assuntoInstance) {

        if (assuntoInstance == null) {
            notFound()
            return
        }

        assuntoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Assunto.label', default: 'Assunto'), assuntoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'assunto.label', default: 'Assunto'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
