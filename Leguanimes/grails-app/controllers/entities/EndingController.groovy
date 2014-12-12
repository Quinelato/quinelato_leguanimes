package entities



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EndingController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Ending.list(params), model:[endingInstanceCount: Ending.count()]
    }

    def show(Ending endingInstance) {
        respond endingInstance
    }

    def create() {
        respond new Ending(params)
    }

    @Transactional
    def save(Ending endingInstance) {
        if (endingInstance == null) {
            notFound()
            return
        }

        if (endingInstance.hasErrors()) {
            respond endingInstance.errors, view:'create'
            return
        }
		
		endingInstance.createdBy = User.get(1)

        endingInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'ending.label', default: 'Ending'), endingInstance.id])
                redirect endingInstance
            }
            '*' { respond endingInstance, [status: CREATED] }
        }
    }

    def edit(Ending endingInstance) {
        respond endingInstance
    }

    @Transactional
    def update(Ending endingInstance) {
        if (endingInstance == null) {
            notFound()
            return
        }

        if (endingInstance.hasErrors()) {
            respond endingInstance.errors, view:'edit'
            return
        }

        endingInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Ending.label', default: 'Ending'), endingInstance.id])
                redirect endingInstance
            }
            '*'{ respond endingInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Ending endingInstance) {

        if (endingInstance == null) {
            notFound()
            return
        }

        endingInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Ending.label', default: 'Ending'), endingInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'ending.label', default: 'Ending'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
