package entities



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class OpeningController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Opening.list(params), model:[openingInstanceCount: Opening.count()]
    }

    def show(Opening openingInstance) {
        respond openingInstance
    }

    def create() {
        respond new Opening(params)
    }

    @Transactional
    def save(Opening openingInstance) {
        if (openingInstance == null) {
            notFound()
            return
        }

        if (openingInstance.hasErrors()) {
            respond openingInstance.errors, view:'create'
            return
        }

		openingInstance.createdAt = new Date()
		openingInstance.createdBy = User.get(1)
		
		if(!openingInstance.active){
			openingInstance.removedAt = new Date()
		}else{
			openingInstance.removedAt = null
		}
		
        openingInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'opening.label', default: 'Opening'), openingInstance.id])
                redirect openingInstance
            }
            '*' { respond openingInstance, [status: CREATED] }
        }
    }

    def edit(Opening openingInstance) {
        respond openingInstance
    }

    @Transactional
    def update(Opening openingInstance) {
        if (openingInstance == null) {
            notFound()
            return
        }

        if (openingInstance.hasErrors()) {
            respond openingInstance.errors, view:'edit'
            return
        }

        openingInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Opening.label', default: 'Opening'), openingInstance.id])
                redirect openingInstance
            }
            '*'{ respond openingInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Opening openingInstance) {

        if (openingInstance == null) {
            notFound()
            return
        }

        openingInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Opening.label', default: 'Opening'), openingInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'opening.label', default: 'Opening'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
