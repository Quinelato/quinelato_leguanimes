package entities



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class FansubController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Fansub.list(params), model:[fansubInstanceCount: Fansub.count()]
    }

    def show(Fansub fansubInstance) {
        respond fansubInstance
    }

    def create() {
        respond new Fansub(params)
    }

    @Transactional
    def save(Fansub fansubInstance) {
        if (fansubInstance == null) {
            notFound()
            return
        }

        if (fansubInstance.hasErrors()) {
            respond fansubInstance.errors, view:'create'
            return
        }
		
		fansubInstance.createdBy = User.get(1)

        fansubInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'fansub.label', default: 'Fansub'), fansubInstance.id])
                redirect fansubInstance
            }
            '*' { respond fansubInstance, [status: CREATED] }
        }
    }

    def edit(Fansub fansubInstance) {
        respond fansubInstance
    }

    @Transactional
    def update(Fansub fansubInstance) {
        if (fansubInstance == null) {
            notFound()
            return
        }

        if (fansubInstance.hasErrors()) {
            respond fansubInstance.errors, view:'edit'
            return
        }

        fansubInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Fansub.label', default: 'Fansub'), fansubInstance.id])
                redirect fansubInstance
            }
            '*'{ respond fansubInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Fansub fansubInstance) {

        if (fansubInstance == null) {
            notFound()
            return
        }

        fansubInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Fansub.label', default: 'Fansub'), fansubInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'fansub.label', default: 'Fansub'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
