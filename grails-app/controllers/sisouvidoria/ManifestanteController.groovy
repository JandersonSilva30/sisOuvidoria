package sisouvidoria



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ManifestanteController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Manifestante.list(params), model:[manifestanteInstanceCount: Manifestante.count()]
    }

    def show(Manifestante manifestanteInstance) {
        respond manifestanteInstance
    }

    def create() {
        respond new Manifestante(params)
    }

    @Transactional
    def save(Manifestante manifestanteInstance) {
        if (manifestanteInstance == null) {
            notFound()
            return
        }

        if (manifestanteInstance.hasErrors()) {
            respond manifestanteInstance.errors, view:'create'
            return
        }

        manifestanteInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'manifestante.label', default: 'Manifestante'), manifestanteInstance.id])
                redirect manifestanteInstance
            }
            '*' { respond manifestanteInstance, [status: CREATED] }
        }
    }

    def edit(Manifestante manifestanteInstance) {
        respond manifestanteInstance
    }

    @Transactional
    def update(Manifestante manifestanteInstance) {
        if (manifestanteInstance == null) {
            notFound()
            return
        }

        if (manifestanteInstance.hasErrors()) {
            respond manifestanteInstance.errors, view:'edit'
            return
        }

        manifestanteInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Manifestante.label', default: 'Manifestante'), manifestanteInstance.id])
                redirect manifestanteInstance
            }
            '*'{ respond manifestanteInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Manifestante manifestanteInstance) {

        if (manifestanteInstance == null) {
            notFound()
            return
        }

        manifestanteInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Manifestante.label', default: 'Manifestante'), manifestanteInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'manifestante.label', default: 'Manifestante'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
